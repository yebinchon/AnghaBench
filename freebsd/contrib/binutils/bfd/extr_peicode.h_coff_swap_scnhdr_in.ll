; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peicode.h_coff_swap_scnhdr_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peicode.h_coff_swap_scnhdr_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.internal_scnhdr = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@IMAGE_SCN_CNT_UNINITIALIZED_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*)* @coff_swap_scnhdr_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coff_swap_scnhdr_in(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.internal_scnhdr*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.internal_scnhdr*
  store %struct.internal_scnhdr* %12, %struct.internal_scnhdr** %8, align 8
  %13 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %8, align 8
  %14 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @memcpy(i32 %15, i32 %18, i32 4)
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @GET_SCNHDR_VADDR(i32* %20, i32 %23)
  %25 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %8, align 8
  %26 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @GET_SCNHDR_PADDR(i32* %27, i32 %30)
  %32 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %8, align 8
  %33 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @GET_SCNHDR_SIZE(i32* %34, i32 %37)
  %39 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %8, align 8
  %40 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @GET_SCNHDR_SCNPTR(i32* %41, i32 %44)
  %46 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %8, align 8
  %47 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @GET_SCNHDR_RELPTR(i32* %48, i32 %51)
  %53 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %8, align 8
  %54 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @GET_SCNHDR_LNNOPTR(i32* %55, i32 %58)
  %60 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %8, align 8
  %61 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %60, i32 0, i32 6
  store i32 %59, i32* %61, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @H_GET_32(i32* %62, i32 %65)
  %67 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %8, align 8
  %68 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @H_GET_16(i32* %69, i32 %72)
  %74 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %8, align 8
  %75 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @H_GET_16(i32* %76, i32 %79)
  %81 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %8, align 8
  %82 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 4
  %83 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %8, align 8
  %84 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %3
  %88 = load i32*, i32** %4, align 8
  %89 = call %struct.TYPE_6__* @pe_data(i32* %88)
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %8, align 8
  %94 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %92
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 8
  %99 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %8, align 8
  %100 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %100, align 8
  br label %102

102:                                              ; preds = %87, %3
  %103 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %8, align 8
  %104 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %141

107:                                              ; preds = %102
  %108 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %8, align 8
  %109 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @IMAGE_SCN_CNT_UNINITIALIZED_DATA, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %107
  %115 = load i32*, i32** %4, align 8
  %116 = call i64 @bfd_pe_executable_p(i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %114
  %119 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %8, align 8
  %120 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %135, label %123

123:                                              ; preds = %118, %107
  %124 = load i32*, i32** %4, align 8
  %125 = call i64 @bfd_pe_executable_p(i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %123
  %128 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %8, align 8
  %129 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %8, align 8
  %132 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp sgt i64 %130, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %127, %118, %114
  %136 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %8, align 8
  %137 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %8, align 8
  %140 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %139, i32 0, i32 2
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %135, %127, %123, %102
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @GET_SCNHDR_VADDR(i32*, i32) #1

declare dso_local i64 @GET_SCNHDR_PADDR(i32*, i32) #1

declare dso_local i64 @GET_SCNHDR_SIZE(i32*, i32) #1

declare dso_local i32 @GET_SCNHDR_SCNPTR(i32*, i32) #1

declare dso_local i32 @GET_SCNHDR_RELPTR(i32*, i32) #1

declare dso_local i32 @GET_SCNHDR_LNNOPTR(i32*, i32) #1

declare dso_local i32 @H_GET_32(i32*, i32) #1

declare dso_local i32 @H_GET_16(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @pe_data(i32*) #1

declare dso_local i64 @bfd_pe_executable_p(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

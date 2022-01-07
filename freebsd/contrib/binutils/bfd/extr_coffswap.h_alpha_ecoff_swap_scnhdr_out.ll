; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffswap.h_alpha_ecoff_swap_scnhdr_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffswap.h_alpha_ecoff_swap_scnhdr_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.internal_scnhdr = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MAX_SCNHDR_NLNNO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"%s: warning: %s: line number overflow: 0x%lx > 0xffff\00", align 1
@MAX_SCNHDR_NRELOC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"%s: %s: reloc overflow: 0x%lx > 0xffff\00", align 1
@bfd_error_file_truncated = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @coff_swap_scnhdr_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coff_swap_scnhdr_out(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.internal_scnhdr*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [5 x i8], align 1
  %11 = alloca [5 x i8], align 1
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.internal_scnhdr*
  store %struct.internal_scnhdr* %13, %struct.internal_scnhdr** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %8, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @bfd_coff_scnhsz(i32* %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %22 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memcpy(i8* %20, i32 %23, i32 4)
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %27 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PUT_SCNHDR_VADDR(i32* %25, i32 %28, i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %35 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @PUT_SCNHDR_PADDR(i32* %33, i32 %36, i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %43 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @PUT_SCNHDR_SIZE(i32* %41, i32 %44, i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %51 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @PUT_SCNHDR_SCNPTR(i32* %49, i32 %52, i32 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %59 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @PUT_SCNHDR_RELPTR(i32* %57, i32 %60, i32 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %67 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @PUT_SCNHDR_LNNOPTR(i32* %65, i32 %68, i32 %71)
  %73 = load i32*, i32** %4, align 8
  %74 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %75 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @PUT_SCNHDR_FLAGS(i32* %73, i32 %76, i32 %79)
  %81 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %82 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @MAX_SCNHDR_NLNNO, align 8
  %85 = icmp sle i64 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %3
  %87 = load i32*, i32** %4, align 8
  %88 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %89 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @PUT_SCNHDR_NLNNO(i32* %87, i32 %91, i32 %94)
  br label %117

96:                                               ; preds = %3
  %97 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %98 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %99 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @memcpy(i8* %97, i32 %100, i32 4)
  %102 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 4
  store i8 0, i8* %102, align 1
  %103 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %104 = load i32*, i32** %4, align 8
  %105 = call i32 @bfd_get_filename(i32* %104)
  %106 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %107 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %108 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 @_bfd_error_handler(i32 %103, i32 %105, i8* %106, i32 %110)
  %112 = load i32*, i32** %4, align 8
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @PUT_SCNHDR_NLNNO(i32* %112, i32 65535, i32 %115)
  br label %117

117:                                              ; preds = %96, %86
  %118 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %119 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @MAX_SCNHDR_NRELOC, align 8
  %122 = icmp sle i64 %120, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %117
  %124 = load i32*, i32** %4, align 8
  %125 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %126 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @PUT_SCNHDR_NRELOC(i32* %124, i32 %128, i32 %131)
  br label %156

133:                                              ; preds = %117
  %134 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %135 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %136 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @memcpy(i8* %134, i32 %137, i32 4)
  %139 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 4
  store i8 0, i8* %139, align 1
  %140 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %141 = load i32*, i32** %4, align 8
  %142 = call i32 @bfd_get_filename(i32* %141)
  %143 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %144 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %145 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = call i32 @_bfd_error_handler(i32 %140, i32 %142, i8* %143, i32 %147)
  %149 = load i32, i32* @bfd_error_file_truncated, align 4
  %150 = call i32 @bfd_set_error(i32 %149)
  %151 = load i32*, i32** %4, align 8
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @PUT_SCNHDR_NRELOC(i32* %151, i32 65535, i32 %154)
  store i32 0, i32* %9, align 4
  br label %156

156:                                              ; preds = %133, %123
  %157 = load i32, i32* %9, align 4
  ret i32 %157
}

declare dso_local i32 @bfd_coff_scnhsz(i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @PUT_SCNHDR_VADDR(i32*, i32, i32) #1

declare dso_local i32 @PUT_SCNHDR_PADDR(i32*, i32, i32) #1

declare dso_local i32 @PUT_SCNHDR_SIZE(i32*, i32, i32) #1

declare dso_local i32 @PUT_SCNHDR_SCNPTR(i32*, i32, i32) #1

declare dso_local i32 @PUT_SCNHDR_RELPTR(i32*, i32, i32) #1

declare dso_local i32 @PUT_SCNHDR_LNNOPTR(i32*, i32, i32) #1

declare dso_local i32 @PUT_SCNHDR_FLAGS(i32*, i32, i32) #1

declare dso_local i32 @PUT_SCNHDR_NLNNO(i32*, i32, i32) #1

declare dso_local i32 @_bfd_error_handler(i32, i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local i32 @PUT_SCNHDR_NRELOC(i32*, i32, i32) #1

declare dso_local i32 @bfd_set_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

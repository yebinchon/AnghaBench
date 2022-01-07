; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfcode.h_elf_swap_ehdr_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfcode.h_elf_swap_ehdr_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@EI_NIDENT = common dso_local global i32 0, align 4
@SHN_LORESERVE = common dso_local global i32 0, align 4
@SHN_UNDEF = common dso_local global i32 0, align 4
@SHN_XINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, %struct.TYPE_7__*)* @elf_swap_ehdr_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_swap_ehdr_out(i32* %0, %struct.TYPE_6__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call %struct.TYPE_8__* @get_elf_backend_data(i32* %9)
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 13
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 13
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @EI_NIDENT, align 4
  %20 = call i32 @memcpy(i32 %15, i32 %18, i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 12
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @H_PUT_16(i32* %21, i32 %24, i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 11
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @H_PUT_16(i32* %29, i32 %32, i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 12
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 10
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @H_PUT_32(i32* %37, i32 %40, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %3
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 11
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @H_PUT_SIGNED_WORD(i32* %48, i32 %51, i32 %54)
  br label %65

56:                                               ; preds = %3
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @H_PUT_WORD(i32* %57, i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %56, %47
  %66 = load i32*, i32** %4, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 10
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @H_PUT_WORD(i32* %66, i32 %69, i32 %72)
  %74 = load i32*, i32** %4, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @H_PUT_WORD(i32* %74, i32 %77, i32 %80)
  %82 = load i32*, i32** %4, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @H_PUT_32(i32* %82, i32 %85, i32 %88)
  %90 = load i32*, i32** %4, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @H_PUT_16(i32* %90, i32 %93, i32 %96)
  %98 = load i32*, i32** %4, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @H_PUT_16(i32* %98, i32 %101, i32 %104)
  %106 = load i32*, i32** %4, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @H_PUT_16(i32* %106, i32 %109, i32 %112)
  %114 = load i32*, i32** %4, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @H_PUT_16(i32* %114, i32 %117, i32 %120)
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @SHN_LORESERVE, align 4
  %127 = icmp uge i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %65
  %129 = load i32, i32* @SHN_UNDEF, align 4
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %128, %65
  %131 = load i32*, i32** %4, align 8
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @H_PUT_16(i32* %131, i32 %132, i32 %135)
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @SHN_LORESERVE, align 4
  %142 = icmp uge i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %130
  %144 = load i32, i32* @SHN_XINDEX, align 4
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %143, %130
  %146 = load i32*, i32** %4, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @H_PUT_16(i32* %146, i32 %147, i32 %150)
  ret void
}

declare dso_local %struct.TYPE_8__* @get_elf_backend_data(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @H_PUT_16(i32*, i32, i32) #1

declare dso_local i32 @H_PUT_32(i32*, i32, i32) #1

declare dso_local i32 @H_PUT_SIGNED_WORD(i32*, i32, i32) #1

declare dso_local i32 @H_PUT_WORD(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

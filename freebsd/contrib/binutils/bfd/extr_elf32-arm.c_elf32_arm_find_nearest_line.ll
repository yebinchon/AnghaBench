; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_find_nearest_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_find_nearest_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32**, i32, i8**, i8**, i32*)* @elf32_arm_find_nearest_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @elf32_arm_find_nearest_line(i32* %0, i32* %1, i32** %2, i32 %3, i8** %4, i8** %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32** %2, i32*** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8** %4, i8*** %13, align 8
  store i8** %5, i8*** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %16, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load i32**, i32*** %11, align 8
  %21 = load i32, i32* %12, align 4
  %22 = load i8**, i8*** %13, align 8
  %23 = load i8**, i8*** %14, align 8
  %24 = load i32*, i32** %15, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call %struct.TYPE_2__* @elf_tdata(i32* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = call i64 @_bfd_dwarf2_find_nearest_line(i32* %18, i32* %19, i32** %20, i32 %21, i8** %22, i8** %23, i32* %24, i32 0, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %7
  %31 = load i8**, i8*** %14, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %49, label %34

34:                                               ; preds = %30
  %35 = load i32*, i32** %9, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i32**, i32*** %11, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load i8**, i8*** %13, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %45

43:                                               ; preds = %34
  %44 = load i8**, i8*** %13, align 8
  br label %45

45:                                               ; preds = %43, %42
  %46 = phi i8** [ null, %42 ], [ %44, %43 ]
  %47 = load i8**, i8*** %14, align 8
  %48 = call i32 @arm_elf_find_function(i32* %35, i32* %36, i32** %37, i32 %38, i8** %46, i8** %47)
  br label %49

49:                                               ; preds = %45, %30
  %50 = load i64, i64* @TRUE, align 8
  store i64 %50, i64* %8, align 8
  br label %98

51:                                               ; preds = %7
  %52 = load i32*, i32** %9, align 8
  %53 = load i32**, i32*** %11, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i8**, i8*** %13, align 8
  %57 = load i8**, i8*** %14, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = call %struct.TYPE_2__* @elf_tdata(i32* %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @_bfd_stab_section_find_nearest_line(i32* %52, i32** %53, i32* %54, i32 %55, i64* %16, i8** %56, i8** %57, i32* %58, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %51
  %65 = load i64, i64* @FALSE, align 8
  store i64 %65, i64* %8, align 8
  br label %98

66:                                               ; preds = %51
  %67 = load i64, i64* %16, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load i8**, i8*** %14, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i32*, i32** %15, align 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73, %69
  %78 = load i64, i64* @TRUE, align 8
  store i64 %78, i64* %8, align 8
  br label %98

79:                                               ; preds = %73, %66
  %80 = load i32**, i32*** %11, align 8
  %81 = icmp eq i32** %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i64, i64* @FALSE, align 8
  store i64 %83, i64* %8, align 8
  br label %98

84:                                               ; preds = %79
  %85 = load i32*, i32** %9, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = load i32**, i32*** %11, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load i8**, i8*** %13, align 8
  %90 = load i8**, i8*** %14, align 8
  %91 = call i32 @arm_elf_find_function(i32* %85, i32* %86, i32** %87, i32 %88, i8** %89, i8** %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %84
  %94 = load i64, i64* @FALSE, align 8
  store i64 %94, i64* %8, align 8
  br label %98

95:                                               ; preds = %84
  %96 = load i32*, i32** %15, align 8
  store i32 0, i32* %96, align 4
  %97 = load i64, i64* @TRUE, align 8
  store i64 %97, i64* %8, align 8
  br label %98

98:                                               ; preds = %95, %93, %82, %77, %64, %49
  %99 = load i64, i64* %8, align 8
  ret i64 %99
}

declare dso_local i64 @_bfd_dwarf2_find_nearest_line(i32*, i32*, i32**, i32, i8**, i8**, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_2__* @elf_tdata(i32*) #1

declare dso_local i32 @arm_elf_find_function(i32*, i32*, i32**, i32, i8**, i8**) #1

declare dso_local i32 @_bfd_stab_section_find_nearest_line(i32*, i32**, i32*, i32, i64*, i8**, i8**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

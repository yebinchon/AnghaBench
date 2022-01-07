; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_find_nearest_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_find_nearest_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_bfd_elf_find_nearest_line(i32* %0, i32* %1, i32** %2, i32 %3, i8** %4, i8** %5, i32* %6) #0 {
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
  %17 = load i32*, i32** %9, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i32**, i32*** %11, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load i8**, i8*** %13, align 8
  %22 = load i8**, i8*** %14, align 8
  %23 = load i32*, i32** %15, align 8
  %24 = call i64 @_bfd_dwarf1_find_nearest_line(i32* %17, i32* %18, i32** %19, i32 %20, i8** %21, i8** %22, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %7
  %27 = load i8**, i8*** %14, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %45, label %30

30:                                               ; preds = %26
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32**, i32*** %11, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i8**, i8*** %13, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %41

39:                                               ; preds = %30
  %40 = load i8**, i8*** %13, align 8
  br label %41

41:                                               ; preds = %39, %38
  %42 = phi i8** [ null, %38 ], [ %40, %39 ]
  %43 = load i8**, i8*** %14, align 8
  %44 = call i32 @elf_find_function(i32* %31, i32* %32, i32** %33, i32 %34, i8** %42, i8** %43)
  br label %45

45:                                               ; preds = %41, %26
  %46 = load i64, i64* @TRUE, align 8
  store i64 %46, i64* %8, align 8
  br label %128

47:                                               ; preds = %7
  %48 = load i32*, i32** %9, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load i32**, i32*** %11, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i8**, i8*** %13, align 8
  %53 = load i8**, i8*** %14, align 8
  %54 = load i32*, i32** %15, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call %struct.TYPE_2__* @elf_tdata(i32* %55)
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = call i64 @_bfd_dwarf2_find_nearest_line(i32* %48, i32* %49, i32** %50, i32 %51, i8** %52, i8** %53, i32* %54, i32 0, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %47
  %61 = load i8**, i8*** %14, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %79, label %64

64:                                               ; preds = %60
  %65 = load i32*, i32** %9, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = load i32**, i32*** %11, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i8**, i8*** %13, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %75

73:                                               ; preds = %64
  %74 = load i8**, i8*** %13, align 8
  br label %75

75:                                               ; preds = %73, %72
  %76 = phi i8** [ null, %72 ], [ %74, %73 ]
  %77 = load i8**, i8*** %14, align 8
  %78 = call i32 @elf_find_function(i32* %65, i32* %66, i32** %67, i32 %68, i8** %76, i8** %77)
  br label %79

79:                                               ; preds = %75, %60
  %80 = load i64, i64* @TRUE, align 8
  store i64 %80, i64* %8, align 8
  br label %128

81:                                               ; preds = %47
  %82 = load i32*, i32** %9, align 8
  %83 = load i32**, i32*** %11, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load i8**, i8*** %13, align 8
  %87 = load i8**, i8*** %14, align 8
  %88 = load i32*, i32** %15, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = call %struct.TYPE_2__* @elf_tdata(i32* %89)
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = call i32 @_bfd_stab_section_find_nearest_line(i32* %82, i32** %83, i32* %84, i32 %85, i64* %16, i8** %86, i8** %87, i32* %88, i32* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %81
  %95 = load i64, i64* @FALSE, align 8
  store i64 %95, i64* %8, align 8
  br label %128

96:                                               ; preds = %81
  %97 = load i64, i64* %16, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = load i8**, i8*** %14, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i32*, i32** %15, align 8
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103, %99
  %108 = load i64, i64* @TRUE, align 8
  store i64 %108, i64* %8, align 8
  br label %128

109:                                              ; preds = %103, %96
  %110 = load i32**, i32*** %11, align 8
  %111 = icmp eq i32** %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i64, i64* @FALSE, align 8
  store i64 %113, i64* %8, align 8
  br label %128

114:                                              ; preds = %109
  %115 = load i32*, i32** %9, align 8
  %116 = load i32*, i32** %10, align 8
  %117 = load i32**, i32*** %11, align 8
  %118 = load i32, i32* %12, align 4
  %119 = load i8**, i8*** %13, align 8
  %120 = load i8**, i8*** %14, align 8
  %121 = call i32 @elf_find_function(i32* %115, i32* %116, i32** %117, i32 %118, i8** %119, i8** %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %114
  %124 = load i64, i64* @FALSE, align 8
  store i64 %124, i64* %8, align 8
  br label %128

125:                                              ; preds = %114
  %126 = load i32*, i32** %15, align 8
  store i32 0, i32* %126, align 4
  %127 = load i64, i64* @TRUE, align 8
  store i64 %127, i64* %8, align 8
  br label %128

128:                                              ; preds = %125, %123, %112, %107, %94, %79, %45
  %129 = load i64, i64* %8, align 8
  ret i64 %129
}

declare dso_local i64 @_bfd_dwarf1_find_nearest_line(i32*, i32*, i32**, i32, i8**, i8**, i32*) #1

declare dso_local i32 @elf_find_function(i32*, i32*, i32**, i32, i8**, i8**) #1

declare dso_local i64 @_bfd_dwarf2_find_nearest_line(i32*, i32*, i32**, i32, i8**, i8**, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_2__* @elf_tdata(i32*) #1

declare dso_local i32 @_bfd_stab_section_find_nearest_line(i32*, i32**, i32*, i32, i64*, i8**, i8**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

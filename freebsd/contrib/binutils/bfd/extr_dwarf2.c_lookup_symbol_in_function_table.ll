; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_lookup_symbol_in_function_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_lookup_symbol_in_function_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comp_unit = type { %struct.funcinfo* }
%struct.funcinfo = type { i8*, i32, i32*, %struct.arange, i64, %struct.funcinfo* }
%struct.arange = type { i64, i64, %struct.arange* }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comp_unit*, i32*, i64, i8**, i32*)* @lookup_symbol_in_function_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_symbol_in_function_table(%struct.comp_unit* %0, i32* %1, i64 %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.comp_unit*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.funcinfo*, align 8
  %13 = alloca %struct.funcinfo*, align 8
  %14 = alloca %struct.arange*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  store %struct.comp_unit* %0, %struct.comp_unit** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.funcinfo* null, %struct.funcinfo** %13, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i8* @bfd_asymbol_name(i32* %17)
  store i8* %18, i8** %15, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32* @bfd_get_section(i32* %19)
  store i32* %20, i32** %16, align 8
  %21 = load %struct.comp_unit*, %struct.comp_unit** %7, align 8
  %22 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %21, i32 0, i32 0
  %23 = load %struct.funcinfo*, %struct.funcinfo** %22, align 8
  store %struct.funcinfo* %23, %struct.funcinfo** %12, align 8
  br label %24

24:                                               ; preds = %97, %5
  %25 = load %struct.funcinfo*, %struct.funcinfo** %12, align 8
  %26 = icmp ne %struct.funcinfo* %25, null
  br i1 %26, label %27, label %101

27:                                               ; preds = %24
  %28 = load %struct.funcinfo*, %struct.funcinfo** %12, align 8
  %29 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %28, i32 0, i32 3
  store %struct.arange* %29, %struct.arange** %14, align 8
  br label %30

30:                                               ; preds = %92, %27
  %31 = load %struct.arange*, %struct.arange** %14, align 8
  %32 = icmp ne %struct.arange* %31, null
  br i1 %32, label %33, label %96

33:                                               ; preds = %30
  %34 = load %struct.funcinfo*, %struct.funcinfo** %12, align 8
  %35 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.funcinfo*, %struct.funcinfo** %12, align 8
  %40 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = icmp eq i32* %41, %42
  br i1 %43, label %44, label %91

44:                                               ; preds = %38, %33
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.arange*, %struct.arange** %14, align 8
  %47 = getelementptr inbounds %struct.arange, %struct.arange* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %45, %48
  br i1 %49, label %50, label %91

50:                                               ; preds = %44
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.arange*, %struct.arange** %14, align 8
  %53 = getelementptr inbounds %struct.arange, %struct.arange* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %56, label %91

56:                                               ; preds = %50
  %57 = load %struct.funcinfo*, %struct.funcinfo** %12, align 8
  %58 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %91

61:                                               ; preds = %56
  %62 = load i8*, i8** %15, align 8
  %63 = load %struct.funcinfo*, %struct.funcinfo** %12, align 8
  %64 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @strcmp(i8* %62, i64 %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %61
  %69 = load %struct.funcinfo*, %struct.funcinfo** %13, align 8
  %70 = icmp ne %struct.funcinfo* %69, null
  br i1 %70, label %71, label %89

71:                                               ; preds = %68
  %72 = load %struct.arange*, %struct.arange** %14, align 8
  %73 = getelementptr inbounds %struct.arange, %struct.arange* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.arange*, %struct.arange** %14, align 8
  %76 = getelementptr inbounds %struct.arange, %struct.arange* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %74, %77
  %79 = load %struct.funcinfo*, %struct.funcinfo** %13, align 8
  %80 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.arange, %struct.arange* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.funcinfo*, %struct.funcinfo** %13, align 8
  %84 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.arange, %struct.arange* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %82, %86
  %88 = icmp slt i64 %78, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %71, %68
  %90 = load %struct.funcinfo*, %struct.funcinfo** %12, align 8
  store %struct.funcinfo* %90, %struct.funcinfo** %13, align 8
  br label %91

91:                                               ; preds = %89, %71, %61, %56, %50, %44, %38
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.arange*, %struct.arange** %14, align 8
  %94 = getelementptr inbounds %struct.arange, %struct.arange* %93, i32 0, i32 2
  %95 = load %struct.arange*, %struct.arange** %94, align 8
  store %struct.arange* %95, %struct.arange** %14, align 8
  br label %30

96:                                               ; preds = %30
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.funcinfo*, %struct.funcinfo** %12, align 8
  %99 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %98, i32 0, i32 5
  %100 = load %struct.funcinfo*, %struct.funcinfo** %99, align 8
  store %struct.funcinfo* %100, %struct.funcinfo** %12, align 8
  br label %24

101:                                              ; preds = %24
  %102 = load %struct.funcinfo*, %struct.funcinfo** %13, align 8
  %103 = icmp ne %struct.funcinfo* %102, null
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = load i32*, i32** %16, align 8
  %106 = load %struct.funcinfo*, %struct.funcinfo** %13, align 8
  %107 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %106, i32 0, i32 2
  store i32* %105, i32** %107, align 8
  %108 = load %struct.funcinfo*, %struct.funcinfo** %13, align 8
  %109 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load i8**, i8*** %10, align 8
  store i8* %110, i8** %111, align 8
  %112 = load %struct.funcinfo*, %struct.funcinfo** %13, align 8
  %113 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32*, i32** %11, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* @TRUE, align 4
  store i32 %116, i32* %6, align 4
  br label %119

117:                                              ; preds = %101
  %118 = load i32, i32* @FALSE, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %117, %104
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local i8* @bfd_asymbol_name(i32*) #1

declare dso_local i32* @bfd_get_section(i32*) #1

declare dso_local i64 @strcmp(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

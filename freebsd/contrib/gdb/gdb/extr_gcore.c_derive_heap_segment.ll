; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gcore.c_derive_heap_segment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gcore.c_derive_heap_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_12__* }
%struct.value = type opaque

@target_has_execution = common dso_local global i32 0, align 4
@SEC_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".bss\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"sbrk\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"_sbrk\00", align 1
@builtin_type_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i64*, i64*)* @derive_heap_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @derive_heap_segment(%struct.TYPE_11__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.value*, align 8
  %12 = alloca %struct.value*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = call i32 @gdb_assert(i64* %15)
  %17 = load i64*, i64** %7, align 8
  %18 = call i32 @gdb_assert(i64* %17)
  %19 = load i32, i32* @target_has_execution, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %113

22:                                               ; preds = %3
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %14, align 8
  br label %26

26:                                               ; preds = %59, %22
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %28 = icmp ne %struct.TYPE_12__* %27, null
  br i1 %28, label %29, label %63

29:                                               ; preds = %26
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %32 = call i32 @bfd_get_section_flags(%struct.TYPE_11__* %30, %struct.TYPE_12__* %31)
  %33 = load i32, i32* @SEC_DATA, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %29
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %39 = call i32 @bfd_section_name(%struct.TYPE_11__* %37, %struct.TYPE_12__* %38)
  %40 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %36, %29
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %45 = call i64 @bfd_get_section_vma(%struct.TYPE_11__* %43, %struct.TYPE_12__* %44)
  store i64 %45, i64* %13, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %47 = call i64 @bfd_get_section_size(%struct.TYPE_12__* %46)
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* %10, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i64, i64* %8, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* %10, align 8
  %56 = add nsw i64 %54, %55
  store i64 %56, i64* %8, align 8
  br label %57

57:                                               ; preds = %53, %42
  br label %58

58:                                               ; preds = %57, %36
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %14, align 8
  br label %26

63:                                               ; preds = %26
  %64 = call i32* @lookup_minimal_symbol(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null)
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = call i64* @find_function_in_inferior(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %68 = bitcast i64* %67 to %struct.value*
  store %struct.value* %68, %struct.value** %12, align 8
  %69 = load %struct.value*, %struct.value** %12, align 8
  %70 = icmp eq %struct.value* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %113

72:                                               ; preds = %66
  br label %85

73:                                               ; preds = %63
  %74 = call i32* @lookup_minimal_symbol(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null)
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = call i64* @find_function_in_inferior(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %78 = bitcast i64* %77 to %struct.value*
  store %struct.value* %78, %struct.value** %12, align 8
  %79 = load %struct.value*, %struct.value** %12, align 8
  %80 = icmp eq %struct.value* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %113

82:                                               ; preds = %76
  br label %84

83:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %113

84:                                               ; preds = %82
  br label %85

85:                                               ; preds = %84, %72
  %86 = load i32, i32* @builtin_type_int, align 4
  %87 = call i64* @value_from_longest(i32 %86, i32 0)
  %88 = bitcast i64* %87 to %struct.value*
  store %struct.value* %88, %struct.value** %11, align 8
  %89 = load %struct.value*, %struct.value** %11, align 8
  %90 = bitcast %struct.value* %89 to i64*
  %91 = call i32 @gdb_assert(i64* %90)
  %92 = load %struct.value*, %struct.value** %12, align 8
  %93 = bitcast %struct.value* %92 to i64*
  %94 = bitcast %struct.value** %11 to i64**
  %95 = call i64* @call_function_by_hand(i64* %93, i32 1, i64** %94)
  %96 = bitcast i64* %95 to %struct.value*
  store %struct.value* %96, %struct.value** %12, align 8
  %97 = load %struct.value*, %struct.value** %12, align 8
  %98 = icmp eq %struct.value* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %113

100:                                              ; preds = %85
  %101 = load %struct.value*, %struct.value** %12, align 8
  %102 = bitcast %struct.value* %101 to i64*
  %103 = call i64 @value_as_long(i64* %102)
  store i64 %103, i64* %9, align 8
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %8, align 8
  %106 = icmp sgt i64 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %100
  %108 = load i64, i64* %8, align 8
  %109 = load i64*, i64** %6, align 8
  store i64 %108, i64* %109, align 8
  %110 = load i64, i64* %9, align 8
  %111 = load i64*, i64** %7, align 8
  store i64 %110, i64* %111, align 8
  store i32 1, i32* %4, align 4
  br label %113

112:                                              ; preds = %100
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %107, %99, %83, %81, %71, %21
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @gdb_assert(i64*) #1

declare dso_local i32 @bfd_get_section_flags(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @bfd_section_name(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i64 @bfd_get_section_vma(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i64 @bfd_get_section_size(%struct.TYPE_12__*) #1

declare dso_local i32* @lookup_minimal_symbol(i8*, i32*, i32*) #1

declare dso_local i64* @find_function_in_inferior(i8*) #1

declare dso_local i64* @value_from_longest(i32, i32) #1

declare dso_local i64* @call_function_by_hand(i64*, i32, i64**) #1

declare dso_local i64 @value_as_long(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

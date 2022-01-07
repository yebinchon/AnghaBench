; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-if-conv.c_tree_if_conversion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-if-conv.c_tree_if_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.loop = type { i32 }

@ifc_bbs = common dso_local global %struct.TYPE_9__** null, align 8
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"-------------------------\0A\00", align 1
@CDI_POST_DOMINATORS = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop*, i32)* @tree_if_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_if_conversion(%struct.loop* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.loop*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  store %struct.loop* %0, %struct.loop** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_9__** null, %struct.TYPE_9__*** @ifc_bbs, align 8
  %12 = load %struct.loop*, %struct.loop** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @if_convertible_loop_p(%struct.loop* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* @dump_file, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i32, i32* @dump_flags, align 4
  %21 = load i32, i32* @TDF_DETAILS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i64, i64* @dump_file, align 8
  %26 = call i32 @fprintf(i64 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %19, %16
  %28 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @ifc_bbs, align 8
  %29 = icmp ne %struct.TYPE_9__** %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @ifc_bbs, align 8
  %32 = call i32 @free(%struct.TYPE_9__** %31)
  store %struct.TYPE_9__** null, %struct.TYPE_9__*** @ifc_bbs, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* @CDI_POST_DOMINATORS, align 4
  %35 = call i32 @free_dominance_info(i32 %34)
  store i32 0, i32* %3, align 4
  br label %98

36:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %88, %36
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.loop*, %struct.loop** %4, align 8
  %40 = getelementptr inbounds %struct.loop, %struct.loop* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %91

43:                                               ; preds = %37
  %44 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @ifc_bbs, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %44, i64 %46
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %6, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = call i32 @bsi_start(%struct.TYPE_9__* %52)
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %71, %43
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @bsi_end_p(i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @bsi_stmt(i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load %struct.loop*, %struct.loop** %4, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @tree_if_convert_stmt(%struct.loop* %62, i32 %63, i32 %64, i32* %7)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @bsi_end_p(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %59
  %70 = call i32 @bsi_next(i32* %7)
  br label %71

71:                                               ; preds = %69, %59
  br label %54

72:                                               ; preds = %54
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = call i64 @single_succ_p(%struct.TYPE_9__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %78 = call %struct.TYPE_9__* @single_succ(%struct.TYPE_9__* %77)
  store %struct.TYPE_9__* %78, %struct.TYPE_9__** %11, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @NULL_TREE, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @add_to_predicate_list(%struct.TYPE_9__* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %76
  br label %87

87:                                               ; preds = %86, %72
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %37

91:                                               ; preds = %37
  %92 = load %struct.loop*, %struct.loop** %4, align 8
  %93 = call i32 @combine_blocks(%struct.loop* %92)
  %94 = load %struct.loop*, %struct.loop** %4, align 8
  %95 = call i32 @clean_predicate_lists(%struct.loop* %94)
  %96 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @ifc_bbs, align 8
  %97 = call i32 @free(%struct.TYPE_9__** %96)
  store %struct.TYPE_9__** null, %struct.TYPE_9__*** @ifc_bbs, align 8
  store i32 1, i32* %3, align 4
  br label %98

98:                                               ; preds = %91, %33
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @if_convertible_loop_p(%struct.loop*, i32) #1

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @free(%struct.TYPE_9__**) #1

declare dso_local i32 @free_dominance_info(i32) #1

declare dso_local i32 @bsi_start(%struct.TYPE_9__*) #1

declare dso_local i32 @bsi_end_p(i32) #1

declare dso_local i32 @bsi_stmt(i32) #1

declare dso_local i32 @tree_if_convert_stmt(%struct.loop*, i32, i32, i32*) #1

declare dso_local i32 @bsi_next(i32*) #1

declare dso_local i64 @single_succ_p(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @single_succ(%struct.TYPE_9__*) #1

declare dso_local i32 @add_to_predicate_list(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @combine_blocks(%struct.loop*) #1

declare dso_local i32 @clean_predicate_lists(%struct.loop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

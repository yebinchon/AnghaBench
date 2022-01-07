; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-copy.c_copy_prop_visit_cond_stmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-copy.c_copy_prop_visit_cond_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@SSA_PROP_VARYING = common dso_local global i32 0, align 4
@SSA_NAME = common dso_local global i64 0, align 8
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Trying to determine truth value of \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"predicate \00", align 1
@boolean_type_node = common dso_local global i32 0, align 4
@SSA_PROP_INTERESTING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"\0AConditional will always take edge %d->%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_8__**)* @copy_prop_visit_cond_stmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_prop_visit_cond_stmt(i64 %0, %struct.TYPE_8__** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %4, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @COND_EXPR_COND(i64 %11)
  store i64 %12, i64* %6, align 8
  %13 = load i32, i32* @SSA_PROP_VARYING, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @COMPARISON_CLASS_P(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %79

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @TREE_OPERAND(i64 %18, i32 0)
  %20 = call i64 @TREE_CODE(i64 %19)
  %21 = load i64, i64* @SSA_NAME, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %79

23:                                               ; preds = %17
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @TREE_OPERAND(i64 %24, i32 1)
  %26 = call i64 @TREE_CODE(i64 %25)
  %27 = load i64, i64* @SSA_NAME, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %79

29:                                               ; preds = %23
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @TREE_OPERAND(i64 %30, i32 0)
  %32 = call i64 @get_last_copy_of(i64 %31)
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @TREE_OPERAND(i64 %33, i32 1)
  %35 = call i64 @get_last_copy_of(i64 %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* @dump_file, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %29
  %39 = load i32, i32* @dump_flags, align 4
  %40 = load i32, i32* @TDF_DETAILS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i64, i64* @dump_file, align 8
  %45 = call i32 (i64, i8*, ...) @fprintf(i64 %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %46 = load i64, i64* @dump_file, align 8
  %47 = call i32 (i64, i8*, ...) @fprintf(i64 %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i64, i64* @dump_file, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @print_generic_stmt(i64 %48, i64 %49, i32 0)
  br label %51

51:                                               ; preds = %43, %38, %29
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %51
  %56 = load i64, i64* %6, align 8
  %57 = call i64 @TREE_CODE(i64 %56)
  %58 = load i32, i32* @boolean_type_node, align 4
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i64 @fold_binary(i64 %57, i32 %58, i64 %59, i64 %60)
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* %9, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %55
  %65 = load i64, i64* %3, align 8
  %66 = call i32 @bb_for_stmt(i64 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i64, i64* %9, align 8
  %69 = call %struct.TYPE_8__* @find_taken_edge(i32 %67, i64 %68)
  %70 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  store %struct.TYPE_8__* %69, %struct.TYPE_8__** %70, align 8
  %71 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = icmp ne %struct.TYPE_8__* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = load i32, i32* @SSA_PROP_INTERESTING, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %74, %64
  br label %77

77:                                               ; preds = %76, %55
  br label %78

78:                                               ; preds = %77, %51
  br label %79

79:                                               ; preds = %78, %23, %17, %2
  %80 = load i64, i64* @dump_file, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %106

82:                                               ; preds = %79
  %83 = load i32, i32* @dump_flags, align 4
  %84 = load i32, i32* @TDF_DETAILS, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %82
  %88 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = icmp ne %struct.TYPE_8__* %89, null
  br i1 %90, label %91, label %106

91:                                               ; preds = %87
  %92 = load i64, i64* @dump_file, align 8
  %93 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i64, i8*, ...) @fprintf(i64 %92, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %98, i32 %104)
  br label %106

106:                                              ; preds = %91, %87, %82, %79
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i64 @COND_EXPR_COND(i64) #1

declare dso_local i64 @COMPARISON_CLASS_P(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @get_last_copy_of(i64) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @print_generic_stmt(i64, i64, i32) #1

declare dso_local i64 @fold_binary(i64, i32, i64, i64) #1

declare dso_local i32 @bb_for_stmt(i64) #1

declare dso_local %struct.TYPE_8__* @find_taken_edge(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

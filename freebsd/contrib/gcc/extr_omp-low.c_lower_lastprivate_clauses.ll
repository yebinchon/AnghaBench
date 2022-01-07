; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_lower_lastprivate_clauses.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_lower_lastprivate_clauses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* (i32*, i32*, i32*)* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_9__* }

@OMP_CLAUSE_LASTPRIVATE = common dso_local global i64 0, align 8
@lang_hooks = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@COND_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32**, %struct.TYPE_9__*)* @lower_lastprivate_clauses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lower_lastprivate_clauses(i32* %0, i32* %1, i32** %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i64, i64* @OMP_CLAUSE_LASTPRIVATE, align 8
  %16 = call i32* @find_omp_clause(i32* %14, i64 %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %46

19:                                               ; preds = %4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = call i64 @is_parallel_ctx(%struct.TYPE_9__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %99

24:                                               ; preds = %19
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %8, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = icmp eq %struct.TYPE_9__* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %32 = call i64 @is_parallel_ctx(%struct.TYPE_9__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30, %24
  br label %99

35:                                               ; preds = %30
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32* @OMP_PARALLEL_CLAUSES(i32 %38)
  %40 = load i64, i64* @OMP_CLAUSE_LASTPRIVATE, align 8
  %41 = call i32* @find_omp_clause(i32* %39, i64 %40)
  store i32* %41, i32** %5, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %99

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %4
  %47 = call i32* (...) @alloc_stmt_list()
  store i32* %47, i32** %9, align 8
  %48 = load i32*, i32** %5, align 8
  store i32* %48, i32** %11, align 8
  br label %49

49:                                               ; preds = %81, %46
  %50 = load i32*, i32** %11, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %84

52:                                               ; preds = %49
  %53 = load i32*, i32** %11, align 8
  %54 = call i64 @OMP_CLAUSE_CODE(i32* %53)
  %55 = load i64, i64* @OMP_CLAUSE_LASTPRIVATE, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %81

58:                                               ; preds = %52
  %59 = load i32*, i32** %11, align 8
  %60 = call i32* @OMP_CLAUSE_DECL(i32* %59)
  store i32* %60, i32** %12, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = call i32* @lookup_decl(i32* %61, %struct.TYPE_9__* %62)
  store i32* %63, i32** %13, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = call i32* @build_outer_var_ref(i32* %64, %struct.TYPE_9__* %65)
  store i32* %66, i32** %10, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = call i64 @is_reference(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %58
  %71 = load i32*, i32** %13, align 8
  %72 = call i32* @build_fold_indirect_ref(i32* %71)
  store i32* %72, i32** %13, align 8
  br label %73

73:                                               ; preds = %70, %58
  %74 = load i32* (i32*, i32*, i32*)*, i32* (i32*, i32*, i32*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %75 = load i32*, i32** %11, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = call i32* %74(i32* %75, i32* %76, i32* %77)
  store i32* %78, i32** %10, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @append_to_statement_list(i32* %79, i32** %9)
  br label %81

81:                                               ; preds = %73, %57
  %82 = load i32*, i32** %11, align 8
  %83 = call i32* @OMP_CLAUSE_CHAIN(i32* %82)
  store i32* %83, i32** %11, align 8
  br label %49

84:                                               ; preds = %49
  %85 = load i32*, i32** %6, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load i32, i32* @COND_EXPR, align 4
  %89 = load i32, i32* @void_type_node, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = call i32* @build3(i32 %88, i32 %89, i32* %90, i32* %91, i32* null)
  store i32* %92, i32** %10, align 8
  br label %95

93:                                               ; preds = %84
  %94 = load i32*, i32** %9, align 8
  store i32* %94, i32** %10, align 8
  br label %95

95:                                               ; preds = %93, %87
  %96 = load i32*, i32** %10, align 8
  %97 = load i32**, i32*** %7, align 8
  %98 = call i32 @gimplify_and_add(i32* %96, i32** %97)
  br label %99

99:                                               ; preds = %95, %44, %34, %23
  ret void
}

declare dso_local i32* @find_omp_clause(i32*, i64) #1

declare dso_local i64 @is_parallel_ctx(%struct.TYPE_9__*) #1

declare dso_local i32* @OMP_PARALLEL_CLAUSES(i32) #1

declare dso_local i32* @alloc_stmt_list(...) #1

declare dso_local i64 @OMP_CLAUSE_CODE(i32*) #1

declare dso_local i32* @OMP_CLAUSE_DECL(i32*) #1

declare dso_local i32* @lookup_decl(i32*, %struct.TYPE_9__*) #1

declare dso_local i32* @build_outer_var_ref(i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @is_reference(i32*) #1

declare dso_local i32* @build_fold_indirect_ref(i32*) #1

declare dso_local i32 @append_to_statement_list(i32*, i32**) #1

declare dso_local i32* @OMP_CLAUSE_CHAIN(i32*) #1

declare dso_local i32* @build3(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @gimplify_and_add(i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_omp_all_clauses.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_omp_all_clauses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }

@CPP_PRAGMA_EOL = common dso_local global i32 0, align 4
@OMP_CLAUSE_COPYIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"copyin\00", align 1
@OMP_CLAUSE_COPYPRIVATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"copyprivate\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@OMP_CLAUSE_FIRSTPRIVATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"firstprivate\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@OMP_CLAUSE_LASTPRIVATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"lastprivate\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"nowait\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"num_threads\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"ordered\00", align 1
@OMP_CLAUSE_PRIVATE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"reduction\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"schedule\00", align 1
@OMP_CLAUSE_SHARED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"expected %<#pragma omp%> clause\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"%qs is not valid for %qs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_14__*, i32, i8*, i32*)* @cp_parser_omp_all_clauses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cp_parser_omp_all_clauses(%struct.TYPE_14__* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %9, align 8
  br label %13

13:                                               ; preds = %97, %4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CPP_PRAGMA_EOL, align 4
  %18 = call i64 @cp_lexer_next_token_is_not(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %98

20:                                               ; preds = %13
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %22 = call i32 @cp_parser_omp_clause_name(%struct.TYPE_14__* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32*, i32** %9, align 8
  store i32* %23, i32** %12, align 8
  %24 = load i32, i32* %10, align 4
  switch i32 %24, label %83 [
    i32 140, label %25
    i32 139, label %30
    i32 138, label %35
    i32 137, label %39
    i32 136, label %44
    i32 135, label %48
    i32 134, label %53
    i32 133, label %57
    i32 132, label %61
    i32 131, label %65
    i32 130, label %70
    i32 129, label %74
    i32 128, label %78
  ]

25:                                               ; preds = %20
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = load i32, i32* @OMP_CLAUSE_COPYIN, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = call i32* @cp_parser_omp_var_list(%struct.TYPE_14__* %26, i32 %27, i32* %28)
  store i32* %29, i32** %9, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %86

30:                                               ; preds = %20
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = load i32, i32* @OMP_CLAUSE_COPYPRIVATE, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = call i32* @cp_parser_omp_var_list(%struct.TYPE_14__* %31, i32 %32, i32* %33)
  store i32* %34, i32** %9, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %86

35:                                               ; preds = %20
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32* @cp_parser_omp_clause_default(%struct.TYPE_14__* %36, i32* %37)
  store i32* %38, i32** %9, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %86

39:                                               ; preds = %20
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = load i32, i32* @OMP_CLAUSE_FIRSTPRIVATE, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = call i32* @cp_parser_omp_var_list(%struct.TYPE_14__* %40, i32 %41, i32* %42)
  store i32* %43, i32** %9, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %86

44:                                               ; preds = %20
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i32* @cp_parser_omp_clause_if(%struct.TYPE_14__* %45, i32* %46)
  store i32* %47, i32** %9, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  br label %86

48:                                               ; preds = %20
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %50 = load i32, i32* @OMP_CLAUSE_LASTPRIVATE, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = call i32* @cp_parser_omp_var_list(%struct.TYPE_14__* %49, i32 %50, i32* %51)
  store i32* %52, i32** %9, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  br label %86

53:                                               ; preds = %20
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call i32* @cp_parser_omp_clause_nowait(%struct.TYPE_14__* %54, i32* %55)
  store i32* %56, i32** %9, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %11, align 8
  br label %86

57:                                               ; preds = %20
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = call i32* @cp_parser_omp_clause_num_threads(%struct.TYPE_14__* %58, i32* %59)
  store i32* %60, i32** %9, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %11, align 8
  br label %86

61:                                               ; preds = %20
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = call i32* @cp_parser_omp_clause_ordered(%struct.TYPE_14__* %62, i32* %63)
  store i32* %64, i32** %9, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %11, align 8
  br label %86

65:                                               ; preds = %20
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %67 = load i32, i32* @OMP_CLAUSE_PRIVATE, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = call i32* @cp_parser_omp_var_list(%struct.TYPE_14__* %66, i32 %67, i32* %68)
  store i32* %69, i32** %9, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %11, align 8
  br label %86

70:                                               ; preds = %20
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = call i32* @cp_parser_omp_clause_reduction(%struct.TYPE_14__* %71, i32* %72)
  store i32* %73, i32** %9, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %11, align 8
  br label %86

74:                                               ; preds = %20
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = call i32* @cp_parser_omp_clause_schedule(%struct.TYPE_14__* %75, i32* %76)
  store i32* %77, i32** %9, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8** %11, align 8
  br label %86

78:                                               ; preds = %20
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %80 = load i32, i32* @OMP_CLAUSE_SHARED, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = call i32* @cp_parser_omp_var_list(%struct.TYPE_14__* %79, i32 %80, i32* %81)
  store i32* %82, i32** %9, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8** %11, align 8
  br label %86

83:                                               ; preds = %20
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %85 = call i32 @cp_parser_error(%struct.TYPE_14__* %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  br label %99

86:                                               ; preds = %78, %74, %70, %65, %61, %57, %53, %48, %44, %39, %35, %30, %25
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %10, align 4
  %89 = lshr i32 %87, %88
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load i32*, i32** %12, align 8
  store i32* %93, i32** %9, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i8* %94, i8* %95)
  br label %97

97:                                               ; preds = %92, %86
  br label %13

98:                                               ; preds = %13
  br label %99

99:                                               ; preds = %98, %83
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %101 = load i32*, i32** %8, align 8
  %102 = call i32 @cp_parser_skip_to_pragma_eol(%struct.TYPE_14__* %100, i32* %101)
  %103 = load i32*, i32** %9, align 8
  %104 = call i32* @finish_omp_clauses(i32* %103)
  ret i32* %104
}

declare dso_local i64 @cp_lexer_next_token_is_not(i32, i32) #1

declare dso_local i32 @cp_parser_omp_clause_name(%struct.TYPE_14__*) #1

declare dso_local i32* @cp_parser_omp_var_list(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32* @cp_parser_omp_clause_default(%struct.TYPE_14__*, i32*) #1

declare dso_local i32* @cp_parser_omp_clause_if(%struct.TYPE_14__*, i32*) #1

declare dso_local i32* @cp_parser_omp_clause_nowait(%struct.TYPE_14__*, i32*) #1

declare dso_local i32* @cp_parser_omp_clause_num_threads(%struct.TYPE_14__*, i32*) #1

declare dso_local i32* @cp_parser_omp_clause_ordered(%struct.TYPE_14__*, i32*) #1

declare dso_local i32* @cp_parser_omp_clause_reduction(%struct.TYPE_14__*, i32*) #1

declare dso_local i32* @cp_parser_omp_clause_schedule(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @cp_parser_error(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i32 @cp_parser_skip_to_pragma_eol(%struct.TYPE_14__*, i32*) #1

declare dso_local i32* @finish_omp_clauses(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

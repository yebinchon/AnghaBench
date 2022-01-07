; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_omp_all_clauses.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_omp_all_clauses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }

@CPP_PRAGMA_EOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"copyin\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"copyprivate\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"firstprivate\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"lastprivate\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"nowait\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"num_threads\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"ordered\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"reduction\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"schedule\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"expected %<#pragma omp%> clause\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"%qs is not valid for %qs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_20__*, i32, i8*)* @c_parser_omp_all_clauses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @c_parser_omp_all_clauses(%struct.TYPE_20__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32* null, i32** %7, align 8
  br label %11

11:                                               ; preds = %92, %3
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %13 = load i32, i32* @CPP_PRAGMA_EOL, align 4
  %14 = call i64 @c_parser_next_token_is_not(%struct.TYPE_20__* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %93

16:                                               ; preds = %11
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %18 = call i32 @c_parser_omp_clause_name(%struct.TYPE_20__* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32*, i32** %7, align 8
  store i32* %19, i32** %10, align 8
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %73 [
    i32 140, label %21
    i32 139, label %25
    i32 138, label %29
    i32 137, label %33
    i32 136, label %37
    i32 135, label %41
    i32 134, label %45
    i32 133, label %49
    i32 132, label %53
    i32 131, label %57
    i32 130, label %61
    i32 129, label %65
    i32 128, label %69
  ]

21:                                               ; preds = %16
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32* @c_parser_omp_clause_copyin(%struct.TYPE_20__* %22, i32* %23)
  store i32* %24, i32** %7, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %76

25:                                               ; preds = %16
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32* @c_parser_omp_clause_copyprivate(%struct.TYPE_20__* %26, i32* %27)
  store i32* %28, i32** %7, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %76

29:                                               ; preds = %16
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32* @c_parser_omp_clause_default(%struct.TYPE_20__* %30, i32* %31)
  store i32* %32, i32** %7, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %76

33:                                               ; preds = %16
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32* @c_parser_omp_clause_firstprivate(%struct.TYPE_20__* %34, i32* %35)
  store i32* %36, i32** %7, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %76

37:                                               ; preds = %16
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32* @c_parser_omp_clause_if(%struct.TYPE_20__* %38, i32* %39)
  store i32* %40, i32** %7, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %76

41:                                               ; preds = %16
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32* @c_parser_omp_clause_lastprivate(%struct.TYPE_20__* %42, i32* %43)
  store i32* %44, i32** %7, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %76

45:                                               ; preds = %16
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i32* @c_parser_omp_clause_nowait(%struct.TYPE_20__* %46, i32* %47)
  store i32* %48, i32** %7, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  br label %76

49:                                               ; preds = %16
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32* @c_parser_omp_clause_num_threads(%struct.TYPE_20__* %50, i32* %51)
  store i32* %52, i32** %7, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %9, align 8
  br label %76

53:                                               ; preds = %16
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i32* @c_parser_omp_clause_ordered(%struct.TYPE_20__* %54, i32* %55)
  store i32* %56, i32** %7, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %76

57:                                               ; preds = %16
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32* @c_parser_omp_clause_private(%struct.TYPE_20__* %58, i32* %59)
  store i32* %60, i32** %7, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %9, align 8
  br label %76

61:                                               ; preds = %16
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i32* @c_parser_omp_clause_reduction(%struct.TYPE_20__* %62, i32* %63)
  store i32* %64, i32** %7, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %9, align 8
  br label %76

65:                                               ; preds = %16
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = call i32* @c_parser_omp_clause_schedule(%struct.TYPE_20__* %66, i32* %67)
  store i32* %68, i32** %7, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8** %9, align 8
  br label %76

69:                                               ; preds = %16
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call i32* @c_parser_omp_clause_shared(%struct.TYPE_20__* %70, i32* %71)
  store i32* %72, i32** %7, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8** %9, align 8
  br label %76

73:                                               ; preds = %16
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %75 = call i32 @c_parser_error(%struct.TYPE_20__* %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  br label %94

76:                                               ; preds = %69, %65, %61, %57, %53, %49, %45, %41, %37, %33, %29, %25, %21
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %8, align 4
  %79 = lshr i32 %77, %78
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load i32*, i32** %10, align 8
  store i32* %88, i32** %7, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i8* %89, i8* %90)
  br label %92

92:                                               ; preds = %87, %82, %76
  br label %11

93:                                               ; preds = %11
  br label %94

94:                                               ; preds = %93, %73
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %96 = call i32 @c_parser_skip_to_pragma_eol(%struct.TYPE_20__* %95)
  %97 = load i32*, i32** %7, align 8
  %98 = call i32* @c_finish_omp_clauses(i32* %97)
  ret i32* %98
}

declare dso_local i64 @c_parser_next_token_is_not(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @c_parser_omp_clause_name(%struct.TYPE_20__*) #1

declare dso_local i32* @c_parser_omp_clause_copyin(%struct.TYPE_20__*, i32*) #1

declare dso_local i32* @c_parser_omp_clause_copyprivate(%struct.TYPE_20__*, i32*) #1

declare dso_local i32* @c_parser_omp_clause_default(%struct.TYPE_20__*, i32*) #1

declare dso_local i32* @c_parser_omp_clause_firstprivate(%struct.TYPE_20__*, i32*) #1

declare dso_local i32* @c_parser_omp_clause_if(%struct.TYPE_20__*, i32*) #1

declare dso_local i32* @c_parser_omp_clause_lastprivate(%struct.TYPE_20__*, i32*) #1

declare dso_local i32* @c_parser_omp_clause_nowait(%struct.TYPE_20__*, i32*) #1

declare dso_local i32* @c_parser_omp_clause_num_threads(%struct.TYPE_20__*, i32*) #1

declare dso_local i32* @c_parser_omp_clause_ordered(%struct.TYPE_20__*, i32*) #1

declare dso_local i32* @c_parser_omp_clause_private(%struct.TYPE_20__*, i32*) #1

declare dso_local i32* @c_parser_omp_clause_reduction(%struct.TYPE_20__*, i32*) #1

declare dso_local i32* @c_parser_omp_clause_schedule(%struct.TYPE_20__*, i32*) #1

declare dso_local i32* @c_parser_omp_clause_shared(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @c_parser_error(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i32 @c_parser_skip_to_pragma_eol(%struct.TYPE_20__*) #1

declare dso_local i32* @c_finish_omp_clauses(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_pragma.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_pragma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i64, i32 }

@CPP_PRAGMA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"%<#pragma GCC pch_preprocess%> must be first\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"%<#pragma omp barrier%> may only be used in compound statements\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"%<#pragma omp flush%> may only be used in compound statements\00", align 1
@pragma_external = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [79 x i8] c"%<#pragma omp section%> may only be used in %<#pragma omp sections%> construct\00", align 1
@PRAGMA_FIRST_EXTERNAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"expected declaration specifiers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32)* @cp_parser_pragma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_parser_pragma(%struct.TYPE_19__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %11 = call %struct.TYPE_18__* @cp_lexer_consume_token(%struct.TYPE_17__* %10)
  store %struct.TYPE_18__* %11, %struct.TYPE_18__** %6, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CPP_PRAGMA, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @gcc_assert(i32 %17)
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %64 [
    i32 142, label %27
    i32 140, label %29
    i32 138, label %39
    i32 130, label %49
    i32 141, label %53
    i32 139, label %53
    i32 137, label %53
    i32 136, label %53
    i32 135, label %53
    i32 134, label %53
    i32 132, label %53
    i32 131, label %53
    i32 133, label %62
  ]

27:                                               ; preds = %2
  %28 = call i32 @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %75

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %37 [
    i32 129, label %31
    i32 128, label %35
  ]

31:                                               ; preds = %29
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %34 = call i32 @cp_parser_omp_barrier(%struct.TYPE_19__* %32, %struct.TYPE_18__* %33)
  store i32 0, i32* %3, align 4
  br label %79

35:                                               ; preds = %29
  %36 = call i32 @error(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  br label %38

37:                                               ; preds = %29
  br label %72

38:                                               ; preds = %35
  br label %75

39:                                               ; preds = %2
  %40 = load i32, i32* %5, align 4
  switch i32 %40, label %47 [
    i32 129, label %41
    i32 128, label %45
  ]

41:                                               ; preds = %39
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %44 = call i32 @cp_parser_omp_flush(%struct.TYPE_19__* %42, %struct.TYPE_18__* %43)
  store i32 0, i32* %3, align 4
  br label %79

45:                                               ; preds = %39
  %46 = call i32 @error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  br label %48

47:                                               ; preds = %39
  br label %72

48:                                               ; preds = %45
  br label %75

49:                                               ; preds = %2
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %52 = call i32 @cp_parser_omp_threadprivate(%struct.TYPE_19__* %50, %struct.TYPE_18__* %51)
  store i32 0, i32* %3, align 4
  br label %79

53:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @pragma_external, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %72

58:                                               ; preds = %53
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %61 = call i32 @cp_parser_omp_construct(%struct.TYPE_19__* %59, %struct.TYPE_18__* %60)
  store i32 1, i32* %3, align 4
  br label %79

62:                                               ; preds = %2
  %63 = call i32 @error(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0))
  br label %75

64:                                               ; preds = %2
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @PRAGMA_FIRST_EXTERNAL, align 4
  %67 = icmp uge i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @gcc_assert(i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @c_invoke_pragma_handler(i32 %70)
  br label %75

72:                                               ; preds = %57, %47, %37
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %74 = call i32 @cp_parser_error(%struct.TYPE_19__* %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %64, %62, %48, %38, %27
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %78 = call i32 @cp_parser_skip_to_pragma_eol(%struct.TYPE_19__* %76, %struct.TYPE_18__* %77)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %75, %58, %49, %41, %31
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_18__* @cp_lexer_consume_token(%struct.TYPE_17__*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @cp_parser_omp_barrier(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @cp_parser_omp_flush(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @cp_parser_omp_threadprivate(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @cp_parser_omp_construct(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @c_invoke_pragma_handler(i32) #1

declare dso_local i32 @cp_parser_error(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @cp_parser_skip_to_pragma_eol(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

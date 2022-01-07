; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_pragma.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_pragma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@PRAGMA_NONE = common dso_local global i32 0, align 4
@pragma_compound = common dso_local global i32 0, align 4
@pragma_stmt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"%<#pragma omp barrier%> may only be used in compound statements\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"%<#pragma omp flush%> may only be used in compound statements\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"%<#pragma omp section%> may only be used in %<#pragma omp sections%> construct\00", align 1
@CPP_PRAGMA_EOL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"%<#pragma GCC pch_preprocess%> must be first\00", align 1
@PRAGMA_FIRST_EXTERNAL = common dso_local global i32 0, align 4
@pragma_external = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"expected declaration specifiers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32)* @c_parser_pragma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_parser_pragma(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %8 = call %struct.TYPE_14__* @c_parser_peek_token(%struct.TYPE_13__* %7)
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @PRAGMA_NONE, align 4
  %13 = icmp ne i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @gcc_assert(i32 %14)
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %61 [
    i32 131, label %17
    i32 130, label %32
    i32 128, label %47
    i32 129, label %50
    i32 132, label %55
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @pragma_compound, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @pragma_stmt, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = call i32 @c_parser_error(%struct.TYPE_13__* %26, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %21
  br label %70

29:                                               ; preds = %17
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = call i32 @c_parser_omp_barrier(%struct.TYPE_13__* %30)
  store i32 0, i32* %3, align 4
  br label %89

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @pragma_compound, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @pragma_stmt, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = call i32 @c_parser_error(%struct.TYPE_13__* %41, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %36
  br label %70

44:                                               ; preds = %32
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = call i32 @c_parser_omp_flush(%struct.TYPE_13__* %45)
  store i32 0, i32* %3, align 4
  br label %89

47:                                               ; preds = %2
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = call i32 @c_parser_omp_threadprivate(%struct.TYPE_13__* %48)
  store i32 0, i32* %3, align 4
  br label %89

50:                                               ; preds = %2
  %51 = call i32 @error(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = load i32, i32* @CPP_PRAGMA_EOL, align 4
  %54 = call i32 @c_parser_skip_until_found(%struct.TYPE_13__* %52, i32 %53, i32* null)
  store i32 0, i32* %3, align 4
  br label %89

55:                                               ; preds = %2
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = call i32 @c_parser_error(%struct.TYPE_13__* %56, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %59 = load i32, i32* @CPP_PRAGMA_EOL, align 4
  %60 = call i32 @c_parser_skip_until_found(%struct.TYPE_13__* %58, i32 %59, i32* null)
  store i32 0, i32* %3, align 4
  br label %89

61:                                               ; preds = %2
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @PRAGMA_FIRST_EXTERNAL, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @pragma_external, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %69, %43, %28
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = call i32 @c_parser_error(%struct.TYPE_13__* %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = load i32, i32* @CPP_PRAGMA_EOL, align 4
  %75 = call i32 @c_parser_skip_until_found(%struct.TYPE_13__* %73, i32 %74, i32* null)
  store i32 0, i32* %3, align 4
  br label %89

76:                                               ; preds = %65
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %78 = call i32 @c_parser_omp_construct(%struct.TYPE_13__* %77)
  store i32 1, i32* %3, align 4
  br label %89

79:                                               ; preds = %61
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %82 = call i32 @c_parser_consume_pragma(%struct.TYPE_13__* %81)
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @c_invoke_pragma_handler(i32 %83)
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %88 = call i32 @c_parser_skip_to_pragma_eol(%struct.TYPE_13__* %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %80, %76, %70, %55, %50, %47, %44, %29
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.TYPE_14__* @c_parser_peek_token(%struct.TYPE_13__*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @c_parser_error(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @c_parser_omp_barrier(%struct.TYPE_13__*) #1

declare dso_local i32 @c_parser_omp_flush(%struct.TYPE_13__*) #1

declare dso_local i32 @c_parser_omp_threadprivate(%struct.TYPE_13__*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @c_parser_skip_until_found(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @c_parser_omp_construct(%struct.TYPE_13__*) #1

declare dso_local i32 @c_parser_consume_pragma(%struct.TYPE_13__*) #1

declare dso_local i32 @c_invoke_pragma_handler(i32) #1

declare dso_local i32 @c_parser_skip_to_pragma_eol(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_initial_pragma.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_initial_pragma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@PRAGMA_GCC_PCH_PREPROCESS = common dso_local global i64 0, align 8
@CPP_STRING = common dso_local global i64 0, align 8
@CPP_PRAGMA_EOL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"junk at end of %<#pragma GCC pch_preprocess%>\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"expected string literal\00", align 1
@CPP_EOF = common dso_local global i64 0, align 8
@parse_in = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @cp_parser_initial_pragma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_parser_initial_pragma(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i32* null, i32** %3, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = call i32 @cp_lexer_get_preprocessor_token(i32* null, %struct.TYPE_6__* %4)
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PRAGMA_GCC_PCH_PREPROCESS, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %66

12:                                               ; preds = %1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = call i32 @cp_lexer_get_preprocessor_token(i32* null, %struct.TYPE_6__* %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CPP_STRING, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %12
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %3, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = call i32 @cp_lexer_get_preprocessor_token(i32* null, %struct.TYPE_6__* %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CPP_PRAGMA_EOL, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = call i32 @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %20
  br label %37

35:                                               ; preds = %12
  %36 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %34
  br label %38

38:                                               ; preds = %52, %37
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CPP_PRAGMA_EOL, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CPP_EOF, align 8
  %49 = icmp ne i64 %47, %48
  br label %50

50:                                               ; preds = %44, %38
  %51 = phi i1 [ false, %38 ], [ %49, %44 ]
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %54 = call i32 @cp_lexer_get_preprocessor_token(i32* null, %struct.TYPE_6__* %53)
  br label %38

55:                                               ; preds = %50
  %56 = load i32*, i32** %3, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32, i32* @parse_in, align 4
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @TREE_STRING_POINTER(i32* %60)
  %62 = call i32 @c_common_pch_pragma(i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %58, %55
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %65 = call i32 @cp_lexer_get_preprocessor_token(i32* null, %struct.TYPE_6__* %64)
  br label %66

66:                                               ; preds = %63, %11
  ret void
}

declare dso_local i32 @cp_lexer_get_preprocessor_token(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @c_common_pch_pragma(i32, i32) #1

declare dso_local i32 @TREE_STRING_POINTER(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

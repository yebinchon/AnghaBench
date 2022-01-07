; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_cond.c_Cond_EvalExpression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_cond.c_Cond_EvalExpression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.If = type { i64* }

@Cond_EvalExpression.dflt_info = internal global %struct.If* null, align 8
@if_info = common dso_local global %struct.If* null, align 8
@condExpr = common dso_local global i8* null, align 8
@condPushBack = common dso_local global i32 0, align 4
@lhsStrict = common dso_local global i32 0, align 4
@ifs = common dso_local global %struct.If* null, align 8
@TOK_NONE = common dso_local global i32 0, align 4
@COND_INVALID = common dso_local global i32 0, align 4
@PARSE_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Malformed conditional (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Cond_EvalExpression(%struct.If* %0, i8* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.If*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.If*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.If* %0, %struct.If** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.If*, %struct.If** @if_info, align 8
  store %struct.If* %15, %struct.If** %11, align 8
  %16 = load i8*, i8** @condExpr, align 8
  store i8* %16, i8** %12, align 8
  %17 = load i32, i32* @condPushBack, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* @lhsStrict, align 4
  br label %19

19:                                               ; preds = %31, %5
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 32
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 9
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ true, %19 ], [ %28, %24 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %7, align 8
  br label %19

34:                                               ; preds = %29
  %35 = load %struct.If*, %struct.If** %6, align 8
  %36 = icmp eq %struct.If* %35, null
  br i1 %36, label %37, label %56

37:                                               ; preds = %34
  %38 = load %struct.If*, %struct.If** @Cond_EvalExpression.dflt_info, align 8
  store %struct.If* %38, %struct.If** %6, align 8
  %39 = icmp eq %struct.If* %38, null
  br i1 %39, label %40, label %56

40:                                               ; preds = %37
  %41 = load %struct.If*, %struct.If** @ifs, align 8
  store %struct.If* %41, %struct.If** %6, align 8
  br label %42

42:                                               ; preds = %51, %40
  %43 = load %struct.If*, %struct.If** %6, align 8
  %44 = getelementptr inbounds %struct.If, %struct.If* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %54

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.If*, %struct.If** %6, align 8
  %53 = getelementptr inbounds %struct.If, %struct.If* %52, i32 1
  store %struct.If* %53, %struct.If** %6, align 8
  br label %42

54:                                               ; preds = %49
  %55 = load %struct.If*, %struct.If** %6, align 8
  store %struct.If* %55, %struct.If** @Cond_EvalExpression.dflt_info, align 8
  br label %56

56:                                               ; preds = %54, %37, %34
  %57 = load %struct.If*, %struct.If** %6, align 8
  %58 = icmp ne %struct.If* %57, null
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.If*, %struct.If** %6, align 8
  store %struct.If* %61, %struct.If** @if_info, align 8
  %62 = load i8*, i8** %7, align 8
  store i8* %62, i8** @condExpr, align 8
  %63 = load i32, i32* @TOK_NONE, align 4
  store i32 %63, i32* @condPushBack, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @do_Cond_EvalExpression(i32* %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @COND_INVALID, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %56
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* @PARSE_FATAL, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @Parse_Error(i32 %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %72, %69, %56
  %77 = load %struct.If*, %struct.If** %11, align 8
  store %struct.If* %77, %struct.If** @if_info, align 8
  %78 = load i8*, i8** %12, align 8
  store i8* %78, i8** @condExpr, align 8
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* @condPushBack, align 4
  %80 = load i32, i32* %14, align 4
  ret i32 %80
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @do_Cond_EvalExpression(i32*) #1

declare dso_local i32 @Parse_Error(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_cond.c_CondToken.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_cond.c_CondToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@condPushBack = common dso_local global i64 0, align 8
@TOK_NONE = common dso_local global i64 0, align 8
@condExpr = common dso_local global i8* null, align 8
@TOK_LPAREN = common dso_local global i64 0, align 8
@TOK_RPAREN = common dso_local global i64 0, align 8
@TOK_OR = common dso_local global i64 0, align 8
@TOK_AND = common dso_local global i64 0, align 8
@TOK_NOT = common dso_local global i64 0, align 8
@TOK_EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @CondToken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CondToken(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i64, i64* @condPushBack, align 8
  store i64 %5, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @TOK_NONE, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i64, i64* @TOK_NONE, align 8
  store i64 %10, i64* @condPushBack, align 8
  %11 = load i64, i64* %4, align 8
  store i64 %11, i64* %2, align 8
  br label %78

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %25, %12
  %14 = load i8*, i8** @condExpr, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 32
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load i8*, i8** @condExpr, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 9
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i1 [ true, %13 ], [ %22, %18 ]
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load i8*, i8** @condExpr, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** @condExpr, align 8
  br label %13

28:                                               ; preds = %23
  %29 = load i8*, i8** @condExpr, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  switch i32 %31, label %75 [
    i32 40, label %32
    i32 41, label %36
    i32 124, label %40
    i32 38, label %53
    i32 33, label %66
    i32 35, label %70
    i32 10, label %70
    i32 0, label %70
    i32 34, label %72
    i32 36, label %72
  ]

32:                                               ; preds = %28
  %33 = load i8*, i8** @condExpr, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** @condExpr, align 8
  %35 = load i64, i64* @TOK_LPAREN, align 8
  store i64 %35, i64* %2, align 8
  br label %78

36:                                               ; preds = %28
  %37 = load i8*, i8** @condExpr, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** @condExpr, align 8
  %39 = load i64, i64* @TOK_RPAREN, align 8
  store i64 %39, i64* %2, align 8
  br label %78

40:                                               ; preds = %28
  %41 = load i8*, i8** @condExpr, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 124
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i8*, i8** @condExpr, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** @condExpr, align 8
  br label %49

49:                                               ; preds = %46, %40
  %50 = load i8*, i8** @condExpr, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** @condExpr, align 8
  %52 = load i64, i64* @TOK_OR, align 8
  store i64 %52, i64* %2, align 8
  br label %78

53:                                               ; preds = %28
  %54 = load i8*, i8** @condExpr, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 38
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i8*, i8** @condExpr, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** @condExpr, align 8
  br label %62

62:                                               ; preds = %59, %53
  %63 = load i8*, i8** @condExpr, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** @condExpr, align 8
  %65 = load i64, i64* @TOK_AND, align 8
  store i64 %65, i64* %2, align 8
  br label %78

66:                                               ; preds = %28
  %67 = load i8*, i8** @condExpr, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** @condExpr, align 8
  %69 = load i64, i64* @TOK_NOT, align 8
  store i64 %69, i64* %2, align 8
  br label %78

70:                                               ; preds = %28, %28, %28
  %71 = load i64, i64* @TOK_EOF, align 8
  store i64 %71, i64* %2, align 8
  br label %78

72:                                               ; preds = %28, %28
  %73 = load i32, i32* %3, align 4
  %74 = call i64 @compare_expression(i32 %73)
  store i64 %74, i64* %2, align 8
  br label %78

75:                                               ; preds = %28
  %76 = load i32, i32* %3, align 4
  %77 = call i64 @compare_function(i32 %76)
  store i64 %77, i64* %2, align 8
  br label %78

78:                                               ; preds = %75, %72, %70, %66, %62, %49, %36, %32, %9
  %79 = load i64, i64* %2, align 8
  ret i64 %79
}

declare dso_local i64 @compare_expression(i32) #1

declare dso_local i64 @compare_function(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_cond.c_CondT.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_cond.c_CondT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOK_EOF = common dso_local global i64 0, align 8
@TOK_ERROR = common dso_local global i64 0, align 8
@TOK_LPAREN = common dso_local global i64 0, align 8
@TOK_RPAREN = common dso_local global i64 0, align 8
@TOK_NOT = common dso_local global i64 0, align 8
@TOK_TRUE = common dso_local global i64 0, align 8
@TOK_FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @CondT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CondT(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i64 @CondToken(i32 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @TOK_EOF, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i64, i64* @TOK_ERROR, align 8
  store i64 %10, i64* %3, align 8
  br label %52

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @TOK_LPAREN, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load i32, i32* %2, align 4
  %17 = call i64 @CondE(i32 %16)
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @TOK_ERROR, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load i32, i32* %2, align 4
  %23 = call i64 @CondToken(i32 %22)
  %24 = load i64, i64* @TOK_RPAREN, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i64, i64* @TOK_ERROR, align 8
  store i64 %27, i64* %3, align 8
  br label %28

28:                                               ; preds = %26, %21
  br label %29

29:                                               ; preds = %28, %15
  br label %51

30:                                               ; preds = %11
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @TOK_NOT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load i32, i32* %2, align 4
  %36 = call i64 @CondT(i32 %35)
  store i64 %36, i64* %3, align 8
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* @TOK_TRUE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* @TOK_FALSE, align 8
  store i64 %41, i64* %3, align 8
  br label %49

42:                                               ; preds = %34
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* @TOK_FALSE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i64, i64* @TOK_TRUE, align 8
  store i64 %47, i64* %3, align 8
  br label %48

48:                                               ; preds = %46, %42
  br label %49

49:                                               ; preds = %48, %40
  br label %50

50:                                               ; preds = %49, %30
  br label %51

51:                                               ; preds = %50, %29
  br label %52

52:                                               ; preds = %51, %9
  %53 = load i64, i64* %3, align 8
  ret i64 %53
}

declare dso_local i64 @CondToken(i32) #1

declare dso_local i64 @CondE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

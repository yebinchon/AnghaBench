; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fix-header.c_inf_skip_spaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fix-header.c_inf_skip_spaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@source_lineno = common dso_local global i32 0, align 4
@lineno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @inf_skip_spaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inf_skip_spaces(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  br label %4

4:                                                ; preds = %52, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 32
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 9
  br i1 %9, label %10, label %12

10:                                               ; preds = %7, %4
  %11 = call i32 (...) @INF_GET()
  store i32 %11, i32* %3, align 4
  br label %52

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 47
  br i1 %14, label %15, label %51

15:                                               ; preds = %12
  %16 = call i32 (...) @INF_GET()
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 42
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @INF_UNGET(i32 %20)
  store i32 47, i32* %2, align 4
  br label %55

22:                                               ; preds = %15
  %23 = call i32 (...) @INF_GET()
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %50, %22
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @EOF, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @EOF, align 4
  store i32 %29, i32* %2, align 4
  br label %55

30:                                               ; preds = %24
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 42
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i32, i32* %3, align 4
  %35 = icmp eq i32 %34, 10
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* @source_lineno, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @source_lineno, align 4
  %39 = load i32, i32* @lineno, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @lineno, align 4
  br label %41

41:                                               ; preds = %36, %33
  %42 = call i32 (...) @INF_GET()
  store i32 %42, i32* %3, align 4
  br label %49

43:                                               ; preds = %30
  %44 = call i32 (...) @INF_GET()
  store i32 %44, i32* %3, align 4
  %45 = icmp eq i32 %44, 47
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 (...) @INF_GET()
  store i32 %47, i32* %2, align 4
  br label %55

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %41
  br label %50

50:                                               ; preds = %49
  br label %24

51:                                               ; preds = %12
  br label %53

52:                                               ; preds = %10
  br label %4

53:                                               ; preds = %51
  %54 = load i32, i32* %3, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %46, %28, %19
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @INF_GET(...) #1

declare dso_local i32 @INF_UNGET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

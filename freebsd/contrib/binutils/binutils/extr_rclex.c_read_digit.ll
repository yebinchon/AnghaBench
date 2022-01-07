; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rclex.c_read_digit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rclex.c_read_digit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"digit exceeds base\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @read_digit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_digit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 10, i32* %3, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp eq i32 %7, 48
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  store i32 8, i32* %3, align 4
  %10 = call i32 (...) @rclex_peekch()
  switch i32 %10, label %15 [
    i32 111, label %11
    i32 79, label %11
    i32 120, label %13
    i32 88, label %13
  ]

11:                                               ; preds = %9, %9
  %12 = call i32 (...) @rclex_readch()
  store i32 8, i32* %3, align 4
  br label %15

13:                                               ; preds = %9, %9
  %14 = call i32 (...) @rclex_readch()
  store i32 16, i32* %3, align 4
  br label %15

15:                                               ; preds = %9, %13, %11
  br label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = sub nsw i32 %17, 48
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %16, %15
  br label %20

20:                                               ; preds = %63, %19
  %21 = call i32 (...) @rclex_peekch()
  store i32 %21, i32* %2, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %70

23:                                               ; preds = %20
  %24 = load i32, i32* %2, align 4
  %25 = call i64 @ISDIGIT(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %2, align 4
  %29 = sub nsw i32 %28, 48
  store i32 %29, i32* %5, align 4
  br label %53

30:                                               ; preds = %23
  %31 = load i32, i32* %2, align 4
  %32 = icmp sge i32 %31, 97
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32, i32* %2, align 4
  %35 = icmp sle i32 %34, 102
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* %2, align 4
  %38 = sub nsw i32 %37, 97
  %39 = add nsw i32 %38, 10
  store i32 %39, i32* %5, align 4
  br label %52

40:                                               ; preds = %33, %30
  %41 = load i32, i32* %2, align 4
  %42 = icmp sge i32 %41, 65
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32, i32* %2, align 4
  %45 = icmp sle i32 %44, 70
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %2, align 4
  %48 = sub nsw i32 %47, 65
  %49 = add nsw i32 %48, 10
  store i32 %49, i32* %5, align 4
  br label %51

50:                                               ; preds = %43, %40
  br label %70

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %36
  br label %53

53:                                               ; preds = %52, %27
  %54 = call i32 (...) @rclex_readch()
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  store i32 1, i32* %6, align 4
  %62 = call i32 @rcparse_warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %57, %53
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %4, align 4
  %66 = mul nsw i32 %65, %64
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %4, align 4
  br label %20

70:                                               ; preds = %50, %20
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @rclex_peekch(...) #1

declare dso_local i32 @rclex_readch(...) #1

declare dso_local i64 @ISDIGIT(i32) #1

declare dso_local i32 @rcparse_warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

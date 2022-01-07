; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_eq_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_eq_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @eq_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eq_name(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %8

8:                                                ; preds = %55, %2
  br label %9

9:                                                ; preds = %24, %8
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %4, align 8
  %12 = load i8, i8* %10, align 1
  %13 = sext i8 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sge i32 %14, 65
  br i1 %15, label %16, label %22

16:                                               ; preds = %9
  %17 = load i32, i32* %6, align 4
  %18 = icmp sle i32 %17, 90
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 32
  store i32 %21, i32* %6, align 4
  br label %26

22:                                               ; preds = %16, %9
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %25 [
    i32 45, label %24
    i32 95, label %24
    i32 46, label %24
    i32 32, label %24
  ]

24:                                               ; preds = %22, %22, %22, %22
  br label %9

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25, %19
  br label %27

27:                                               ; preds = %26
  br label %28

28:                                               ; preds = %43, %27
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %5, align 8
  %31 = load i8, i8* %29, align 1
  %32 = sext i8 %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp sge i32 %33, 65
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = icmp sle i32 %36, 90
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 32
  store i32 %40, i32* %7, align 4
  br label %45

41:                                               ; preds = %35, %28
  %42 = load i32, i32* %7, align 4
  switch i32 %42, label %44 [
    i32 45, label %43
    i32 95, label %43
    i32 46, label %43
    i32 32, label %43
  ]

43:                                               ; preds = %41, %41, %41, %41
  br label %28

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %44, %38
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %56

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %56

55:                                               ; preds = %51
  br label %8

56:                                               ; preds = %54, %50
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_hextobin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_hextobin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*)* @hextobin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hextobin(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %63, %45, %2
  %10 = load i8*, i8** %4, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %68

14:                                               ; preds = %9
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %4, align 8
  %17 = load i8, i8* %15, align 1
  %18 = sext i8 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sge i32 %19, 48
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  %23 = icmp sle i32 %22, 57
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %25, 48
  store i32 %26, i32* %8, align 4
  br label %48

27:                                               ; preds = %21, %14
  %28 = load i32, i32* %8, align 4
  %29 = icmp sge i32 %28, 65
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = icmp sle i32 %31, 70
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, 55
  store i32 %35, i32* %8, align 4
  br label %47

36:                                               ; preds = %30, %27
  %37 = load i32, i32* %8, align 4
  %38 = icmp sge i32 %37, 97
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = icmp sle i32 %40, 102
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 %43, 87
  store i32 %44, i32* %8, align 4
  br label %46

45:                                               ; preds = %39, %36
  br label %9

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46, %33
  br label %48

48:                                               ; preds = %47, %24
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = shl i32 %52, 4
  %54 = load i32, i32* %8, align 4
  %55 = add i32 %53, %54
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %3, align 8
  store i8 %56, i8* %57, align 1
  %59 = load i64, i64* %5, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %5, align 8
  br label %63

61:                                               ; preds = %48
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %61, %51
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %7, align 4
  br label %9

68:                                               ; preds = %9
  %69 = load i64, i64* %5, align 8
  ret i64 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_parse_dec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_parse_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @parse_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_dec(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %31, %3
  %11 = load i32, i32* %6, align 4
  %12 = add i32 %11, -1
  store i32 %12, i32* %6, align 4
  %13 = icmp ugt i32 %11, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %5, align 8
  %17 = load i8, i8* %15, align 1
  %18 = sext i8 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp sge i32 %19, 48
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = load i32, i32* %9, align 4
  %23 = icmp sle i32 %22, 57
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = mul nsw i32 %25, 10
  %27 = load i32, i32* %9, align 4
  %28 = sub nsw i32 %27, 48
  %29 = add nsw i32 %26, %28
  store i32 %29, i32* %8, align 4
  br label %31

30:                                               ; preds = %21, %14
  store i32 -1, i32* %4, align 4
  br label %35

31:                                               ; preds = %24
  br label %10

32:                                               ; preds = %10
  %33 = load i32, i32* %8, align 4
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %30
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

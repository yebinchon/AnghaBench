; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m31.c_le30_to_be8.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m31.c_le30_to_be8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32*)* @le30_to_be8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @le30_to_be8(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %46, %3
  %11 = load i64, i64* %5, align 8
  %12 = add i64 %11, -1
  store i64 %12, i64* %5, align 8
  %13 = icmp ugt i64 %11, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %10
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %36

17:                                               ; preds = %14
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %6, align 8
  %20 = load i32, i32* %18, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = shl i32 %22, %23
  %25 = or i32 %21, %24
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8 %26, i8* %29, align 1
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 8, %31
  %33 = ashr i32 %30, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 22
  store i32 %35, i32* %8, align 4
  br label %46

36:                                               ; preds = %14
  %37 = load i32, i32* %7, align 4
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8 %38, i8* %41, align 1
  %42 = load i32, i32* %7, align 4
  %43 = ashr i32 %42, 8
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = sub nsw i32 %44, 8
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %36, %17
  br label %10

47:                                               ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

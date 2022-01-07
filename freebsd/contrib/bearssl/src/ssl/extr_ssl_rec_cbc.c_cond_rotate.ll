; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_rec_cbc.c_cond_rotate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_rec_cbc.c_cond_rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i64, i64)* @cond_rotate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cond_rotate(i32 %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %10, align 8
  %12 = load i64, i64* %8, align 8
  store i64 %12, i64* %11, align 8
  br label %13

13:                                               ; preds = %36, %4
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %11, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = call zeroext i8 @MUX(i32 %18, i8 zeroext %22, i8 zeroext %26)
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %28
  store i8 %27, i8* %29, align 1
  %30 = load i64, i64* %11, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %17
  store i64 0, i64* %11, align 8
  br label %35

35:                                               ; preds = %34, %17
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %10, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %10, align 8
  br label %13

39:                                               ; preds = %13
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @memcpy(i8* %40, i8* %41, i64 %42)
  ret void
}

declare dso_local zeroext i8 @MUX(i32, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

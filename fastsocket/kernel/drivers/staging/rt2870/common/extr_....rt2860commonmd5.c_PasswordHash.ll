; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/common/extr_....rt2860commonmd5.c_PasswordHash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/common/extr_....rt2860commonmd5.c_PasswordHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA_DIGEST_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PasswordHash(i8* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = icmp sgt i32 %11, 63
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sgt i32 %14, 32
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %4
  store i32 0, i32* %5, align 4
  br label %30

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @F(i8* %18, i8* %19, i32 %20, i32 4096, i32 1, i8* %21)
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = load i64, i64* @SHA_DIGEST_LEN, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = call i32 @F(i8* %23, i8* %24, i32 %25, i32 4096, i32 2, i8* %28)
  store i32 1, i32* %5, align 4
  br label %30

30:                                               ; preds = %17, %16
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @F(i8*, i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

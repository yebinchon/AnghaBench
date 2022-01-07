; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/codec/extr_ccopy.c_br_ccopy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/codec/extr_ccopy.c_br_ccopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_ccopy(i8 zeroext %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store i8 %0, i8* %5, align 1
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %10, align 8
  br label %15

15:                                               ; preds = %19, %4
  %16 = load i64, i64* %8, align 8
  %17 = add i64 %16, -1
  store i64 %17, i64* %8, align 8
  %18 = icmp ugt i64 %16, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load i8*, i8** %10, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %10, align 8
  %22 = load i8, i8* %20, align 1
  store i8 %22, i8* %11, align 1
  %23 = load i8*, i8** %9, align 8
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %12, align 1
  %25 = load i8, i8* %5, align 1
  %26 = load i8, i8* %11, align 1
  %27 = load i8, i8* %12, align 1
  %28 = call zeroext i8 @MUX(i8 zeroext %25, i8 zeroext %26, i8 zeroext %27)
  %29 = load i8*, i8** %9, align 8
  store i8 %28, i8* %29, align 1
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %9, align 8
  br label %15

32:                                               ; preds = %15
  ret void
}

declare dso_local zeroext i8 @MUX(i8 zeroext, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

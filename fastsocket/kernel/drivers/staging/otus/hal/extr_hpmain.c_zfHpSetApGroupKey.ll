; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpSetApGroupKey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpSetApGroupKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZM_USER_KEY_DEFAULT = common dso_local global i32 0, align 4
@ZM_TKIP = common dso_local global i64 0, align 8
@ZM_CENC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfHpSetApGroupKey(i32* %0, i32* %1, i64 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* @ZM_USER_KEY_DEFAULT, align 4
  %15 = sub nsw i32 %14, 1
  %16 = load i32, i32* %12, align 4
  %17 = sub nsw i32 %15, %16
  %18 = load i64, i64* %9, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @zfHpSetKey(i32* %13, i32 %17, i32 0, i64 %18, i32* %19, i32* %20)
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @ZM_TKIP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %6
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @ZM_USER_KEY_DEFAULT, align 4
  %28 = sub nsw i32 %27, 1
  %29 = load i32, i32* %12, align 4
  %30 = sub nsw i32 %28, %29
  %31 = load i64, i64* %9, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @zfHpSetKey(i32* %26, i32 %30, i32 1, i64 %31, i32* %32, i32* %33)
  br label %35

35:                                               ; preds = %25, %6
  ret i32 0
}

declare dso_local i32 @zfHpSetKey(i32*, i32, i32, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

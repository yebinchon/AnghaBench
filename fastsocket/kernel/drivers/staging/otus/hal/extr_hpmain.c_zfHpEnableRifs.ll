; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpEnableRifs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpEnableRifs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfHpEnableRifs(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = call i32 @reg_write(i32 41864, i32 201326592)
  %10 = call i32 @reg_write(i32 39404, i32 214437034)
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %26

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 @reg_write(i32 39192, i32 40)
  br label %25

18:                                               ; preds = %13
  %19 = call i32 @reg_write(i32 39192, i32 20)
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @reg_write(i32 39008, i32 318752)
  br label %24

24:                                               ; preds = %22, %18
  br label %25

25:                                               ; preds = %24, %16
  br label %26

26:                                               ; preds = %25, %4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = call i32 @reg_write(i32 38992, i32 -320293660)
  %31 = call i32 @reg_write(i32 39004, i32 825908574)
  br label %35

32:                                               ; preds = %26
  %33 = call i32 @reg_write(i32 38992, i32 -303516444)
  %34 = call i32 @reg_write(i32 39004, i32 825843806)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @zfFlushDelayWrite(i32* %36)
  ret void
}

declare dso_local i32 @reg_write(i32, i32) #1

declare dso_local i32 @zfFlushDelayWrite(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

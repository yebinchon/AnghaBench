; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpSetRifs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpSetRifs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfHpSetRifs(i32* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @zfDelayWriteInternalReg(i32* %9, i32 1860488, i32 201326592)
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @zfDelayWriteInternalReg(i32* %11, i32 1858028, i32 214437034)
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %4
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @zfDelayWriteInternalReg(i32* %19, i32 1857816, i32 40)
  br label %24

21:                                               ; preds = %15
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @zfDelayWriteInternalReg(i32* %22, i32 1857816, i32 20)
  br label %24

24:                                               ; preds = %21, %18
  br label %25

25:                                               ; preds = %24, %4
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @zfDelayWriteInternalReg(i32* %29, i32 1857616, i32 -334973726)
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @zfDelayWriteInternalReg(i32* %31, i32 1857628, i32 825908574)
  br label %38

33:                                               ; preds = %25
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @zfDelayWriteInternalReg(i32* %34, i32 1857616, i32 -303516448)
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @zfDelayWriteInternalReg(i32* %36, i32 1857628, i32 825843806)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @zfFlushDelayWrite(i32* %39)
  ret void
}

declare dso_local i32 @zfDelayWriteInternalReg(i32*, i32, i32) #1

declare dso_local i32 @zfFlushDelayWrite(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

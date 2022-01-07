; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_sgalaxy.c_snd_sgalaxy_sbdsp_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_sgalaxy.c_snd_sgalaxy_sbdsp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RESET = common dso_local global i32 0, align 4
@DATA_AVAIL = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"sb_reset: failed at 0x%lx!!!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @snd_sgalaxy_sbdsp_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sgalaxy_sbdsp_reset(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i32, i32* @RESET, align 4
  %7 = call i32 @SBP1(i64 %5, i32 %6)
  %8 = call i32 @outb(i32 1, i32 %7)
  %9 = call i32 @udelay(i32 10)
  %10 = load i64, i64* %3, align 8
  %11 = load i32, i32* @RESET, align 4
  %12 = call i32 @SBP1(i64 %10, i32 %11)
  %13 = call i32 @outb(i32 0, i32 %12)
  %14 = call i32 @udelay(i32 30)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %29, %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 1000
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i64, i64* %3, align 8
  %20 = load i32, i32* @DATA_AVAIL, align 4
  %21 = call i32 @SBP1(i64 %19, i32 %20)
  %22 = call i32 @inb(i32 %21)
  %23 = and i32 %22, 128
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %18, %15
  %27 = phi i1 [ false, %15 ], [ %25, %18 ]
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %15

32:                                               ; preds = %26
  %33 = load i64, i64* %3, align 8
  %34 = load i32, i32* @READ, align 4
  %35 = call i32 @SBP1(i64 %33, i32 %34)
  %36 = call i32 @inb(i32 %35)
  %37 = icmp ne i32 %36, 170
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @snd_printd(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %38
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @SBP1(i64, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @snd_printd(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

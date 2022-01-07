; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_set_timer_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_set_timer_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@timer_mode = common dso_local global i32 0, align 4
@TMR_MODE_CLS = common dso_local global i32 0, align 4
@TMR_MODE_SMPTE = common dso_local global i32 0, align 4
@TMR_INTERNAL = common dso_local global i32 0, align 4
@TMR_MODE_MIDI = common dso_local global i32 0, align 4
@TMR_MODE_FSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_timer_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_timer_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @timer_mode, align 4
  %4 = load i32, i32* @TMR_MODE_CLS, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @mpu_cmd(i32 %8, i32 60, i32 0)
  br label %19

10:                                               ; preds = %1
  %11 = load i32, i32* @timer_mode, align 4
  %12 = load i32, i32* @TMR_MODE_SMPTE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @mpu_cmd(i32 %16, i32 61, i32 0)
  br label %18

18:                                               ; preds = %15, %10
  br label %19

19:                                               ; preds = %18, %7
  %20 = load i32, i32* @timer_mode, align 4
  %21 = load i32, i32* @TMR_INTERNAL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @mpu_cmd(i32 %25, i32 128, i32 0)
  br label %49

27:                                               ; preds = %19
  %28 = load i32, i32* @timer_mode, align 4
  %29 = load i32, i32* @TMR_MODE_MIDI, align 4
  %30 = load i32, i32* @TMR_MODE_CLS, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @mpu_cmd(i32 %35, i32 130, i32 0)
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @mpu_cmd(i32 %37, i32 145, i32 0)
  br label %48

39:                                               ; preds = %27
  %40 = load i32, i32* @timer_mode, align 4
  %41 = load i32, i32* @TMR_MODE_FSK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @mpu_cmd(i32 %45, i32 129, i32 0)
  br label %47

47:                                               ; preds = %44, %39
  br label %48

48:                                               ; preds = %47, %34
  br label %49

49:                                               ; preds = %48, %24
  ret void
}

declare dso_local i32 @mpu_cmd(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

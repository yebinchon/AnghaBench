; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_uer.c_vx_read_uer_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_uer.c_vx_read_uer_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }

@CSUER = common dso_local global i32 0, align 4
@VX_SUER_CLOCK_PRESENT_MASK = common dso_local global i32 0, align 4
@VX_SUER_FREQ_MASK = common dso_local global i32 0, align 4
@VX_SUER_DATA_PRESENT_MASK = common dso_local global i32 0, align 4
@VX_UER_MODE_PROFESSIONAL = common dso_local global i32 0, align 4
@VX_UER_MODE_CONSUMER = common dso_local global i32 0, align 4
@VX_UER_MODE_NOT_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vx_core*, i32*)* @vx_read_uer_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_read_uer_status(%struct.vx_core* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vx_core*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %9 = call i64 @vx_is_pcmcia(%struct.vx_core* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %13 = load i32, i32* @CSUER, align 4
  %14 = call i32 @vx_inb(%struct.vx_core* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %17 = load i32, i32* @CSUER, align 4
  %18 = call i32 @vx_inl(%struct.vx_core* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %15, %11
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %58

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @VX_SUER_CLOCK_PRESENT_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @VX_SUER_FREQ_MASK, align 4
  %32 = and i32 %30, %31
  switch i32 %32, label %36 [
    i32 130, label %33
    i32 129, label %34
    i32 128, label %35
  ]

33:                                               ; preds = %29
  store i32 32000, i32* %7, align 4
  br label %36

34:                                               ; preds = %29
  store i32 44100, i32* %7, align 4
  br label %36

35:                                               ; preds = %29
  store i32 48000, i32* %7, align 4
  br label %36

36:                                               ; preds = %29, %35, %34, %33
  br label %37

37:                                               ; preds = %36, %24
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @VX_SUER_DATA_PRESENT_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %44 = call i64 @vx_read_one_cbit(%struct.vx_core* %43, i32 0)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @VX_UER_MODE_PROFESSIONAL, align 4
  br label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @VX_UER_MODE_CONSUMER, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = load i32*, i32** %5, align 8
  store i32 %51, i32* %52, align 4
  br label %56

53:                                               ; preds = %37
  %54 = load i32, i32* @VX_UER_MODE_NOT_PRESENT, align 4
  %55 = load i32*, i32** %5, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %22
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @vx_is_pcmcia(%struct.vx_core*) #1

declare dso_local i32 @vx_inb(%struct.vx_core*, i32) #1

declare dso_local i32 @vx_inl(%struct.vx_core*, i32) #1

declare dso_local i64 @vx_read_one_cbit(%struct.vx_core*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

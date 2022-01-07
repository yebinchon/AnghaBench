; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb16_csp.c_snd_sb_qsound_build.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb16_csp.c_snd_sb_qsound_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sb_csp = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_card* }
%struct.snd_card = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_SB_CSP_QSOUND_MAX_RIGHT = common dso_local global i32 0, align 4
@snd_sb_qsound_switch = common dso_local global i32 0, align 4
@snd_sb_qsound_space = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sb_csp*)* @snd_sb_qsound_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sb_qsound_build(%struct.snd_sb_csp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_sb_csp*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_sb_csp* %0, %struct.snd_sb_csp** %3, align 8
  %6 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %7 = icmp ne %struct.snd_sb_csp* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @snd_BUG_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %54

15:                                               ; preds = %1
  %16 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %17 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %16, i32 0, i32 6
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.snd_card*, %struct.snd_card** %19, align 8
  store %struct.snd_card* %20, %struct.snd_card** %4, align 8
  %21 = load i32, i32* @SNDRV_SB_CSP_QSOUND_MAX_RIGHT, align 4
  %22 = sdiv i32 %21, 2
  %23 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %24 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %26 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 8
  %27 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %28 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %27, i32 0, i32 5
  store i64 0, i64* %28, align 8
  %29 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %30 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %29, i32 0, i32 4
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %33 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %34 = call i32 @snd_ctl_new1(i32* @snd_sb_qsound_switch, %struct.snd_sb_csp* %33)
  %35 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %36 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = call i32 @snd_ctl_add(%struct.snd_card* %32, i32 %34)
  store i32 %37, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %15
  br label %50

40:                                               ; preds = %15
  %41 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %42 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %43 = call i32 @snd_ctl_new1(i32* @snd_sb_qsound_space, %struct.snd_sb_csp* %42)
  %44 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %45 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = call i32 @snd_ctl_add(%struct.snd_card* %41, i32 %43)
  store i32 %46, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %50

49:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %54

50:                                               ; preds = %48, %39
  %51 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %52 = call i32 @snd_sb_qsound_destroy(%struct.snd_sb_csp* %51)
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %49, %12
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.snd_sb_csp*) #1

declare dso_local i32 @snd_sb_qsound_destroy(%struct.snd_sb_csp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

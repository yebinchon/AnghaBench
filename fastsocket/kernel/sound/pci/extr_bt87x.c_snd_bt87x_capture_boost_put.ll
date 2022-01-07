; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_bt87x.c_snd_bt87x_capture_boost_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_bt87x.c_snd_bt87x_capture_boost_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_bt87x = type { i32, i32 }

@CTL_A_G2X = common dso_local global i32 0, align 4
@REG_GPIO_DMA_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_bt87x_capture_boost_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_bt87x_capture_boost_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_bt87x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = call %struct.snd_bt87x* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.snd_bt87x* %9, %struct.snd_bt87x** %5, align 8
  %10 = load %struct.snd_bt87x*, %struct.snd_bt87x** %5, align 8
  %11 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load %struct.snd_bt87x*, %struct.snd_bt87x** %5, align 8
  %14 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.snd_bt87x*, %struct.snd_bt87x** %5, align 8
  %17 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CTL_A_G2X, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %23 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @CTL_A_G2X, align 4
  br label %33

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32 [ %31, %30 ], [ 0, %32 ]
  %35 = or i32 %21, %34
  %36 = load %struct.snd_bt87x*, %struct.snd_bt87x** %5, align 8
  %37 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.snd_bt87x*, %struct.snd_bt87x** %5, align 8
  %39 = load i32, i32* @REG_GPIO_DMA_CTL, align 4
  %40 = load %struct.snd_bt87x*, %struct.snd_bt87x** %5, align 8
  %41 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @snd_bt87x_writel(%struct.snd_bt87x* %38, i32 %39, i32 %42)
  %44 = load %struct.snd_bt87x*, %struct.snd_bt87x** %5, align 8
  %45 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %46, %47
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %7, align 4
  %50 = load %struct.snd_bt87x*, %struct.snd_bt87x** %5, align 8
  %51 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %50, i32 0, i32 1
  %52 = call i32 @spin_unlock_irq(i32* %51)
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local %struct.snd_bt87x* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_bt87x_writel(%struct.snd_bt87x*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

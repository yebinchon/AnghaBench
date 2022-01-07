; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_bt87x.c_snd_bt87x_capture_source_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_bt87x.c_snd_bt87x_capture_source_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_bt87x = type { i32, i32 }

@CTL_A_SEL_MASK = common dso_local global i32 0, align 4
@CTL_A_SEL_SHIFT = common dso_local global i32 0, align 4
@REG_GPIO_DMA_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_bt87x_capture_source_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_bt87x_capture_source_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
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
  %19 = load i32, i32* @CTL_A_SEL_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %23 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CTL_A_SEL_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %21, %30
  %32 = load %struct.snd_bt87x*, %struct.snd_bt87x** %5, align 8
  %33 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.snd_bt87x*, %struct.snd_bt87x** %5, align 8
  %35 = load i32, i32* @REG_GPIO_DMA_CTL, align 4
  %36 = load %struct.snd_bt87x*, %struct.snd_bt87x** %5, align 8
  %37 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @snd_bt87x_writel(%struct.snd_bt87x* %34, i32 %35, i32 %38)
  %40 = load %struct.snd_bt87x*, %struct.snd_bt87x** %5, align 8
  %41 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %42, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %7, align 4
  %46 = load %struct.snd_bt87x*, %struct.snd_bt87x** %5, align 8
  %47 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %46, i32 0, i32 1
  %48 = call i32 @spin_unlock_irq(i32* %47)
  %49 = load i32, i32* %7, align 4
  ret i32 %49
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

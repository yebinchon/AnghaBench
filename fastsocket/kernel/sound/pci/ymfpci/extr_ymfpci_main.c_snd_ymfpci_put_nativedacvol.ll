; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_put_nativedacvol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_put_nativedacvol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ymfpci = type { i32 }

@YDSXGR_NATIVEDACOUTVOL = common dso_local global i32 0, align 4
@YDSXGR_BUF441OUTVOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ymfpci_put_nativedacvol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ymfpci_put_nativedacvol(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ymfpci*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = call %struct.snd_ymfpci* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_ymfpci* %12, %struct.snd_ymfpci** %5, align 8
  %13 = load i32, i32* @YDSXGR_NATIVEDACOUTVOL, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @YDSXGR_BUF441OUTVOL, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %16 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 16383
  store i32 %22, i32* %9, align 4
  %23 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %24 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 16383
  %31 = shl i32 %30, 16
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %9, align 4
  %34 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %35 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %34, i32 0, i32 0
  %36 = call i32 @spin_lock_irq(i32* %35)
  %37 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @snd_ymfpci_readl(%struct.snd_ymfpci* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %40, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %8, align 4
  %44 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %44, i32 %45, i32 %46)
  %48 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %48, i32 %49, i32 %50)
  %52 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %53 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock_irq(i32* %53)
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

declare dso_local %struct.snd_ymfpci* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_ymfpci_readl(%struct.snd_ymfpci*, i32) #1

declare dso_local i32 @snd_ymfpci_writel(%struct.snd_ymfpci*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

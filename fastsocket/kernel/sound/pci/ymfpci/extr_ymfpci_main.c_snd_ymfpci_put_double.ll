; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_put_double.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_put_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ymfpci = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ymfpci_put_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ymfpci_put_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_ymfpci*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %16 = call %struct.snd_ymfpci* @snd_kcontrol_chip(%struct.snd_kcontrol* %15)
  store %struct.snd_ymfpci* %16, %struct.snd_ymfpci** %6, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %18 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 16, i32* %9, align 4
  store i32 16383, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ult i32 %20, 128
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = icmp uge i32 %23, 192
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %85

28:                                               ; preds = %22
  %29 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %30 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %12, align 4
  %38 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %39 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %12, align 4
  %49 = shl i32 %48, %47
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %13, align 4
  %52 = shl i32 %51, %50
  store i32 %52, i32* %13, align 4
  %53 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %54 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %53, i32 0, i32 0
  %55 = call i32 @spin_lock_irq(i32* %54)
  %56 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @snd_ymfpci_readl(%struct.snd_ymfpci* %56, i32 %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %8, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = shl i32 %63, %64
  %66 = or i32 %62, %65
  %67 = xor i32 %66, -1
  %68 = and i32 %59, %67
  %69 = load i32, i32* %12, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %13, align 4
  %72 = or i32 %70, %71
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %73, %74
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %11, align 4
  %77 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %77, i32 %78, i32 %79)
  %81 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %82 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %81, i32 0, i32 0
  %83 = call i32 @spin_unlock_irq(i32* %82)
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %28, %25
  %86 = load i32, i32* %3, align 4
  ret i32 %86
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

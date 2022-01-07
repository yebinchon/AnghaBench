; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cmipci.c__snd_cmipci_uswitch_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cmipci.c__snd_cmipci_uswitch_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.cmipci_switch_args = type { i32, i32, i64, i64, i64 }
%struct.cmipci = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*, %struct.cmipci_switch_args*)* @_snd_cmipci_uswitch_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_snd_cmipci_uswitch_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1, %struct.cmipci_switch_args* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca %struct.snd_ctl_elem_value*, align 8
  %7 = alloca %struct.cmipci_switch_args*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cmipci*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %5, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %6, align 8
  store %struct.cmipci_switch_args* %2, %struct.cmipci_switch_args** %7, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %11 = call %struct.cmipci* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.cmipci* %11, %struct.cmipci** %9, align 8
  %12 = load %struct.cmipci*, %struct.cmipci** %9, align 8
  %13 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_irq(i32* %13)
  %15 = load %struct.cmipci_switch_args*, %struct.cmipci_switch_args** %7, align 8
  %16 = getelementptr inbounds %struct.cmipci_switch_args, %struct.cmipci_switch_args* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = load %struct.cmipci*, %struct.cmipci** %9, align 8
  %21 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %6, align 8
  %26 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 0, i32* %30, align 4
  %31 = load %struct.cmipci*, %struct.cmipci** %9, align 8
  %32 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock_irq(i32* %32)
  store i32 0, i32* %4, align 4
  br label %75

34:                                               ; preds = %19, %3
  %35 = load %struct.cmipci_switch_args*, %struct.cmipci_switch_args** %7, align 8
  %36 = getelementptr inbounds %struct.cmipci_switch_args, %struct.cmipci_switch_args* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.cmipci*, %struct.cmipci** %9, align 8
  %41 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.cmipci_switch_args*, %struct.cmipci_switch_args** %7, align 8
  %44 = getelementptr inbounds %struct.cmipci_switch_args, %struct.cmipci_switch_args* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = call i32 @inb(i64 %46)
  store i32 %47, i32* %8, align 4
  br label %54

48:                                               ; preds = %34
  %49 = load %struct.cmipci*, %struct.cmipci** %9, align 8
  %50 = load %struct.cmipci_switch_args*, %struct.cmipci_switch_args** %7, align 8
  %51 = getelementptr inbounds %struct.cmipci_switch_args, %struct.cmipci_switch_args* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @snd_cmipci_read(%struct.cmipci* %49, i64 %52)
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %48, %39
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.cmipci_switch_args*, %struct.cmipci_switch_args** %7, align 8
  %57 = getelementptr inbounds %struct.cmipci_switch_args, %struct.cmipci_switch_args* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %55, %58
  %60 = load %struct.cmipci_switch_args*, %struct.cmipci_switch_args** %7, align 8
  %61 = getelementptr inbounds %struct.cmipci_switch_args, %struct.cmipci_switch_args* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %59, %62
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 0
  %66 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %6, align 8
  %67 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %65, i32* %71, align 4
  %72 = load %struct.cmipci*, %struct.cmipci** %9, align 8
  %73 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock_irq(i32* %73)
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %54, %24
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.cmipci* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @snd_cmipci_read(%struct.cmipci*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

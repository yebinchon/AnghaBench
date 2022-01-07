; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_ens1370.c_snd_es1373_rear_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_ens1370.c_snd_es1373_rear_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }
%struct.ensoniq = type { i32, i32 }

@ES_1373_REAR_BIT26 = common dso_local global i32 0, align 4
@ES_1373_REAR_BIT27 = common dso_local global i32 0, align 4
@ES_1373_REAR_BIT24 = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_es1373_rear_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1373_rear_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.ensoniq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = call %struct.ensoniq* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.ensoniq* %9, %struct.ensoniq** %5, align 8
  %10 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @ES_1373_REAR_BIT26, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @ES_1373_REAR_BIT27, align 4
  %22 = load i32, i32* @ES_1373_REAR_BIT24, align 4
  %23 = or i32 %21, %22
  br label %24

24:                                               ; preds = %20, %18
  %25 = phi i32 [ %19, %18 ], [ %23, %20 ]
  store i32 %25, i32* %6, align 4
  %26 = load %struct.ensoniq*, %struct.ensoniq** %5, align 8
  %27 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %26, i32 0, i32 1
  %28 = call i32 @spin_lock_irq(i32* %27)
  %29 = load %struct.ensoniq*, %struct.ensoniq** %5, align 8
  %30 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ES_1373_REAR_BIT27, align 4
  %33 = load i32, i32* @ES_1373_REAR_BIT26, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @ES_1373_REAR_BIT24, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %31, %36
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %37, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* @ES_1373_REAR_BIT27, align 4
  %42 = load i32, i32* @ES_1373_REAR_BIT26, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @ES_1373_REAR_BIT24, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load %struct.ensoniq*, %struct.ensoniq** %5, align 8
  %48 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.ensoniq*, %struct.ensoniq** %5, align 8
  %53 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.ensoniq*, %struct.ensoniq** %5, align 8
  %57 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ensoniq*, %struct.ensoniq** %5, align 8
  %60 = load i32, i32* @STATUS, align 4
  %61 = call i32 @ES_REG(%struct.ensoniq* %59, i32 %60)
  %62 = call i32 @outl(i32 %58, i32 %61)
  %63 = load %struct.ensoniq*, %struct.ensoniq** %5, align 8
  %64 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %63, i32 0, i32 1
  %65 = call i32 @spin_unlock_irq(i32* %64)
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local %struct.ensoniq* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @ES_REG(%struct.ensoniq*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

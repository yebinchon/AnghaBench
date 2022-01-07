; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_put_pref_sync_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_put_pref_sync_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.hdsp = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_hdsp_put_pref_sync_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdsp_put_pref_sync_ref(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hdsp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.hdsp* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.hdsp* %11, %struct.hdsp** %6, align 8
  %12 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %13 = call i32 @snd_hdsp_use_is_exclusive(%struct.hdsp* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %53

18:                                               ; preds = %2
  %19 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %20 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %25 [
    i32 131, label %22
    i32 129, label %22
    i32 128, label %23
    i32 130, label %24
  ]

22:                                               ; preds = %18, %18
  store i32 6, i32* %8, align 4
  br label %28

23:                                               ; preds = %18
  store i32 4, i32* %8, align 4
  br label %28

24:                                               ; preds = %18
  store i32 3, i32* %8, align 4
  br label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %53

28:                                               ; preds = %24, %23, %22
  %29 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %30 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = srem i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %39 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %38, i32 0, i32 1
  %40 = call i32 @spin_lock_irq(i32* %39)
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %43 = call i32 @hdsp_pref_sync_ref(%struct.hdsp* %42)
  %44 = icmp ne i32 %41, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %7, align 4
  %46 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @hdsp_set_pref_sync_ref(%struct.hdsp* %46, i32 %47)
  %49 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %50 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %49, i32 0, i32 1
  %51 = call i32 @spin_unlock_irq(i32* %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %28, %25, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.hdsp* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_hdsp_use_is_exclusive(%struct.hdsp*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @hdsp_pref_sync_ref(%struct.hdsp*) #1

declare dso_local i32 @hdsp_set_pref_sync_ref(%struct.hdsp*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

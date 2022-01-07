; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/codecs/extr_tas.c_tas_snd_drc_switch_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/codecs/extr_tas.c_tas_snd_drc_switch_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.tas = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @tas_snd_drc_switch_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas_snd_drc_switch_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.tas*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %8 = call %struct.tas* @snd_kcontrol_chip(%struct.snd_kcontrol* %7)
  store %struct.tas* %8, %struct.tas** %6, align 8
  %9 = load %struct.tas*, %struct.tas** %6, align 8
  %10 = getelementptr inbounds %struct.tas, %struct.tas* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.tas*, %struct.tas** %6, align 8
  %13 = getelementptr inbounds %struct.tas, %struct.tas* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %16 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %14, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.tas*, %struct.tas** %6, align 8
  %25 = getelementptr inbounds %struct.tas, %struct.tas* %24, i32 0, i32 1
  %26 = call i32 @mutex_unlock(i32* %25)
  store i32 0, i32* %3, align 4
  br label %52

27:                                               ; preds = %2
  %28 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %29 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = load %struct.tas*, %struct.tas** %6, align 8
  %40 = getelementptr inbounds %struct.tas, %struct.tas* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.tas*, %struct.tas** %6, align 8
  %42 = getelementptr inbounds %struct.tas, %struct.tas* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %27
  %46 = load %struct.tas*, %struct.tas** %6, align 8
  %47 = call i32 @tas3004_set_drc(%struct.tas* %46)
  br label %48

48:                                               ; preds = %45, %27
  %49 = load %struct.tas*, %struct.tas** %6, align 8
  %50 = getelementptr inbounds %struct.tas, %struct.tas* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  store i32 1, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %23
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.tas* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tas3004_set_drc(%struct.tas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_mixer.c_pcxhr_clock_rate_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_mixer.c_pcxhr_clock_rate_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.pcxhr_mgr = type { i32, i32, i32 }

@PCXHR_CLOCK_TYPE_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @pcxhr_clock_rate_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_clock_rate_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.pcxhr_mgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.pcxhr_mgr* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.pcxhr_mgr* %10, %struct.pcxhr_mgr** %5, align 8
  %11 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %12 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %11, i32 0, i32 2
  %13 = call i32 @mutex_lock(i32* %12)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %47, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %17 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 3, %18
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PCXHR_CLOCK_TYPE_INTERNAL, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %27 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  br label %37

29:                                               ; preds = %21
  %30 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @pcxhr_get_external_clock(%struct.pcxhr_mgr* %30, i32 %31, i32* %8)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %50

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %25
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %40 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %38, i32* %46, align 4
  br label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %14

50:                                               ; preds = %35, %14
  %51 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %52 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %51, i32 0, i32 2
  %53 = call i32 @mutex_unlock(i32* %52)
  ret i32 0
}

declare dso_local %struct.pcxhr_mgr* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pcxhr_get_external_clock(%struct.pcxhr_mgr*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

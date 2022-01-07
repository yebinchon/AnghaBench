; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_gpr_ctl_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_gpr_ctl_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_info = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.snd_emu10k1_fx8010_ctl = type { i64, i32, i32 }

@SNDRV_CTL_ELEM_TYPE_BOOLEAN = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_TYPE_INTEGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @snd_emu10k1_gpr_ctl_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_gpr_ctl_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  %5 = alloca %struct.snd_emu10k1_fx8010_ctl*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %4, align 8
  %6 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %7 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.snd_emu10k1_fx8010_ctl*
  store %struct.snd_emu10k1_fx8010_ctl* %9, %struct.snd_emu10k1_fx8010_ctl** %5, align 8
  %10 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %5, align 8
  %11 = getelementptr inbounds %struct.snd_emu10k1_fx8010_ctl, %struct.snd_emu10k1_fx8010_ctl* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %5, align 8
  %16 = getelementptr inbounds %struct.snd_emu10k1_fx8010_ctl, %struct.snd_emu10k1_fx8010_ctl* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_BOOLEAN, align 4
  %21 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %22 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  br label %27

23:                                               ; preds = %14, %2
  %24 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_INTEGER, align 4
  %25 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %26 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %5, align 8
  %29 = getelementptr inbounds %struct.snd_emu10k1_fx8010_ctl, %struct.snd_emu10k1_fx8010_ctl* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %32 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %5, align 8
  %34 = getelementptr inbounds %struct.snd_emu10k1_fx8010_ctl, %struct.snd_emu10k1_fx8010_ctl* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %37 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i64 %35, i64* %39, align 8
  %40 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %5, align 8
  %41 = getelementptr inbounds %struct.snd_emu10k1_fx8010_ctl, %struct.snd_emu10k1_fx8010_ctl* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %44 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i32 %42, i32* %46, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

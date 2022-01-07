; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_ctl_private_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_ctl_private_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { %struct.snd_emu10k1_fx8010_ctl* }
%struct.snd_emu10k1_fx8010_ctl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_kcontrol*)* @snd_emu10k1_ctl_private_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1_ctl_private_free(%struct.snd_kcontrol* %0) #0 {
  %2 = alloca %struct.snd_kcontrol*, align 8
  %3 = alloca %struct.snd_emu10k1_fx8010_ctl*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %2, align 8
  %4 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %2, align 8
  %5 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.snd_emu10k1_fx8010_ctl*
  store %struct.snd_emu10k1_fx8010_ctl* %7, %struct.snd_emu10k1_fx8010_ctl** %3, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %2, align 8
  %9 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %3, align 8
  %11 = getelementptr inbounds %struct.snd_emu10k1_fx8010_ctl, %struct.snd_emu10k1_fx8010_ctl* %10, i32 0, i32 0
  %12 = call i32 @list_del(i32* %11)
  %13 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %3, align 8
  %14 = call i32 @kfree(%struct.snd_emu10k1_fx8010_ctl* %13)
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %2, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %17, align 8
  %19 = icmp ne %struct.snd_emu10k1_fx8010_ctl* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %2, align 8
  %22 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %23, align 8
  %25 = call i32 @kfree(%struct.snd_emu10k1_fx8010_ctl* %24)
  br label %26

26:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.snd_emu10k1_fx8010_ctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

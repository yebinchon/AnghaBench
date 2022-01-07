; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_vmaster.c_slave_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_vmaster.c_slave_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.link_slave = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_kcontrol*)* @slave_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slave_free(%struct.snd_kcontrol* %0) #0 {
  %2 = alloca %struct.snd_kcontrol*, align 8
  %3 = alloca %struct.link_slave*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %2, align 8
  %4 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %2, align 8
  %5 = call %struct.link_slave* @snd_kcontrol_chip(%struct.snd_kcontrol* %4)
  store %struct.link_slave* %5, %struct.link_slave** %3, align 8
  %6 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %7 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %8, align 8
  %10 = icmp ne i32 (%struct.TYPE_2__*)* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %13 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %14, align 8
  %16 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %17 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %16, i32 0, i32 2
  %18 = call i32 %15(%struct.TYPE_2__* %17)
  br label %19

19:                                               ; preds = %11, %1
  %20 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %21 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %26 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %25, i32 0, i32 0
  %27 = call i32 @list_del(i32* %26)
  br label %28

28:                                               ; preds = %24, %19
  %29 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %30 = call i32 @kfree(%struct.link_slave* %29)
  ret void
}

declare dso_local %struct.link_slave* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.link_slave*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

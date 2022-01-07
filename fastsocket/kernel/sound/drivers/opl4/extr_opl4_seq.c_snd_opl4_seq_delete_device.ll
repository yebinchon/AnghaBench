; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl4/extr_opl4_seq.c_snd_opl4_seq_delete_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl4/extr_opl4_seq.c_snd_opl4_seq_delete_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_device = type { i32 }
%struct.snd_opl4 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_device*)* @snd_opl4_seq_delete_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opl4_seq_delete_device(%struct.snd_seq_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_seq_device*, align 8
  %4 = alloca %struct.snd_opl4*, align 8
  store %struct.snd_seq_device* %0, %struct.snd_seq_device** %3, align 8
  %5 = load %struct.snd_seq_device*, %struct.snd_seq_device** %3, align 8
  %6 = call i64 @SNDRV_SEQ_DEVICE_ARGPTR(%struct.snd_seq_device* %5)
  %7 = inttoptr i64 %6 to %struct.snd_opl4**
  %8 = load %struct.snd_opl4*, %struct.snd_opl4** %7, align 8
  store %struct.snd_opl4* %8, %struct.snd_opl4** %4, align 8
  %9 = load %struct.snd_opl4*, %struct.snd_opl4** %4, align 8
  %10 = icmp ne %struct.snd_opl4* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %27

14:                                               ; preds = %1
  %15 = load %struct.snd_opl4*, %struct.snd_opl4** %4, align 8
  %16 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.snd_opl4*, %struct.snd_opl4** %4, align 8
  %21 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @snd_seq_delete_kernel_client(i32 %22)
  %24 = load %struct.snd_opl4*, %struct.snd_opl4** %4, align 8
  %25 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %24, i32 0, i32 0
  store i32 -1, i32* %25, align 4
  br label %26

26:                                               ; preds = %19, %14
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @SNDRV_SEQ_DEVICE_ARGPTR(%struct.snd_seq_device*) #1

declare dso_local i32 @snd_seq_delete_kernel_client(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_device.c_snd_seq_device_dev_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_device.c_snd_seq_device_dev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_device = type { %struct.snd_seq_device* }
%struct.snd_seq_device = type { i32 }
%struct.ops_list = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@DRIVER_LOADED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_device*)* @snd_seq_device_dev_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_seq_device_dev_register(%struct.snd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_device*, align 8
  %4 = alloca %struct.snd_seq_device*, align 8
  %5 = alloca %struct.ops_list*, align 8
  store %struct.snd_device* %0, %struct.snd_device** %3, align 8
  %6 = load %struct.snd_device*, %struct.snd_device** %3, align 8
  %7 = getelementptr inbounds %struct.snd_device, %struct.snd_device* %6, i32 0, i32 0
  %8 = load %struct.snd_seq_device*, %struct.snd_seq_device** %7, align 8
  store %struct.snd_seq_device* %8, %struct.snd_seq_device** %4, align 8
  %9 = load %struct.snd_seq_device*, %struct.snd_seq_device** %4, align 8
  %10 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ops_list* @find_driver(i32 %11, i32 0)
  store %struct.ops_list* %12, %struct.ops_list** %5, align 8
  %13 = load %struct.ops_list*, %struct.ops_list** %5, align 8
  %14 = icmp eq %struct.ops_list* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %32

18:                                               ; preds = %1
  %19 = load %struct.ops_list*, %struct.ops_list** %5, align 8
  %20 = getelementptr inbounds %struct.ops_list, %struct.ops_list* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DRIVER_LOADED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.snd_seq_device*, %struct.snd_seq_device** %4, align 8
  %27 = load %struct.ops_list*, %struct.ops_list** %5, align 8
  %28 = call i32 @init_device(%struct.snd_seq_device* %26, %struct.ops_list* %27)
  br label %29

29:                                               ; preds = %25, %18
  %30 = load %struct.ops_list*, %struct.ops_list** %5, align 8
  %31 = call i32 @unlock_driver(%struct.ops_list* %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %15
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.ops_list* @find_driver(i32, i32) #1

declare dso_local i32 @init_device(%struct.snd_seq_device*, %struct.ops_list*) #1

declare dso_local i32 @unlock_driver(%struct.ops_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

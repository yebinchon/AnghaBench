; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_seq.c_snd_opl3_seq_new_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_seq.c_snd_opl3_seq_new_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_device = type { i32 }
%struct.snd_opl3 = type { i32, i32, i64, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@OPL3_HW_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"OPL%i FM synth\00", align 1
@snd_opl3_timer_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_device*)* @snd_opl3_seq_new_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opl3_seq_new_device(%struct.snd_seq_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_seq_device*, align 8
  %4 = alloca %struct.snd_opl3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  store %struct.snd_seq_device* %0, %struct.snd_seq_device** %3, align 8
  %9 = load %struct.snd_seq_device*, %struct.snd_seq_device** %3, align 8
  %10 = call i64 @SNDRV_SEQ_DEVICE_ARGPTR(%struct.snd_seq_device* %9)
  %11 = inttoptr i64 %10 to %struct.snd_opl3**
  %12 = load %struct.snd_opl3*, %struct.snd_opl3** %11, align 8
  store %struct.snd_opl3* %12, %struct.snd_opl3** %4, align 8
  %13 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %14 = icmp eq %struct.snd_opl3* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %75

18:                                               ; preds = %1
  %19 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %20 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %19, i32 0, i32 7
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %23 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  %24 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %25 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @OPL3_HW_MASK, align 4
  %28 = and i32 %26, %27
  %29 = ashr i32 %28, 8
  store i32 %29, i32* %8, align 4
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %34 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %37 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %40 = call i32 @snd_seq_create_kernel_client(i32 %35, i32 %38, i8* %39)
  %41 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %42 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  store i32 %40, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %18
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %75

47:                                               ; preds = %18
  %48 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %49 = call i32 @snd_opl3_synth_create_port(%struct.snd_opl3* %48)
  store i32 %49, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @snd_seq_delete_kernel_client(i32 %52)
  %54 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %55 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %54, i32 0, i32 0
  store i32 -1, i32* %55, align 8
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %75

57:                                               ; preds = %47
  %58 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %59 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %58, i32 0, i32 4
  %60 = call i32 @init_timer(%struct.TYPE_2__* %59)
  %61 = load i32, i32* @snd_opl3_timer_func, align 4
  %62 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %63 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 8
  %65 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %66 = ptrtoint %struct.snd_opl3* %65 to i64
  %67 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %68 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i64 %66, i64* %69, align 8
  %70 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %71 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %70, i32 0, i32 3
  %72 = call i32 @spin_lock_init(i32* %71)
  %73 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %74 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %57, %51, %45, %15
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i64 @SNDRV_SEQ_DEVICE_ARGPTR(%struct.snd_seq_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @snd_seq_create_kernel_client(i32, i32, i8*) #1

declare dso_local i32 @snd_opl3_synth_create_port(%struct.snd_opl3*) #1

declare dso_local i32 @snd_seq_delete_kernel_client(i32) #1

declare dso_local i32 @init_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

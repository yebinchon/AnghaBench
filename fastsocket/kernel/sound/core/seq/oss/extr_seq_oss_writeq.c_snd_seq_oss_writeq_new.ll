; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/oss/extr_seq_oss_writeq.c_snd_seq_oss_writeq_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/oss/extr_seq_oss_writeq.c_snd_seq_oss_writeq_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_writeq = type { i32, i32, i64, i64, i32, %struct.seq_oss_devinfo* }
%struct.seq_oss_devinfo = type { i32 }
%struct.snd_seq_client_pool = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SNDRV_SEQ_IOCTL_SET_CLIENT_POOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.seq_oss_writeq* @snd_seq_oss_writeq_new(%struct.seq_oss_devinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.seq_oss_writeq*, align 8
  %4 = alloca %struct.seq_oss_devinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.seq_oss_writeq*, align 8
  %7 = alloca %struct.snd_seq_client_pool, align 4
  store %struct.seq_oss_devinfo* %0, %struct.seq_oss_devinfo** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.seq_oss_writeq* @kzalloc(i32 40, i32 %8)
  store %struct.seq_oss_writeq* %9, %struct.seq_oss_writeq** %6, align 8
  %10 = icmp eq %struct.seq_oss_writeq* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.seq_oss_writeq* null, %struct.seq_oss_writeq** %3, align 8
  br label %43

12:                                               ; preds = %2
  %13 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %14 = load %struct.seq_oss_writeq*, %struct.seq_oss_writeq** %6, align 8
  %15 = getelementptr inbounds %struct.seq_oss_writeq, %struct.seq_oss_writeq* %14, i32 0, i32 5
  store %struct.seq_oss_devinfo* %13, %struct.seq_oss_devinfo** %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.seq_oss_writeq*, %struct.seq_oss_writeq** %6, align 8
  %18 = getelementptr inbounds %struct.seq_oss_writeq, %struct.seq_oss_writeq* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.seq_oss_writeq*, %struct.seq_oss_writeq** %6, align 8
  %20 = getelementptr inbounds %struct.seq_oss_writeq, %struct.seq_oss_writeq* %19, i32 0, i32 4
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.seq_oss_writeq*, %struct.seq_oss_writeq** %6, align 8
  %23 = getelementptr inbounds %struct.seq_oss_writeq, %struct.seq_oss_writeq* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.seq_oss_writeq*, %struct.seq_oss_writeq** %6, align 8
  %25 = getelementptr inbounds %struct.seq_oss_writeq, %struct.seq_oss_writeq* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.seq_oss_writeq*, %struct.seq_oss_writeq** %6, align 8
  %27 = getelementptr inbounds %struct.seq_oss_writeq, %struct.seq_oss_writeq* %26, i32 0, i32 1
  %28 = call i32 @init_waitqueue_head(i32* %27)
  %29 = call i32 @memset(%struct.snd_seq_client_pool* %7, i32 0, i32 12)
  %30 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %31 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %7, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %7, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sdiv i32 %36, 2
  %38 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %7, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %40 = load i32, i32* @SNDRV_SEQ_IOCTL_SET_CLIENT_POOL, align 4
  %41 = call i32 @snd_seq_oss_control(%struct.seq_oss_devinfo* %39, i32 %40, %struct.snd_seq_client_pool* %7)
  %42 = load %struct.seq_oss_writeq*, %struct.seq_oss_writeq** %6, align 8
  store %struct.seq_oss_writeq* %42, %struct.seq_oss_writeq** %3, align 8
  br label %43

43:                                               ; preds = %12, %11
  %44 = load %struct.seq_oss_writeq*, %struct.seq_oss_writeq** %3, align 8
  ret %struct.seq_oss_writeq* %44
}

declare dso_local %struct.seq_oss_writeq* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @memset(%struct.snd_seq_client_pool*, i32, i32) #1

declare dso_local i32 @snd_seq_oss_control(%struct.seq_oss_devinfo*, i32, %struct.snd_seq_client_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_clientmgr.c_snd_seq_kernel_client_dispatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_clientmgr.c_snd_seq_kernel_client_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_event = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.snd_seq_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_SEQ_QUEUE_DIRECT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_kernel_client_dispatch(i32 %0, %struct.snd_seq_event* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_seq_event*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_seq_client*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.snd_seq_event* %1, %struct.snd_seq_event** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %13 = icmp ne %struct.snd_seq_event* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @snd_BUG_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %61

21:                                               ; preds = %4
  %22 = load i32, i32* @SNDRV_SEQ_QUEUE_DIRECT, align 4
  %23 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %24 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %27 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %30 = call i64 @check_event_type_and_length(%struct.snd_seq_event* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %61

35:                                               ; preds = %21
  %36 = load i32, i32* %6, align 4
  %37 = call %struct.snd_seq_client* @snd_seq_client_use_ptr(i32 %36)
  store %struct.snd_seq_client* %37, %struct.snd_seq_client** %10, align 8
  %38 = load %struct.snd_seq_client*, %struct.snd_seq_client** %10, align 8
  %39 = icmp eq %struct.snd_seq_client* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %61

43:                                               ; preds = %35
  %44 = load %struct.snd_seq_client*, %struct.snd_seq_client** %10, align 8
  %45 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @EPERM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %11, align 4
  br label %57

51:                                               ; preds = %43
  %52 = load %struct.snd_seq_client*, %struct.snd_seq_client** %10, align 8
  %53 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @snd_seq_deliver_event(%struct.snd_seq_client* %52, %struct.snd_seq_event* %53, i32 %54, i32 %55)
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %51, %48
  %58 = load %struct.snd_seq_client*, %struct.snd_seq_client** %10, align 8
  %59 = call i32 @snd_seq_client_unlock(%struct.snd_seq_client* %58)
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %40, %32, %18
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i64 @check_event_type_and_length(%struct.snd_seq_event*) #1

declare dso_local %struct.snd_seq_client* @snd_seq_client_use_ptr(i32) #1

declare dso_local i32 @snd_seq_deliver_event(%struct.snd_seq_client*, %struct.snd_seq_event*, i32, i32) #1

declare dso_local i32 @snd_seq_client_unlock(%struct.snd_seq_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

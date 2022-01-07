; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_clientmgr.c_kernel_client_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_clientmgr.c_kernel_client_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_event = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }
%struct.snd_seq_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_NONE = common dso_local global i64 0, align 8
@SNDRV_SEQ_EVENT_KERNEL_ERROR = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.snd_seq_event*, %struct.file*, i32, i32, i32)* @kernel_client_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kernel_client_enqueue(i32 %0, %struct.snd_seq_event* %1, %struct.file* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_seq_event*, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.snd_seq_client*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.snd_seq_event* %1, %struct.snd_seq_event** %9, align 8
  store %struct.file* %2, %struct.file** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.snd_seq_event*, %struct.snd_seq_event** %9, align 8
  %17 = icmp ne %struct.snd_seq_event* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @snd_BUG_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %80

25:                                               ; preds = %6
  %26 = load %struct.snd_seq_event*, %struct.snd_seq_event** %9, align 8
  %27 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SNDRV_SEQ_EVENT_NONE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %80

32:                                               ; preds = %25
  %33 = load %struct.snd_seq_event*, %struct.snd_seq_event** %9, align 8
  %34 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SNDRV_SEQ_EVENT_KERNEL_ERROR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %80

41:                                               ; preds = %32
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.snd_seq_event*, %struct.snd_seq_event** %9, align 8
  %44 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.snd_seq_event*, %struct.snd_seq_event** %9, align 8
  %47 = call i64 @check_event_type_and_length(%struct.snd_seq_event* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %80

52:                                               ; preds = %41
  %53 = load i32, i32* %8, align 4
  %54 = call %struct.snd_seq_client* @snd_seq_client_use_ptr(i32 %53)
  store %struct.snd_seq_client* %54, %struct.snd_seq_client** %14, align 8
  %55 = load %struct.snd_seq_client*, %struct.snd_seq_client** %14, align 8
  %56 = icmp eq %struct.snd_seq_client* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %80

60:                                               ; preds = %52
  %61 = load %struct.snd_seq_client*, %struct.snd_seq_client** %14, align 8
  %62 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @EPERM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %15, align 4
  br label %76

68:                                               ; preds = %60
  %69 = load %struct.snd_seq_client*, %struct.snd_seq_client** %14, align 8
  %70 = load %struct.snd_seq_event*, %struct.snd_seq_event** %9, align 8
  %71 = load %struct.file*, %struct.file** %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @snd_seq_client_enqueue_event(%struct.snd_seq_client* %69, %struct.snd_seq_event* %70, %struct.file* %71, i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %15, align 4
  br label %76

76:                                               ; preds = %68, %65
  %77 = load %struct.snd_seq_client*, %struct.snd_seq_client** %14, align 8
  %78 = call i32 @snd_seq_client_unlock(%struct.snd_seq_client* %77)
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %76, %57, %49, %38, %31, %22
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i64 @check_event_type_and_length(%struct.snd_seq_event*) #1

declare dso_local %struct.snd_seq_client* @snd_seq_client_use_ptr(i32) #1

declare dso_local i32 @snd_seq_client_enqueue_event(%struct.snd_seq_client*, %struct.snd_seq_event*, %struct.file*, i32, i32, i32) #1

declare dso_local i32 @snd_seq_client_unlock(%struct.snd_seq_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

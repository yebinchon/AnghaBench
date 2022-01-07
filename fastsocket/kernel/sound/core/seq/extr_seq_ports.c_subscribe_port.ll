; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_ports.c_subscribe_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_ports.c_subscribe_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_client = type { i64 }
%struct.snd_seq_client_port = type { %struct.TYPE_2__, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_seq_port_subs_info = type { i32, i32 (i32, %struct.snd_seq_port_subscribe*)* }
%struct.snd_seq_port_subscribe = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@USER_CLIENT = common dso_local global i64 0, align 8
@SNDRV_SEQ_EVENT_PORT_SUBSCRIBED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_client*, %struct.snd_seq_client_port*, %struct.snd_seq_port_subs_info*, %struct.snd_seq_port_subscribe*, i32)* @subscribe_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subscribe_port(%struct.snd_seq_client* %0, %struct.snd_seq_client_port* %1, %struct.snd_seq_port_subs_info* %2, %struct.snd_seq_port_subscribe* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_seq_client*, align 8
  %8 = alloca %struct.snd_seq_client_port*, align 8
  %9 = alloca %struct.snd_seq_port_subs_info*, align 8
  %10 = alloca %struct.snd_seq_port_subscribe*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_seq_client* %0, %struct.snd_seq_client** %7, align 8
  store %struct.snd_seq_client_port* %1, %struct.snd_seq_client_port** %8, align 8
  store %struct.snd_seq_port_subs_info* %2, %struct.snd_seq_port_subs_info** %9, align 8
  store %struct.snd_seq_port_subscribe* %3, %struct.snd_seq_port_subscribe** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %8, align 8
  %14 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @try_module_get(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @EFAULT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %87

21:                                               ; preds = %5
  %22 = load %struct.snd_seq_port_subs_info*, %struct.snd_seq_port_subs_info** %9, align 8
  %23 = getelementptr inbounds %struct.snd_seq_port_subs_info, %struct.snd_seq_port_subs_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = load %struct.snd_seq_port_subs_info*, %struct.snd_seq_port_subs_info** %9, align 8
  %27 = getelementptr inbounds %struct.snd_seq_port_subs_info, %struct.snd_seq_port_subs_info* %26, i32 0, i32 1
  %28 = load i32 (i32, %struct.snd_seq_port_subscribe*)*, i32 (i32, %struct.snd_seq_port_subscribe*)** %27, align 8
  %29 = icmp ne i32 (i32, %struct.snd_seq_port_subscribe*)* %28, null
  br i1 %29, label %30, label %61

30:                                               ; preds = %21
  %31 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %8, align 8
  %32 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.snd_seq_port_subs_info*, %struct.snd_seq_port_subs_info** %9, align 8
  %37 = getelementptr inbounds %struct.snd_seq_port_subs_info, %struct.snd_seq_port_subs_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %61

40:                                               ; preds = %35, %30
  %41 = load %struct.snd_seq_port_subs_info*, %struct.snd_seq_port_subs_info** %9, align 8
  %42 = getelementptr inbounds %struct.snd_seq_port_subs_info, %struct.snd_seq_port_subs_info* %41, i32 0, i32 1
  %43 = load i32 (i32, %struct.snd_seq_port_subscribe*)*, i32 (i32, %struct.snd_seq_port_subscribe*)** %42, align 8
  %44 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %8, align 8
  %45 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.snd_seq_port_subscribe*, %struct.snd_seq_port_subscribe** %10, align 8
  %48 = call i32 %43(i32 %46, %struct.snd_seq_port_subscribe* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %40
  %52 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %8, align 8
  %53 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @module_put(i32 %54)
  %56 = load %struct.snd_seq_port_subs_info*, %struct.snd_seq_port_subs_info** %9, align 8
  %57 = getelementptr inbounds %struct.snd_seq_port_subs_info, %struct.snd_seq_port_subs_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %51, %40
  br label %61

61:                                               ; preds = %60, %35, %21
  %62 = load i32, i32* %12, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %61
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %64
  %68 = load %struct.snd_seq_client*, %struct.snd_seq_client** %7, align 8
  %69 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @USER_CLIENT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %67
  %74 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %8, align 8
  %75 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %8, align 8
  %79 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.snd_seq_port_subscribe*, %struct.snd_seq_port_subscribe** %10, align 8
  %83 = load i32, i32* @SNDRV_SEQ_EVENT_PORT_SUBSCRIBED, align 4
  %84 = call i32 @snd_seq_client_notify_subscription(i32 %77, i32 %81, %struct.snd_seq_port_subscribe* %82, i32 %83)
  br label %85

85:                                               ; preds = %73, %67, %64, %61
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %85, %18
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @snd_seq_client_notify_subscription(i32, i32, %struct.snd_seq_port_subscribe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_mq.c_mq_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_mq.c_mq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i64, i32, i32 }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }
%struct.mq_sched = type { %struct.Qdisc** }
%struct.netdev_queue = type { i32 }

@TC_H_ROOT = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pfifo_fast_ops = common dso_local global i32 0, align 4
@TCQ_F_CAN_BYPASS = common dso_local global i32 0, align 4
@TCQ_F_MQROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*)* @mq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mq_init(%struct.Qdisc* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.mq_sched*, align 8
  %8 = alloca %struct.netdev_queue*, align 8
  %9 = alloca %struct.Qdisc*, align 8
  %10 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %12 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %11)
  store %struct.net_device* %12, %struct.net_device** %6, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %14 = call %struct.mq_sched* @qdisc_priv(%struct.Qdisc* %13)
  store %struct.mq_sched* %14, %struct.mq_sched** %7, align 8
  %15 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %16 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TC_H_ROOT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %97

23:                                               ; preds = %2
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = call i32 @netif_is_multiqueue(%struct.net_device* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %97

30:                                               ; preds = %23
  %31 = load %struct.net_device*, %struct.net_device** %6, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.Qdisc** @kcalloc(i32 %33, i32 8, i32 %34)
  %36 = load %struct.mq_sched*, %struct.mq_sched** %7, align 8
  %37 = getelementptr inbounds %struct.mq_sched, %struct.mq_sched* %36, i32 0, i32 0
  store %struct.Qdisc** %35, %struct.Qdisc*** %37, align 8
  %38 = load %struct.mq_sched*, %struct.mq_sched** %7, align 8
  %39 = getelementptr inbounds %struct.mq_sched, %struct.mq_sched* %38, i32 0, i32 0
  %40 = load %struct.Qdisc**, %struct.Qdisc*** %39, align 8
  %41 = icmp eq %struct.Qdisc** %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %97

45:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %83, %45
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.net_device*, %struct.net_device** %6, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ult i32 %47, %50
  br i1 %51, label %52, label %86

52:                                               ; preds = %46
  %53 = load %struct.net_device*, %struct.net_device** %6, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %53, i32 %54)
  store %struct.netdev_queue* %55, %struct.netdev_queue** %8, align 8
  %56 = load %struct.net_device*, %struct.net_device** %6, align 8
  %57 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %58 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %59 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @TC_H_MAJ(i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = add i32 %62, 1
  %64 = call i32 @TC_H_MIN(i32 %63)
  %65 = call i32 @TC_H_MAKE(i32 %61, i32 %64)
  %66 = call %struct.Qdisc* @qdisc_create_dflt(%struct.net_device* %56, %struct.netdev_queue* %57, i32* @pfifo_fast_ops, i32 %65)
  store %struct.Qdisc* %66, %struct.Qdisc** %9, align 8
  %67 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %68 = icmp eq %struct.Qdisc* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %52
  br label %92

70:                                               ; preds = %52
  %71 = load i32, i32* @TCQ_F_CAN_BYPASS, align 4
  %72 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %73 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %77 = load %struct.mq_sched*, %struct.mq_sched** %7, align 8
  %78 = getelementptr inbounds %struct.mq_sched, %struct.mq_sched* %77, i32 0, i32 0
  %79 = load %struct.Qdisc**, %struct.Qdisc*** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %79, i64 %81
  store %struct.Qdisc* %76, %struct.Qdisc** %82, align 8
  br label %83

83:                                               ; preds = %70
  %84 = load i32, i32* %10, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %46

86:                                               ; preds = %46
  %87 = load i32, i32* @TCQ_F_MQROOT, align 4
  %88 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %89 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  store i32 0, i32* %3, align 4
  br label %97

92:                                               ; preds = %69
  %93 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %94 = call i32 @mq_destroy(%struct.Qdisc* %93)
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %92, %86, %42, %27, %20
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local %struct.mq_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @netif_is_multiqueue(%struct.net_device*) #1

declare dso_local %struct.Qdisc** @kcalloc(i32, i32, i32) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local %struct.Qdisc* @qdisc_create_dflt(%struct.net_device*, %struct.netdev_queue*, i32*, i32) #1

declare dso_local i32 @TC_H_MAKE(i32, i32) #1

declare dso_local i32 @TC_H_MAJ(i32) #1

declare dso_local i32 @TC_H_MIN(i32) #1

declare dso_local i32 @mq_destroy(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

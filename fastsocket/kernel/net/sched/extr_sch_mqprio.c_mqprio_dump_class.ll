; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_mqprio.c_mqprio_dump_class.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_mqprio.c_mqprio_dump_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcmsg = type { i32, i64, i32 }
%struct.net_device = type { i32 }
%struct.netdev_qos_info = type { %struct.netdev_tc_txq* }
%struct.netdev_tc_txq = type { i32, i32 }
%struct.netdev_queue = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { %struct.netdev_qos_info }

@TC_H_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.sk_buff*, %struct.tcmsg*)* @mqprio_dump_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqprio_dump_class(%struct.Qdisc* %0, i64 %1, %struct.sk_buff* %2, %struct.tcmsg* %3) #0 {
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.tcmsg*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.netdev_qos_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.netdev_queue*, align 8
  %13 = alloca %struct.netdev_tc_txq, align 4
  %14 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.tcmsg* %3, %struct.tcmsg** %8, align 8
  %15 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %16 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %15)
  store %struct.net_device* %16, %struct.net_device** %9, align 8
  %17 = load %struct.net_device*, %struct.net_device** %9, align 8
  %18 = call %struct.TYPE_4__* @netdev_extended(%struct.net_device* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.netdev_qos_info* %19, %struct.netdev_qos_info** %10, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.net_device*, %struct.net_device** %9, align 8
  %22 = call i64 @netdev_get_num_tc(%struct.net_device* %21)
  %23 = icmp ule i64 %20, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load i32, i32* @TC_H_ROOT, align 4
  %26 = load %struct.tcmsg*, %struct.tcmsg** %8, align 8
  %27 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.tcmsg*, %struct.tcmsg** %8, align 8
  %29 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  br label %92

30:                                               ; preds = %4
  %31 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call %struct.netdev_queue* @mqprio_queue_get(%struct.Qdisc* %31, i64 %32)
  store %struct.netdev_queue* %33, %struct.netdev_queue** %12, align 8
  %34 = load %struct.tcmsg*, %struct.tcmsg** %8, align 8
  %35 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %34, i32 0, i32 2
  store i32 0, i32* %35, align 8
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %81, %30
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.net_device*, %struct.net_device** %9, align 8
  %40 = call i64 @netdev_get_num_tc(%struct.net_device* %39)
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %42, label %84

42:                                               ; preds = %36
  %43 = load %struct.netdev_qos_info*, %struct.netdev_qos_info** %10, align 8
  %44 = getelementptr inbounds %struct.netdev_qos_info, %struct.netdev_qos_info* %43, i32 0, i32 0
  %45 = load %struct.netdev_tc_txq*, %struct.netdev_tc_txq** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.netdev_tc_txq, %struct.netdev_tc_txq* %45, i64 %47
  %49 = bitcast %struct.netdev_tc_txq* %13 to i8*
  %50 = bitcast %struct.netdev_tc_txq* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 8, i1 false)
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.net_device*, %struct.net_device** %9, align 8
  %53 = call i64 @netdev_get_num_tc(%struct.net_device* %52)
  %54 = sub i64 %51, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = getelementptr inbounds %struct.netdev_tc_txq, %struct.netdev_tc_txq* %13, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %56, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %42
  %61 = load i32, i32* %14, align 4
  %62 = getelementptr inbounds %struct.netdev_tc_txq, %struct.netdev_tc_txq* %13, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.netdev_tc_txq, %struct.netdev_tc_txq* %13, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %63, %65
  %67 = icmp sle i32 %61, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %60
  %69 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %70 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @TC_H_MAJ(i32 %71)
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = call i32 @TC_H_MIN(i64 %75)
  %77 = call i32 @TC_H_MAKE(i32 %72, i32 %76)
  %78 = load %struct.tcmsg*, %struct.tcmsg** %8, align 8
  %79 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  br label %84

80:                                               ; preds = %60, %42
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %36

84:                                               ; preds = %68, %36
  %85 = load %struct.netdev_queue*, %struct.netdev_queue** %12, align 8
  %86 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.tcmsg*, %struct.tcmsg** %8, align 8
  %91 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %84, %24
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @TC_H_MIN(i64 %93)
  %95 = load %struct.tcmsg*, %struct.tcmsg** %8, align 8
  %96 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  ret i32 0
}

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local %struct.TYPE_4__* @netdev_extended(%struct.net_device*) #1

declare dso_local i64 @netdev_get_num_tc(%struct.net_device*) #1

declare dso_local %struct.netdev_queue* @mqprio_queue_get(%struct.Qdisc*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @TC_H_MAKE(i32, i32) #1

declare dso_local i32 @TC_H_MAJ(i32) #1

declare dso_local i32 @TC_H_MIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

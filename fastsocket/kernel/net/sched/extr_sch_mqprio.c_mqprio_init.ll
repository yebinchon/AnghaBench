; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_mqprio.c_mqprio_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_mqprio.c_mqprio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i64, i32, i32 }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }
%struct.mqprio_sched = type { %struct.Qdisc** }
%struct.netdev_queue = type { i32 }
%struct.tc_mqprio_qopt = type { i32, i32*, i32*, i32* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@TC_MAX_QUEUE = common dso_local global i64 0, align 8
@TC_QOPT_MAX_QUEUE = common dso_local global i64 0, align 8
@TC_BITMASK = common dso_local global i32 0, align 4
@TC_QOPT_BITMASK = common dso_local global i32 0, align 4
@TC_H_ROOT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pfifo_fast_ops = common dso_local global i32 0, align 4
@TCQ_F_CAN_BYPASS = common dso_local global i32 0, align 4
@TCQ_F_MQROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*)* @mqprio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqprio_init(%struct.Qdisc* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.mqprio_sched*, align 8
  %8 = alloca %struct.netdev_queue*, align 8
  %9 = alloca %struct.Qdisc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tc_mqprio_qopt*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %14 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %13)
  store %struct.net_device* %14, %struct.net_device** %6, align 8
  %15 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %16 = call %struct.mqprio_sched* @qdisc_priv(%struct.Qdisc* %15)
  store %struct.mqprio_sched* %16, %struct.mqprio_sched** %7, align 8
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %11, align 4
  store %struct.tc_mqprio_qopt* null, %struct.tc_mqprio_qopt** %12, align 8
  %19 = load i64, i64* @TC_MAX_QUEUE, align 8
  %20 = load i64, i64* @TC_QOPT_MAX_QUEUE, align 8
  %21 = icmp ne i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUILD_BUG_ON(i32 %22)
  %24 = load i32, i32* @TC_BITMASK, align 4
  %25 = load i32, i32* @TC_QOPT_BITMASK, align 4
  %26 = icmp ne i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUILD_BUG_ON(i32 %27)
  %29 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %30 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TC_H_ROOT, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %186

37:                                               ; preds = %2
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = call i32 @netif_is_multiqueue(%struct.net_device* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %186

44:                                               ; preds = %37
  %45 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %49 = call i32 @nla_len(%struct.nlattr* %48)
  %50 = sext i32 %49 to i64
  %51 = icmp ult i64 %50, 32
  br i1 %51, label %52, label %55

52:                                               ; preds = %47, %44
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %186

55:                                               ; preds = %47
  %56 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %57 = call %struct.tc_mqprio_qopt* @nla_data(%struct.nlattr* %56)
  store %struct.tc_mqprio_qopt* %57, %struct.tc_mqprio_qopt** %12, align 8
  %58 = load %struct.net_device*, %struct.net_device** %6, align 8
  %59 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %12, align 8
  %60 = call i64 @mqprio_parse_opt(%struct.net_device* %58, %struct.tc_mqprio_qopt* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %186

65:                                               ; preds = %55
  %66 = load %struct.net_device*, %struct.net_device** %6, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call %struct.Qdisc** @kcalloc(i32 %68, i32 8, i32 %69)
  %71 = load %struct.mqprio_sched*, %struct.mqprio_sched** %7, align 8
  %72 = getelementptr inbounds %struct.mqprio_sched, %struct.mqprio_sched* %71, i32 0, i32 0
  store %struct.Qdisc** %70, %struct.Qdisc*** %72, align 8
  %73 = load %struct.mqprio_sched*, %struct.mqprio_sched** %7, align 8
  %74 = getelementptr inbounds %struct.mqprio_sched, %struct.mqprio_sched* %73, i32 0, i32 0
  %75 = load %struct.Qdisc**, %struct.Qdisc*** %74, align 8
  %76 = icmp eq %struct.Qdisc** %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %65
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %11, align 4
  br label %182

80:                                               ; preds = %65
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %120, %80
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.net_device*, %struct.net_device** %6, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %123

87:                                               ; preds = %81
  %88 = load %struct.net_device*, %struct.net_device** %6, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %88, i32 %89)
  store %struct.netdev_queue* %90, %struct.netdev_queue** %8, align 8
  %91 = load %struct.net_device*, %struct.net_device** %6, align 8
  %92 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %93 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %94 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @TC_H_MAJ(i32 %95)
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  %99 = call i32 @TC_H_MIN(i32 %98)
  %100 = call i32 @TC_H_MAKE(i32 %96, i32 %99)
  %101 = call %struct.Qdisc* @qdisc_create_dflt(%struct.net_device* %91, %struct.netdev_queue* %92, i32* @pfifo_fast_ops, i32 %100)
  store %struct.Qdisc* %101, %struct.Qdisc** %9, align 8
  %102 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %103 = icmp eq %struct.Qdisc* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %87
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %11, align 4
  br label %182

107:                                              ; preds = %87
  %108 = load i32, i32* @TCQ_F_CAN_BYPASS, align 4
  %109 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %110 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %114 = load %struct.mqprio_sched*, %struct.mqprio_sched** %7, align 8
  %115 = getelementptr inbounds %struct.mqprio_sched, %struct.mqprio_sched* %114, i32 0, i32 0
  %116 = load %struct.Qdisc**, %struct.Qdisc*** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %116, i64 %118
  store %struct.Qdisc* %113, %struct.Qdisc** %119, align 8
  br label %120

120:                                              ; preds = %107
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %81

123:                                              ; preds = %81
  %124 = load %struct.net_device*, %struct.net_device** %6, align 8
  %125 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %12, align 8
  %126 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @netdev_set_num_tc(%struct.net_device* %124, i32 %127)
  store i32 0, i32* %10, align 4
  br label %129

129:                                              ; preds = %153, %123
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %12, align 8
  %132 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %156

135:                                              ; preds = %129
  %136 = load %struct.net_device*, %struct.net_device** %6, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %12, align 8
  %139 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %12, align 8
  %146 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @netdev_set_tc_queue(%struct.net_device* %136, i32 %137, i32 %144, i32 %151)
  br label %153

153:                                              ; preds = %135
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  br label %129

156:                                              ; preds = %129
  store i32 0, i32* %10, align 4
  br label %157

157:                                              ; preds = %173, %156
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* @TC_BITMASK, align 4
  %160 = add nsw i32 %159, 1
  %161 = icmp slt i32 %158, %160
  br i1 %161, label %162, label %176

162:                                              ; preds = %157
  %163 = load %struct.net_device*, %struct.net_device** %6, align 8
  %164 = load i32, i32* %10, align 4
  %165 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %12, align 8
  %166 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @netdev_set_prio_tc_map(%struct.net_device* %163, i32 %164, i32 %171)
  br label %173

173:                                              ; preds = %162
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %10, align 4
  br label %157

176:                                              ; preds = %157
  %177 = load i32, i32* @TCQ_F_MQROOT, align 4
  %178 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %179 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 8
  store i32 0, i32* %3, align 4
  br label %186

182:                                              ; preds = %104, %77
  %183 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %184 = call i32 @mqprio_destroy(%struct.Qdisc* %183)
  %185 = load i32, i32* %11, align 4
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %182, %176, %62, %52, %41, %34
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local %struct.mqprio_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @netif_is_multiqueue(%struct.net_device*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local %struct.tc_mqprio_qopt* @nla_data(%struct.nlattr*) #1

declare dso_local i64 @mqprio_parse_opt(%struct.net_device*, %struct.tc_mqprio_qopt*) #1

declare dso_local %struct.Qdisc** @kcalloc(i32, i32, i32) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local %struct.Qdisc* @qdisc_create_dflt(%struct.net_device*, %struct.netdev_queue*, i32*, i32) #1

declare dso_local i32 @TC_H_MAKE(i32, i32) #1

declare dso_local i32 @TC_H_MAJ(i32) #1

declare dso_local i32 @TC_H_MIN(i32) #1

declare dso_local i32 @netdev_set_num_tc(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_set_tc_queue(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @netdev_set_prio_tc_map(%struct.net_device*, i32, i32) #1

declare dso_local i32 @mqprio_destroy(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

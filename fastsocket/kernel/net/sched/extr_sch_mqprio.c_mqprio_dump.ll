; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_mqprio.c_mqprio_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_mqprio.c_mqprio_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.netdev_qos_info = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.tc_mqprio_qopt = type { i32, i32*, i32*, i32, i32 }
%struct.TYPE_9__ = type { %struct.netdev_qos_info }
%struct.TYPE_8__ = type { %struct.Qdisc* }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff*)* @mqprio_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqprio_dump(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.netdev_qos_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tc_mqprio_qopt, align 8
  %10 = alloca %struct.Qdisc*, align 8
  %11 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %13 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %12)
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.TYPE_9__* @netdev_extended(%struct.net_device* %14)
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store %struct.netdev_qos_info* %16, %struct.netdev_qos_info** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call i8* @skb_tail_pointer(%struct.sk_buff* %17)
  store i8* %18, i8** %8, align 8
  %19 = bitcast %struct.tc_mqprio_qopt* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 32, i1 false)
  %20 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %21 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %24 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %23, i32 0, i32 1
  %25 = call i32 @memset(%struct.TYPE_10__* %24, i32 0, i32 56)
  %26 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %27 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %26, i32 0, i32 0
  %28 = call i32 @memset(%struct.TYPE_10__* %27, i32 0, i32 56)
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %119, %2
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.net_device*, %struct.net_device** %6, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %35, label %122

35:                                               ; preds = %29
  %36 = load %struct.net_device*, %struct.net_device** %6, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call %struct.TYPE_8__* @netdev_get_tx_queue(%struct.net_device* %36, i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.Qdisc*, %struct.Qdisc** %39, align 8
  store %struct.Qdisc* %40, %struct.Qdisc** %10, align 8
  %41 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %42 = call i32 @qdisc_lock(%struct.Qdisc* %41)
  %43 = call i32 @spin_lock_bh(i32 %42)
  %44 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %45 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %49 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, %47
  store i64 %52, i64* %50, align 8
  %53 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %54 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %58 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 6
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, %56
  store i64 %61, i64* %59, align 8
  %62 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %63 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %67 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, %65
  store i64 %70, i64* %68, align 8
  %71 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %72 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %76 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, %74
  store i64 %79, i64* %77, align 8
  %80 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %81 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %85 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, %83
  store i64 %88, i64* %86, align 8
  %89 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %90 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %94 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, %92
  store i64 %97, i64* %95, align 8
  %98 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %99 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %103 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, %101
  store i64 %106, i64* %104, align 8
  %107 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %108 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %112 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, %110
  store i64 %115, i64* %113, align 8
  %116 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %117 = call i32 @qdisc_lock(%struct.Qdisc* %116)
  %118 = call i32 @spin_unlock_bh(i32 %117)
  br label %119

119:                                              ; preds = %35
  %120 = load i32, i32* %11, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %29

122:                                              ; preds = %29
  %123 = load %struct.net_device*, %struct.net_device** %6, align 8
  %124 = call i32 @netdev_get_num_tc(%struct.net_device* %123)
  %125 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %9, i32 0, i32 0
  store i32 %124, i32* %125, align 8
  %126 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %9, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.netdev_qos_info*, %struct.netdev_qos_info** %7, align 8
  %129 = getelementptr inbounds %struct.netdev_qos_info, %struct.netdev_qos_info* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @memcpy(i32 %127, i32 %130, i32 4)
  store i32 0, i32* %11, align 4
  br label %132

132:                                              ; preds = %164, %122
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.net_device*, %struct.net_device** %6, align 8
  %135 = call i32 @netdev_get_num_tc(%struct.net_device* %134)
  %136 = icmp ult i32 %133, %135
  br i1 %136, label %137, label %167

137:                                              ; preds = %132
  %138 = load %struct.netdev_qos_info*, %struct.netdev_qos_info** %7, align 8
  %139 = getelementptr inbounds %struct.netdev_qos_info, %struct.netdev_qos_info* %138, i32 0, i32 0
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %9, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 %145, i32* %150, align 4
  %151 = load %struct.netdev_qos_info*, %struct.netdev_qos_info** %7, align 8
  %152 = getelementptr inbounds %struct.netdev_qos_info, %struct.netdev_qos_info* %151, i32 0, i32 0
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %9, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %158, i32* %163, align 4
  br label %164

164:                                              ; preds = %137
  %165 = load i32, i32* %11, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %11, align 4
  br label %132

167:                                              ; preds = %132
  %168 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %169 = load i32, i32* @TCA_OPTIONS, align 4
  %170 = call i32 @NLA_PUT(%struct.sk_buff* %168, i32 %169, i32 32, %struct.tc_mqprio_qopt* %9)
  %171 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %172 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %3, align 4
  br label %178

174:                                              ; No predecessors!
  %175 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %176 = load i8*, i8** %8, align 8
  %177 = call i32 @nlmsg_trim(%struct.sk_buff* %175, i8* %176)
  store i32 -1, i32* %3, align 4
  br label %178

178:                                              ; preds = %174, %167
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local %struct.TYPE_9__* @netdev_extended(%struct.net_device*) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @spin_lock_bh(i32) #1

declare dso_local i32 @qdisc_lock(%struct.Qdisc*) #1

declare dso_local i32 @spin_unlock_bh(i32) #1

declare dso_local i32 @netdev_get_num_tc(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, %struct.tc_mqprio_qopt*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

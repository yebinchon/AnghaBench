; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_tc_fill_tclass.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_tc_fill_tclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, %struct.Qdisc_class_ops* }
%struct.Qdisc_class_ops = type { i64 (%struct.Qdisc.0*, i64, %struct.sk_buff*, %struct.tcmsg*)*, i64 (%struct.Qdisc.1*, i64, %struct.gnet_dump*)* }
%struct.Qdisc.0 = type opaque
%struct.tcmsg = type { i64, i32, i32, i32, i64, i64, i32 }
%struct.Qdisc.1 = type opaque
%struct.gnet_dump = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.TYPE_4__ = type { i32 }

@AF_UNSPEC = common dso_local global i32 0, align 4
@TCA_KIND = common dso_local global i32 0, align 4
@TCA_STATS2 = common dso_local global i32 0, align 4
@TCA_STATS = common dso_local global i32 0, align 4
@TCA_XSTATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*, i64, i32, i32, i32, i32)* @tc_fill_tclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_fill_tclass(%struct.sk_buff* %0, %struct.Qdisc* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.Qdisc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.tcmsg*, align 8
  %17 = alloca %struct.nlmsghdr*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.gnet_dump, align 4
  %20 = alloca %struct.Qdisc_class_ops*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %22 = call i8* @skb_tail_pointer(%struct.sk_buff* %21)
  store i8* %22, i8** %18, align 8
  %23 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %24 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %26, align 8
  store %struct.Qdisc_class_ops* %27, %struct.Qdisc_class_ops** %20, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %14, align 4
  %33 = call %struct.nlmsghdr* @NLMSG_NEW(%struct.sk_buff* %28, i32 %29, i32 %30, i32 %31, i32 48, i32 %32)
  store %struct.nlmsghdr* %33, %struct.nlmsghdr** %17, align 8
  %34 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %35 = call %struct.tcmsg* @NLMSG_DATA(%struct.nlmsghdr* %34)
  store %struct.tcmsg* %35, %struct.tcmsg** %16, align 8
  %36 = load i32, i32* @AF_UNSPEC, align 4
  %37 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %38 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 8
  %39 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %40 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %42 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %41, i32 0, i32 4
  store i64 0, i64* %42, align 8
  %43 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %44 = call %struct.TYPE_4__* @qdisc_dev(%struct.Qdisc* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %48 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %50 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %53 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %55 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %58 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %60 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %62 = load i32, i32* @TCA_KIND, align 4
  %63 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %64 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @NLA_PUT_STRING(%struct.sk_buff* %61, i32 %62, i32 %67)
  %69 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %20, align 8
  %70 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %69, i32 0, i32 0
  %71 = load i64 (%struct.Qdisc.0*, i64, %struct.sk_buff*, %struct.tcmsg*)*, i64 (%struct.Qdisc.0*, i64, %struct.sk_buff*, %struct.tcmsg*)** %70, align 8
  %72 = icmp ne i64 (%struct.Qdisc.0*, i64, %struct.sk_buff*, %struct.tcmsg*)* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %7
  %74 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %20, align 8
  %75 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %74, i32 0, i32 0
  %76 = load i64 (%struct.Qdisc.0*, i64, %struct.sk_buff*, %struct.tcmsg*)*, i64 (%struct.Qdisc.0*, i64, %struct.sk_buff*, %struct.tcmsg*)** %75, align 8
  %77 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %78 = bitcast %struct.Qdisc* %77 to %struct.Qdisc.0*
  %79 = load i64, i64* %11, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %81 = load %struct.tcmsg*, %struct.tcmsg** %16, align 8
  %82 = call i64 %76(%struct.Qdisc.0* %78, i64 %79, %struct.sk_buff* %80, %struct.tcmsg* %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  br label %128

85:                                               ; preds = %73, %7
  %86 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %87 = load i32, i32* @TCA_STATS2, align 4
  %88 = load i32, i32* @TCA_STATS, align 4
  %89 = load i32, i32* @TCA_XSTATS, align 4
  %90 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %91 = call i32 @qdisc_root_sleeping_lock(%struct.Qdisc* %90)
  %92 = call i64 @gnet_stats_start_copy_compat(%struct.sk_buff* %86, i32 %87, i32 %88, i32 %89, i32 %91, %struct.gnet_dump* %19)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %128

95:                                               ; preds = %85
  %96 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %20, align 8
  %97 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %96, i32 0, i32 1
  %98 = load i64 (%struct.Qdisc.1*, i64, %struct.gnet_dump*)*, i64 (%struct.Qdisc.1*, i64, %struct.gnet_dump*)** %97, align 8
  %99 = icmp ne i64 (%struct.Qdisc.1*, i64, %struct.gnet_dump*)* %98, null
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %20, align 8
  %102 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %101, i32 0, i32 1
  %103 = load i64 (%struct.Qdisc.1*, i64, %struct.gnet_dump*)*, i64 (%struct.Qdisc.1*, i64, %struct.gnet_dump*)** %102, align 8
  %104 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %105 = bitcast %struct.Qdisc* %104 to %struct.Qdisc.1*
  %106 = load i64, i64* %11, align 8
  %107 = call i64 %103(%struct.Qdisc.1* %105, i64 %106, %struct.gnet_dump* %19)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  br label %128

110:                                              ; preds = %100, %95
  %111 = call i64 @gnet_stats_finish_copy(%struct.gnet_dump* %19)
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %128

114:                                              ; preds = %110
  %115 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %116 = call i8* @skb_tail_pointer(%struct.sk_buff* %115)
  %117 = load i8*, i8** %18, align 8
  %118 = ptrtoint i8* %116 to i64
  %119 = ptrtoint i8* %117 to i64
  %120 = sub i64 %118, %119
  %121 = trunc i64 %120 to i32
  %122 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %123 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  %124 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %8, align 4
  br label %132

127:                                              ; No predecessors!
  br label %128

128:                                              ; preds = %127, %113, %109, %94, %84
  %129 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %130 = load i8*, i8** %18, align 8
  %131 = call i32 @nlmsg_trim(%struct.sk_buff* %129, i8* %130)
  store i32 -1, i32* %8, align 4
  br label %132

132:                                              ; preds = %128, %114
  %133 = load i32, i32* %8, align 4
  ret i32 %133
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.nlmsghdr* @NLMSG_NEW(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.tcmsg* @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local %struct.TYPE_4__* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @NLA_PUT_STRING(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @gnet_stats_start_copy_compat(%struct.sk_buff*, i32, i32, i32, i32, %struct.gnet_dump*) #1

declare dso_local i32 @qdisc_root_sleeping_lock(%struct.Qdisc*) #1

declare dso_local i64 @gnet_stats_finish_copy(%struct.gnet_dump*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

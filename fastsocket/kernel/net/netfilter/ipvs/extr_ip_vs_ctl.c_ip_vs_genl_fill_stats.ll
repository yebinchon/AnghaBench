; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_fill_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_fill_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_vs_stats = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nlattr = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@IPVS_STATS_ATTR_CONNS = common dso_local global i32 0, align 4
@IPVS_STATS_ATTR_INPKTS = common dso_local global i32 0, align 4
@IPVS_STATS_ATTR_OUTPKTS = common dso_local global i32 0, align 4
@IPVS_STATS_ATTR_INBYTES = common dso_local global i32 0, align 4
@IPVS_STATS_ATTR_OUTBYTES = common dso_local global i32 0, align 4
@IPVS_STATS_ATTR_CPS = common dso_local global i32 0, align 4
@IPVS_STATS_ATTR_INPPS = common dso_local global i32 0, align 4
@IPVS_STATS_ATTR_OUTPPS = common dso_local global i32 0, align 4
@IPVS_STATS_ATTR_INBPS = common dso_local global i32 0, align 4
@IPVS_STATS_ATTR_OUTBPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.ip_vs_stats*)* @ip_vs_genl_fill_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_genl_fill_stats(%struct.sk_buff* %0, i32 %1, %struct.ip_vs_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_vs_stats*, align 8
  %8 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ip_vs_stats* %2, %struct.ip_vs_stats** %7, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %9, i32 %10)
  store %struct.nlattr* %11, %struct.nlattr** %8, align 8
  %12 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %13 = icmp ne %struct.nlattr* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EMSGSIZE, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %106

17:                                               ; preds = %3
  %18 = load %struct.ip_vs_stats*, %struct.ip_vs_stats** %7, align 8
  %19 = getelementptr inbounds %struct.ip_vs_stats, %struct.ip_vs_stats* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_bh(i32* %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = load i32, i32* @IPVS_STATS_ATTR_CONNS, align 4
  %23 = load %struct.ip_vs_stats*, %struct.ip_vs_stats** %7, align 8
  %24 = getelementptr inbounds %struct.ip_vs_stats, %struct.ip_vs_stats* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @NLA_PUT_U32(%struct.sk_buff* %21, i32 %22, i32 %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load i32, i32* @IPVS_STATS_ATTR_INPKTS, align 4
  %30 = load %struct.ip_vs_stats*, %struct.ip_vs_stats** %7, align 8
  %31 = getelementptr inbounds %struct.ip_vs_stats, %struct.ip_vs_stats* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @NLA_PUT_U32(%struct.sk_buff* %28, i32 %29, i32 %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = load i32, i32* @IPVS_STATS_ATTR_OUTPKTS, align 4
  %37 = load %struct.ip_vs_stats*, %struct.ip_vs_stats** %7, align 8
  %38 = getelementptr inbounds %struct.ip_vs_stats, %struct.ip_vs_stats* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @NLA_PUT_U32(%struct.sk_buff* %35, i32 %36, i32 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load i32, i32* @IPVS_STATS_ATTR_INBYTES, align 4
  %44 = load %struct.ip_vs_stats*, %struct.ip_vs_stats** %7, align 8
  %45 = getelementptr inbounds %struct.ip_vs_stats, %struct.ip_vs_stats* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @NLA_PUT_U64(%struct.sk_buff* %42, i32 %43, i32 %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = load i32, i32* @IPVS_STATS_ATTR_OUTBYTES, align 4
  %51 = load %struct.ip_vs_stats*, %struct.ip_vs_stats** %7, align 8
  %52 = getelementptr inbounds %struct.ip_vs_stats, %struct.ip_vs_stats* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @NLA_PUT_U64(%struct.sk_buff* %49, i32 %50, i32 %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = load i32, i32* @IPVS_STATS_ATTR_CPS, align 4
  %58 = load %struct.ip_vs_stats*, %struct.ip_vs_stats** %7, align 8
  %59 = getelementptr inbounds %struct.ip_vs_stats, %struct.ip_vs_stats* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @NLA_PUT_U32(%struct.sk_buff* %56, i32 %57, i32 %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = load i32, i32* @IPVS_STATS_ATTR_INPPS, align 4
  %65 = load %struct.ip_vs_stats*, %struct.ip_vs_stats** %7, align 8
  %66 = getelementptr inbounds %struct.ip_vs_stats, %struct.ip_vs_stats* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @NLA_PUT_U32(%struct.sk_buff* %63, i32 %64, i32 %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = load i32, i32* @IPVS_STATS_ATTR_OUTPPS, align 4
  %72 = load %struct.ip_vs_stats*, %struct.ip_vs_stats** %7, align 8
  %73 = getelementptr inbounds %struct.ip_vs_stats, %struct.ip_vs_stats* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @NLA_PUT_U32(%struct.sk_buff* %70, i32 %71, i32 %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = load i32, i32* @IPVS_STATS_ATTR_INBPS, align 4
  %79 = load %struct.ip_vs_stats*, %struct.ip_vs_stats** %7, align 8
  %80 = getelementptr inbounds %struct.ip_vs_stats, %struct.ip_vs_stats* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @NLA_PUT_U32(%struct.sk_buff* %77, i32 %78, i32 %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = load i32, i32* @IPVS_STATS_ATTR_OUTBPS, align 4
  %86 = load %struct.ip_vs_stats*, %struct.ip_vs_stats** %7, align 8
  %87 = getelementptr inbounds %struct.ip_vs_stats, %struct.ip_vs_stats* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @NLA_PUT_U32(%struct.sk_buff* %84, i32 %85, i32 %89)
  %91 = load %struct.ip_vs_stats*, %struct.ip_vs_stats** %7, align 8
  %92 = getelementptr inbounds %struct.ip_vs_stats, %struct.ip_vs_stats* %91, i32 0, i32 0
  %93 = call i32 @spin_unlock_bh(i32* %92)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %96 = call i32 @nla_nest_end(%struct.sk_buff* %94, %struct.nlattr* %95)
  store i32 0, i32* %4, align 4
  br label %106

97:                                               ; No predecessors!
  %98 = load %struct.ip_vs_stats*, %struct.ip_vs_stats** %7, align 8
  %99 = getelementptr inbounds %struct.ip_vs_stats, %struct.ip_vs_stats* %98, i32 0, i32 0
  %100 = call i32 @spin_unlock_bh(i32* %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %103 = call i32 @nla_nest_cancel(%struct.sk_buff* %101, %struct.nlattr* %102)
  %104 = load i32, i32* @EMSGSIZE, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %97, %17, %14
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @NLA_PUT_U64(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

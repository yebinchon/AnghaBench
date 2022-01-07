; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neightbl_fill_parms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neightbl_fill_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.neigh_parms = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@NDTA_PARMS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@NDTPA_IFINDEX = common dso_local global i32 0, align 4
@NDTPA_REFCNT = common dso_local global i32 0, align 4
@NDTPA_QUEUE_LEN = common dso_local global i32 0, align 4
@NDTPA_PROXY_QLEN = common dso_local global i32 0, align 4
@NDTPA_APP_PROBES = common dso_local global i32 0, align 4
@NDTPA_UCAST_PROBES = common dso_local global i32 0, align 4
@NDTPA_MCAST_PROBES = common dso_local global i32 0, align 4
@NDTPA_REACHABLE_TIME = common dso_local global i32 0, align 4
@NDTPA_BASE_REACHABLE_TIME = common dso_local global i32 0, align 4
@NDTPA_GC_STALETIME = common dso_local global i32 0, align 4
@NDTPA_DELAY_PROBE_TIME = common dso_local global i32 0, align 4
@NDTPA_RETRANS_TIME = common dso_local global i32 0, align 4
@NDTPA_ANYCAST_DELAY = common dso_local global i32 0, align 4
@NDTPA_PROXY_DELAY = common dso_local global i32 0, align 4
@NDTPA_LOCKTIME = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.neigh_parms*)* @neightbl_fill_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neightbl_fill_parms(%struct.sk_buff* %0, %struct.neigh_parms* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.neigh_parms*, align 8
  %6 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.neigh_parms* %1, %struct.neigh_parms** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = load i32, i32* @NDTA_PARMS, align 4
  %9 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %7, i32 %8)
  store %struct.nlattr* %9, %struct.nlattr** %6, align 8
  %10 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %11 = icmp eq %struct.nlattr* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOBUFS, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %123

15:                                               ; preds = %2
  %16 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %17 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %16, i32 0, i32 14
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = load i32, i32* @NDTPA_IFINDEX, align 4
  %23 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %24 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %23, i32 0, i32 14
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @NLA_PUT_U32(%struct.sk_buff* %21, i32 %22, i32 %27)
  br label %29

29:                                               ; preds = %20, %15
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = load i32, i32* @NDTPA_REFCNT, align 4
  %32 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %33 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %32, i32 0, i32 13
  %34 = call i32 @atomic_read(i32* %33)
  %35 = call i32 @NLA_PUT_U32(%struct.sk_buff* %30, i32 %31, i32 %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load i32, i32* @NDTPA_QUEUE_LEN, align 4
  %38 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %39 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %38, i32 0, i32 12
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @NLA_PUT_U32(%struct.sk_buff* %36, i32 %37, i32 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = load i32, i32* @NDTPA_PROXY_QLEN, align 4
  %44 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %45 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %44, i32 0, i32 11
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @NLA_PUT_U32(%struct.sk_buff* %42, i32 %43, i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = load i32, i32* @NDTPA_APP_PROBES, align 4
  %50 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %51 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %50, i32 0, i32 10
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @NLA_PUT_U32(%struct.sk_buff* %48, i32 %49, i32 %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = load i32, i32* @NDTPA_UCAST_PROBES, align 4
  %56 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %57 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @NLA_PUT_U32(%struct.sk_buff* %54, i32 %55, i32 %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = load i32, i32* @NDTPA_MCAST_PROBES, align 4
  %62 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %63 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @NLA_PUT_U32(%struct.sk_buff* %60, i32 %61, i32 %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = load i32, i32* @NDTPA_REACHABLE_TIME, align 4
  %68 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %69 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @NLA_PUT_MSECS(%struct.sk_buff* %66, i32 %67, i32 %70)
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = load i32, i32* @NDTPA_BASE_REACHABLE_TIME, align 4
  %74 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %75 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @NLA_PUT_MSECS(%struct.sk_buff* %72, i32 %73, i32 %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = load i32, i32* @NDTPA_GC_STALETIME, align 4
  %80 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %81 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @NLA_PUT_MSECS(%struct.sk_buff* %78, i32 %79, i32 %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = load i32, i32* @NDTPA_DELAY_PROBE_TIME, align 4
  %86 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %87 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @NLA_PUT_MSECS(%struct.sk_buff* %84, i32 %85, i32 %88)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = load i32, i32* @NDTPA_RETRANS_TIME, align 4
  %92 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %93 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @NLA_PUT_MSECS(%struct.sk_buff* %90, i32 %91, i32 %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = load i32, i32* @NDTPA_ANYCAST_DELAY, align 4
  %98 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %99 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @NLA_PUT_MSECS(%struct.sk_buff* %96, i32 %97, i32 %100)
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = load i32, i32* @NDTPA_PROXY_DELAY, align 4
  %104 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %105 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @NLA_PUT_MSECS(%struct.sk_buff* %102, i32 %103, i32 %106)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %109 = load i32, i32* @NDTPA_LOCKTIME, align 4
  %110 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %111 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @NLA_PUT_MSECS(%struct.sk_buff* %108, i32 %109, i32 %112)
  %114 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %115 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %116 = call i32 @nla_nest_end(%struct.sk_buff* %114, %struct.nlattr* %115)
  store i32 %116, i32* %3, align 4
  br label %123

117:                                              ; No predecessors!
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %120 = call i32 @nla_nest_cancel(%struct.sk_buff* %118, %struct.nlattr* %119)
  %121 = load i32, i32* @EMSGSIZE, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %117, %29, %12
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @NLA_PUT_MSECS(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

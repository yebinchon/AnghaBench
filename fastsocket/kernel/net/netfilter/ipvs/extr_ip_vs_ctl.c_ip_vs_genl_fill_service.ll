; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_fill_service.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_fill_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_vs_service = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, %struct.ip_vs_flags, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ip_vs_flags = type { i32, i32 }
%struct.nlattr = type { i32 }

@IPVS_CMD_ATTR_SERVICE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@IPVS_SVC_ATTR_AF = common dso_local global i32 0, align 4
@IPVS_SVC_ATTR_FWMARK = common dso_local global i32 0, align 4
@IPVS_SVC_ATTR_PROTOCOL = common dso_local global i32 0, align 4
@IPVS_SVC_ATTR_ADDR = common dso_local global i32 0, align 4
@IPVS_SVC_ATTR_PORT = common dso_local global i32 0, align 4
@IPVS_SVC_ATTR_SCHED_NAME = common dso_local global i32 0, align 4
@IPVS_SVC_ATTR_PE_NAME = common dso_local global i32 0, align 4
@IPVS_SVC_ATTR_FLAGS = common dso_local global i32 0, align 4
@IPVS_SVC_ATTR_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@IPVS_SVC_ATTR_NETMASK = common dso_local global i32 0, align 4
@IPVS_SVC_ATTR_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ip_vs_service*)* @ip_vs_genl_fill_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_genl_fill_service(%struct.sk_buff* %0, %struct.ip_vs_service* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ip_vs_service*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.ip_vs_flags, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ip_vs_service* %1, %struct.ip_vs_service** %5, align 8
  %8 = getelementptr inbounds %struct.ip_vs_flags, %struct.ip_vs_flags* %7, i32 0, i32 0
  store i32 -1, i32* %8, align 4
  %9 = getelementptr inbounds %struct.ip_vs_flags, %struct.ip_vs_flags* %7, i32 0, i32 1
  %10 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %11 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %10, i32 0, i32 10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = load i32, i32* @IPVS_CMD_ATTR_SERVICE, align 4
  %15 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %13, i32 %14)
  store %struct.nlattr* %15, %struct.nlattr** %6, align 8
  %16 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %17 = icmp ne %struct.nlattr* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EMSGSIZE, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %114

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = load i32, i32* @IPVS_SVC_ATTR_AF, align 4
  %24 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %25 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @NLA_PUT_U16(%struct.sk_buff* %22, i32 %23, i32 %26)
  %28 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %29 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %21
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = load i32, i32* @IPVS_SVC_ATTR_FWMARK, align 4
  %35 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %36 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @NLA_PUT_U32(%struct.sk_buff* %33, i32 %34, i32 %37)
  br label %57

39:                                               ; preds = %21
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = load i32, i32* @IPVS_SVC_ATTR_PROTOCOL, align 4
  %42 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %43 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @NLA_PUT_U16(%struct.sk_buff* %40, i32 %41, i32 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = load i32, i32* @IPVS_SVC_ATTR_ADDR, align 4
  %48 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %49 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %48, i32 0, i32 7
  %50 = call i32 @NLA_PUT(%struct.sk_buff* %46, i32 %47, i32 8, %struct.ip_vs_flags* %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = load i32, i32* @IPVS_SVC_ATTR_PORT, align 4
  %53 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %54 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @NLA_PUT_U16(%struct.sk_buff* %51, i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %39, %32
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = load i32, i32* @IPVS_SVC_ATTR_SCHED_NAME, align 4
  %60 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %61 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %60, i32 0, i32 5
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @NLA_PUT_STRING(%struct.sk_buff* %58, i32 %59, i32 %64)
  %66 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %67 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %66, i32 0, i32 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = icmp ne %struct.TYPE_4__* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %57
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = load i32, i32* @IPVS_SVC_ATTR_PE_NAME, align 4
  %73 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %74 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %73, i32 0, i32 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @NLA_PUT_STRING(%struct.sk_buff* %71, i32 %72, i32 %77)
  br label %79

79:                                               ; preds = %70, %57
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = load i32, i32* @IPVS_SVC_ATTR_FLAGS, align 4
  %82 = call i32 @NLA_PUT(%struct.sk_buff* %80, i32 %81, i32 8, %struct.ip_vs_flags* %7)
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = load i32, i32* @IPVS_SVC_ATTR_TIMEOUT, align 4
  %85 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %86 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @HZ, align 4
  %89 = sdiv i32 %87, %88
  %90 = call i32 @NLA_PUT_U32(%struct.sk_buff* %83, i32 %84, i32 %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = load i32, i32* @IPVS_SVC_ATTR_NETMASK, align 4
  %93 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %94 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @NLA_PUT_U32(%struct.sk_buff* %91, i32 %92, i32 %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = load i32, i32* @IPVS_SVC_ATTR_STATS, align 4
  %99 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %100 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %99, i32 0, i32 3
  %101 = call i64 @ip_vs_genl_fill_stats(%struct.sk_buff* %97, i32 %98, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %79
  br label %108

104:                                              ; preds = %79
  %105 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %106 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %107 = call i32 @nla_nest_end(%struct.sk_buff* %105, %struct.nlattr* %106)
  store i32 0, i32* %3, align 4
  br label %114

108:                                              ; preds = %103
  %109 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %110 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %111 = call i32 @nla_nest_cancel(%struct.sk_buff* %109, %struct.nlattr* %110)
  %112 = load i32, i32* @EMSGSIZE, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %108, %104, %18
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @NLA_PUT_U16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, %struct.ip_vs_flags*) #1

declare dso_local i32 @NLA_PUT_STRING(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @ip_vs_genl_fill_stats(%struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipmr.c_ipmr_fill_mroute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipmr.c_ipmr_fill_mroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mr_table = type { i32 }
%struct.sk_buff = type { i32 }
%struct.mfc_cache = type { i32, i32 }
%struct.nlmsghdr = type { i32 }
%struct.rtmsg = type { i32, i32, i64, i32, i32, i32, i32, i64, i32 }

@RTM_NEWROUTE = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@RTNL_FAMILY_IPMR = common dso_local global i32 0, align 4
@RTA_TABLE = common dso_local global i32 0, align 4
@RTN_MULTICAST = common dso_local global i32 0, align 4
@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@RTPROT_UNSPEC = common dso_local global i32 0, align 4
@RTA_SRC = common dso_local global i32 0, align 4
@RTA_DST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mr_table*, %struct.sk_buff*, i32, i32, %struct.mfc_cache*)* @ipmr_fill_mroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmr_fill_mroute(%struct.mr_table* %0, %struct.sk_buff* %1, i32 %2, i32 %3, %struct.mfc_cache* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mr_table*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mfc_cache*, align 8
  %12 = alloca %struct.nlmsghdr*, align 8
  %13 = alloca %struct.rtmsg*, align 8
  store %struct.mr_table* %0, %struct.mr_table** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.mfc_cache* %4, %struct.mfc_cache** %11, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @RTM_NEWROUTE, align 4
  %18 = load i32, i32* @NLM_F_MULTI, align 4
  %19 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %14, i32 %15, i32 %16, i32 %17, i32 48, i32 %18)
  store %struct.nlmsghdr* %19, %struct.nlmsghdr** %12, align 8
  %20 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %21 = icmp eq %struct.nlmsghdr* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @EMSGSIZE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %88

25:                                               ; preds = %5
  %26 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %27 = call %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr* %26)
  store %struct.rtmsg* %27, %struct.rtmsg** %13, align 8
  %28 = load i32, i32* @RTNL_FAMILY_IPMR, align 4
  %29 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %30 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 8
  %31 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %32 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %31, i32 0, i32 0
  store i32 32, i32* %32, align 8
  %33 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %34 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %33, i32 0, i32 1
  store i32 32, i32* %34, align 4
  %35 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %36 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %35, i32 0, i32 7
  store i64 0, i64* %36, align 8
  %37 = load %struct.mr_table*, %struct.mr_table** %7, align 8
  %38 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %41 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = load i32, i32* @RTA_TABLE, align 4
  %44 = load %struct.mr_table*, %struct.mr_table** %7, align 8
  %45 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @NLA_PUT_U32(%struct.sk_buff* %42, i32 %43, i32 %46)
  %48 = load i32, i32* @RTN_MULTICAST, align 4
  %49 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %50 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  %52 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %53 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @RTPROT_UNSPEC, align 4
  %55 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %56 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %58 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = load i32, i32* @RTA_SRC, align 4
  %61 = load %struct.mfc_cache*, %struct.mfc_cache** %11, align 8
  %62 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @NLA_PUT_BE32(%struct.sk_buff* %59, i32 %60, i32 %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = load i32, i32* @RTA_DST, align 4
  %67 = load %struct.mfc_cache*, %struct.mfc_cache** %11, align 8
  %68 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @NLA_PUT_BE32(%struct.sk_buff* %65, i32 %66, i32 %69)
  %71 = load %struct.mr_table*, %struct.mr_table** %7, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %73 = load %struct.mfc_cache*, %struct.mfc_cache** %11, align 8
  %74 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %75 = call i64 @__ipmr_fill_mroute(%struct.mr_table* %71, %struct.sk_buff* %72, %struct.mfc_cache* %73, %struct.rtmsg* %74)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %25
  br label %82

78:                                               ; preds = %25
  %79 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %80 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %81 = call i32 @nlmsg_end(%struct.sk_buff* %79, %struct.nlmsghdr* %80)
  store i32 %81, i32* %6, align 4
  br label %88

82:                                               ; preds = %77
  %83 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %84 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %85 = call i32 @nlmsg_cancel(%struct.sk_buff* %83, %struct.nlmsghdr* %84)
  %86 = load i32, i32* @EMSGSIZE, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %82, %78, %22
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @NLA_PUT_BE32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @__ipmr_fill_mroute(%struct.mr_table*, %struct.sk_buff*, %struct.mfc_cache*, %struct.rtmsg*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

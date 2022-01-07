; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_new_daemon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_new_daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }

@IPVS_DAEMON_ATTR_STATE = common dso_local global i64 0, align 8
@IPVS_DAEMON_ATTR_MCAST_IFN = common dso_local global i64 0, align 8
@IPVS_DAEMON_ATTR_SYNC_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**)* @ip_vs_genl_new_daemon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_genl_new_daemon(%struct.nlattr** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nlattr**, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %3, align 8
  %4 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %5 = load i64, i64* @IPVS_DAEMON_ATTR_STATE, align 8
  %6 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %4, i64 %5
  %7 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %8 = icmp ne %struct.nlattr* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %11 = load i64, i64* @IPVS_DAEMON_ATTR_MCAST_IFN, align 8
  %12 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %10, i64 %11
  %13 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %14 = icmp ne %struct.nlattr* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %17 = load i64, i64* @IPVS_DAEMON_ATTR_SYNC_ID, align 8
  %18 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %17
  %19 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %20 = icmp ne %struct.nlattr* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15, %9, %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %41

24:                                               ; preds = %15
  %25 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %26 = load i64, i64* @IPVS_DAEMON_ATTR_STATE, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = call i32 @nla_get_u32(%struct.nlattr* %28)
  %30 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %31 = load i64, i64* @IPVS_DAEMON_ATTR_MCAST_IFN, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = call i32 @nla_data(%struct.nlattr* %33)
  %35 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %36 = load i64, i64* @IPVS_DAEMON_ATTR_SYNC_ID, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = call i32 @nla_get_u32(%struct.nlattr* %38)
  %40 = call i32 @start_sync_thread(i32 %29, i32 %34, i32 %39)
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %24, %21
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @start_sync_thread(i32, i32, i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

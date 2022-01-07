; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_change_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_change_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.nlattr = type { i32 }

@CTA_TIMEOUT = common dso_local global i64 0, align 8
@ETIME = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, %struct.nlattr**)* @ctnetlink_change_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_change_timeout(%struct.nf_conn* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_conn*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %7 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %8 = load i64, i64* @CTA_TIMEOUT, align 8
  %9 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %7, i64 %8
  %10 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %11 = call i32 @nla_get_be32(%struct.nlattr* %10)
  %12 = call i32 @ntohl(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %14 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %13, i32 0, i32 0
  %15 = call i32 @del_timer(%struct.TYPE_3__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ETIME, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %33

20:                                               ; preds = %2
  %21 = load i64, i64* @jiffies, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @HZ, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %21, %25
  %27 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %28 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  %30 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %31 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %30, i32 0, i32 0
  %32 = call i32 @add_timer(%struct.TYPE_3__* %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %20, %17
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @del_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

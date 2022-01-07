; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ieee802154/extr_netlink.c_ieee802154_nl_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ieee802154/extr_netlink.c_ieee802154_nl_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@ieee802154_coord_mcgrp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ieee802154_nl_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802154_nl_finish(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @NLMSG_DATA(i32 %7)
  %9 = call i8* @genlmsg_data(i32 %8)
  store i8* %9, i8** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @genlmsg_end(%struct.sk_buff* %10, i8* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ieee802154_coord_mcgrp, i32 0, i32 0), align 4
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call i32 @genlmsg_multicast(%struct.sk_buff* %16, i32 0, i32 %17, i32 %18)
  store i32 %19, i32* %2, align 4
  br label %25

20:                                               ; preds = %14
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = call i32 @nlmsg_free(%struct.sk_buff* %21)
  %23 = load i32, i32* @ENOBUFS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %20, %15
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i8* @genlmsg_data(i32) #1

declare dso_local i32 @NLMSG_DATA(i32) #1

declare dso_local i64 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

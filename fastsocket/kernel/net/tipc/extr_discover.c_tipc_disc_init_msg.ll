; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_discover.c_tipc_disc_init_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_discover.c_tipc_disc_init_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.bearer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tipc_msg = type { i32 }

@DSC_H_SIZE = common dso_local global i32 0, align 4
@LINK_CONFIG = common dso_local global i32 0, align 4
@tipc_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (i32, i32, i32, %struct.bearer*)* @tipc_disc_init_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @tipc_disc_init_msg(i32 %0, i32 %1, i32 %2, %struct.bearer* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bearer*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.tipc_msg*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.bearer* %3, %struct.bearer** %8, align 8
  %11 = load i32, i32* @DSC_H_SIZE, align 4
  %12 = call %struct.sk_buff* @buf_acquire(i32 %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %9, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %15, label %40

15:                                               ; preds = %4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %17 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %16)
  store %struct.tipc_msg* %17, %struct.tipc_msg** %10, align 8
  %18 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %19 = load i32, i32* @LINK_CONFIG, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @DSC_H_SIZE, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @msg_init(%struct.tipc_msg* %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %25 = call i32 @msg_set_non_seq(%struct.tipc_msg* %24, i32 1)
  %26 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @msg_set_req_links(%struct.tipc_msg* %26, i32 %27)
  %29 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @msg_set_dest_domain(%struct.tipc_msg* %29, i32 %30)
  %32 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %33 = load i32, i32* @tipc_net_id, align 4
  %34 = call i32 @msg_set_bc_netid(%struct.tipc_msg* %32, i32 %33)
  %35 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %36 = load %struct.bearer*, %struct.bearer** %8, align 8
  %37 = getelementptr inbounds %struct.bearer, %struct.bearer* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @msg_set_media_addr(%struct.tipc_msg* %35, i32* %38)
  br label %40

40:                                               ; preds = %15, %4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  ret %struct.sk_buff* %41
}

declare dso_local %struct.sk_buff* @buf_acquire(i32) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_init(%struct.tipc_msg*, i32, i32, i32, i32) #1

declare dso_local i32 @msg_set_non_seq(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_req_links(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_dest_domain(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_bc_netid(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_media_addr(%struct.tipc_msg*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

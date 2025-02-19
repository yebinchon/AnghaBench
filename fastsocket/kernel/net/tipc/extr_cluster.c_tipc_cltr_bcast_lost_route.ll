; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_bcast_lost_route.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_bcast_lost_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cluster = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }

@ROUTE_REMOVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Memory squeeze: broadcast of lost route failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_cltr_bcast_lost_route(%struct.cluster* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cluster*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.tipc_msg*, align 8
  store %struct.cluster* %0, %struct.cluster** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.cluster*, %struct.cluster** %5, align 8
  %12 = getelementptr inbounds %struct.cluster, %struct.cluster* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.sk_buff* @tipc_cltr_prepare_routing_msg(i32 0, i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %9, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %18)
  store %struct.tipc_msg* %19, %struct.tipc_msg** %10, align 8
  %20 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @msg_set_remote_node(%struct.tipc_msg* %20, i32 %21)
  %23 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %24 = load i32, i32* @ROUTE_REMOVAL, align 4
  %25 = call i32 @msg_set_type(%struct.tipc_msg* %23, i32 %24)
  %26 = load %struct.cluster*, %struct.cluster** %5, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @tipc_cltr_multicast(%struct.cluster* %26, %struct.sk_buff* %27, i32 %28, i32 %29)
  br label %33

31:                                               ; preds = %4
  %32 = call i32 @warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %17
  ret void
}

declare dso_local %struct.sk_buff* @tipc_cltr_prepare_routing_msg(i32, i32) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_set_remote_node(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_type(%struct.tipc_msg*, i32) #1

declare dso_local i32 @tipc_cltr_multicast(%struct.cluster*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

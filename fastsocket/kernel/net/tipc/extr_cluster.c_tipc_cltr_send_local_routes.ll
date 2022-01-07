; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_send_local_routes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_send_local_routes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cluster = type { i64, i64*, i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }

@LOCAL_ROUTING_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Memory squeeze: broadcast of local route failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_cltr_send_local_routes(%struct.cluster* %0, i64 %1) #0 {
  %3 = alloca %struct.cluster*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tipc_msg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.cluster* %0, %struct.cluster** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.cluster*, %struct.cluster** %3, align 8
  %11 = getelementptr inbounds %struct.cluster, %struct.cluster* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @is_slave(i64 %13)
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.cluster*, %struct.cluster** %3, align 8
  %17 = getelementptr inbounds %struct.cluster, %struct.cluster* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @in_own_cluster(i32 %18)
  %20 = call i32 @assert(i32 %19)
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.cluster*, %struct.cluster** %3, align 8
  %23 = getelementptr inbounds %struct.cluster, %struct.cluster* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.sk_buff* @tipc_cltr_prepare_routing_msg(i64 %21, i32 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %5, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %28, label %80

28:                                               ; preds = %2
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %29)
  store %struct.tipc_msg* %30, %struct.tipc_msg** %6, align 8
  %31 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %32 = load %struct.cluster*, %struct.cluster** %3, align 8
  %33 = getelementptr inbounds %struct.cluster, %struct.cluster* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @msg_set_remote_node(%struct.tipc_msg* %31, i32 %34)
  %36 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %37 = load i32, i32* @LOCAL_ROUTING_TABLE, align 4
  %38 = call i32 @msg_set_type(%struct.tipc_msg* %36, i32 %37)
  store i64 1, i64* %8, align 8
  br label %39

39:                                               ; preds = %65, %28
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp ule i64 %40, %41
  br i1 %42, label %43, label %68

43:                                               ; preds = %39
  %44 = load %struct.cluster*, %struct.cluster** %3, align 8
  %45 = getelementptr inbounds %struct.cluster, %struct.cluster* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %43
  %52 = load %struct.cluster*, %struct.cluster** %3, align 8
  %53 = getelementptr inbounds %struct.cluster, %struct.cluster* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @tipc_node_has_active_links(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  store i32 1, i32* %9, align 4
  %61 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @msg_set_dataoctet(%struct.tipc_msg* %61, i64 %62)
  br label %64

64:                                               ; preds = %60, %51, %43
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %8, align 8
  br label %39

68:                                               ; preds = %39
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = load i64, i64* %4, align 8
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @tipc_link_send(%struct.sk_buff* %72, i64 %73, i64 %74)
  br label %79

76:                                               ; preds = %68
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = call i32 @buf_discard(%struct.sk_buff* %77)
  br label %79

79:                                               ; preds = %76, %71
  br label %82

80:                                               ; preds = %2
  %81 = call i32 @warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %79
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_slave(i64) #1

declare dso_local i32 @in_own_cluster(i32) #1

declare dso_local %struct.sk_buff* @tipc_cltr_prepare_routing_msg(i64, i32) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_set_remote_node(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_type(%struct.tipc_msg*, i32) #1

declare dso_local i64 @tipc_node_has_active_links(i64) #1

declare dso_local i32 @msg_set_dataoctet(%struct.tipc_msg*, i64) #1

declare dso_local i32 @tipc_link_send(%struct.sk_buff*, i64, i64) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

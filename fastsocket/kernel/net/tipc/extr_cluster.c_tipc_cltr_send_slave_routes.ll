; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_send_slave_routes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_send_slave_routes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cluster = type { i64, i64, i64* }
%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }

@LOWEST_SLAVE = common dso_local global i64 0, align 8
@SLAVE_ROUTING_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Memory squeeze: broadcast of lost route failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_cltr_send_slave_routes(%struct.cluster* %0, i64 %1) #0 {
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
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @in_own_cluster(i64 %19)
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.cluster*, %struct.cluster** %3, align 8
  %23 = getelementptr inbounds %struct.cluster, %struct.cluster* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @in_own_cluster(i64 %24)
  %26 = call i32 @assert(i32 %25)
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @LOWEST_SLAVE, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %97

31:                                               ; preds = %2
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @LOWEST_SLAVE, align 8
  %34 = sub nsw i64 %32, %33
  %35 = add nsw i64 %34, 1
  %36 = load %struct.cluster*, %struct.cluster** %3, align 8
  %37 = getelementptr inbounds %struct.cluster, %struct.cluster* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call %struct.sk_buff* @tipc_cltr_prepare_routing_msg(i64 %35, i64 %38)
  store %struct.sk_buff* %39, %struct.sk_buff** %5, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  br i1 %41, label %42, label %95

42:                                               ; preds = %31
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %43)
  store %struct.tipc_msg* %44, %struct.tipc_msg** %6, align 8
  %45 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %46 = load %struct.cluster*, %struct.cluster** %3, align 8
  %47 = getelementptr inbounds %struct.cluster, %struct.cluster* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @msg_set_remote_node(%struct.tipc_msg* %45, i64 %48)
  %50 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %51 = load i32, i32* @SLAVE_ROUTING_TABLE, align 4
  %52 = call i32 @msg_set_type(%struct.tipc_msg* %50, i32 %51)
  %53 = load i64, i64* @LOWEST_SLAVE, align 8
  store i64 %53, i64* %8, align 8
  br label %54

54:                                               ; preds = %80, %42
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp sle i64 %55, %56
  br i1 %57, label %58, label %83

58:                                               ; preds = %54
  %59 = load %struct.cluster*, %struct.cluster** %3, align 8
  %60 = getelementptr inbounds %struct.cluster, %struct.cluster* %59, i32 0, i32 2
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %58
  %67 = load %struct.cluster*, %struct.cluster** %3, align 8
  %68 = getelementptr inbounds %struct.cluster, %struct.cluster* %67, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @tipc_node_has_active_links(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  store i32 1, i32* %9, align 4
  %76 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @msg_set_dataoctet(%struct.tipc_msg* %76, i64 %77)
  br label %79

79:                                               ; preds = %75, %66, %58
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %8, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %8, align 8
  br label %54

83:                                               ; preds = %54
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = load i64, i64* %4, align 8
  %89 = load i64, i64* %4, align 8
  %90 = call i32 @tipc_link_send(%struct.sk_buff* %87, i64 %88, i64 %89)
  br label %94

91:                                               ; preds = %83
  %92 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %93 = call i32 @buf_discard(%struct.sk_buff* %92)
  br label %94

94:                                               ; preds = %91, %86
  br label %97

95:                                               ; preds = %31
  %96 = call i32 @warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %97

97:                                               ; preds = %30, %95, %94
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_slave(i64) #1

declare dso_local i32 @in_own_cluster(i64) #1

declare dso_local %struct.sk_buff* @tipc_cltr_prepare_routing_msg(i64, i64) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_set_remote_node(%struct.tipc_msg*, i64) #1

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

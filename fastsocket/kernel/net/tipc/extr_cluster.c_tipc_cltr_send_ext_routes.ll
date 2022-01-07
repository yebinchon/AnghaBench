; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_send_ext_routes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_send_ext_routes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cluster = type { i32, i32, i64* }
%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }

@EXT_ROUTING_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Memory squeeze: broadcast of external route failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_cltr_send_ext_routes(%struct.cluster* %0, i32 %1) #0 {
  %3 = alloca %struct.cluster*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tipc_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cluster* %0, %struct.cluster** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.cluster*, %struct.cluster** %3, align 8
  %11 = getelementptr inbounds %struct.cluster, %struct.cluster* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.cluster*, %struct.cluster** %3, align 8
  %14 = getelementptr inbounds %struct.cluster, %struct.cluster* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @in_own_cluster(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %96

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @is_slave(i32 %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @in_own_cluster(i32 %26)
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.cluster*, %struct.cluster** %3, align 8
  %30 = getelementptr inbounds %struct.cluster, %struct.cluster* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  %34 = load %struct.cluster*, %struct.cluster** %3, align 8
  %35 = getelementptr inbounds %struct.cluster, %struct.cluster* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.sk_buff* @tipc_cltr_prepare_routing_msg(i32 %33, i32 %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %5, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %40, label %94

40:                                               ; preds = %19
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %41)
  store %struct.tipc_msg* %42, %struct.tipc_msg** %6, align 8
  %43 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %44 = load %struct.cluster*, %struct.cluster** %3, align 8
  %45 = getelementptr inbounds %struct.cluster, %struct.cluster* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @msg_set_remote_node(%struct.tipc_msg* %43, i32 %46)
  %48 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %49 = load i32, i32* @EXT_ROUTING_TABLE, align 4
  %50 = call i32 @msg_set_type(%struct.tipc_msg* %48, i32 %49)
  store i32 1, i32* %8, align 4
  br label %51

51:                                               ; preds = %79, %40
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %82

55:                                               ; preds = %51
  %56 = load %struct.cluster*, %struct.cluster** %3, align 8
  %57 = getelementptr inbounds %struct.cluster, %struct.cluster* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %55
  %65 = load %struct.cluster*, %struct.cluster** %3, align 8
  %66 = getelementptr inbounds %struct.cluster, %struct.cluster* %65, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @tipc_node_has_active_links(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %64
  store i32 1, i32* %9, align 4
  %75 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @msg_set_dataoctet(%struct.tipc_msg* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %64, %55
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %51

82:                                               ; preds = %51
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @tipc_link_send(%struct.sk_buff* %86, i32 %87, i32 %88)
  br label %93

90:                                               ; preds = %82
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = call i32 @buf_discard(%struct.sk_buff* %91)
  br label %93

93:                                               ; preds = %90, %85
  br label %96

94:                                               ; preds = %19
  %95 = call i32 @warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %18, %94, %93
  ret void
}

declare dso_local i32 @in_own_cluster(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_slave(i32) #1

declare dso_local %struct.sk_buff* @tipc_cltr_prepare_routing_msg(i32, i32) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_set_remote_node(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_type(%struct.tipc_msg*, i32) #1

declare dso_local i64 @tipc_node_has_active_links(i64) #1

declare dso_local i32 @msg_set_dataoctet(%struct.tipc_msg*, i32) #1

declare dso_local i32 @tipc_link_send(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

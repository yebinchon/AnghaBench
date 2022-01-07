; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cluster = type { i32, i32, %struct.tipc_node**, i32 }
%struct.tipc_node = type { i32 }
%struct.sk_buff = type { i32 }

@tipc_max_nodes = common dso_local global i32 0, align 4
@LOWEST_SLAVE = common dso_local global i32 0, align 4
@tipc_highest_allowed_slave = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cluster*, %struct.sk_buff*, i32, i32)* @tipc_cltr_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_cltr_multicast(%struct.cluster* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cluster*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.tipc_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cluster* %0, %struct.cluster** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sle i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = icmp sge i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @tipc_max_nodes, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %34, label %24

24:                                               ; preds = %20, %4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @LOWEST_SLAVE, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @tipc_highest_allowed_slave, align 4
  %31 = icmp sle i32 %29, %30
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ false, %24 ], [ %31, %28 ]
  br label %34

34:                                               ; preds = %32, %20
  %35 = phi i1 [ true, %20 ], [ %33, %32 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = icmp sge i32 %38, 1
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @tipc_max_nodes, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %54, label %44

44:                                               ; preds = %40, %34
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @LOWEST_SLAVE, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @tipc_highest_allowed_slave, align 4
  %51 = icmp sle i32 %49, %50
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i1 [ false, %44 ], [ %51, %48 ]
  br label %54

54:                                               ; preds = %52, %40
  %55 = phi i1 [ true, %40 ], [ %53, %52 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load %struct.cluster*, %struct.cluster** %5, align 8
  %59 = getelementptr inbounds %struct.cluster, %struct.cluster* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @in_own_cluster(i32 %60)
  %62 = call i32 @assert(i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = call i64 @is_slave(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %54
  %67 = load %struct.cluster*, %struct.cluster** %5, align 8
  %68 = getelementptr inbounds %struct.cluster, %struct.cluster* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  br label %74

70:                                               ; preds = %54
  %71 = load %struct.cluster*, %struct.cluster** %5, align 8
  %72 = getelementptr inbounds %struct.cluster, %struct.cluster* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  br label %74

74:                                               ; preds = %70, %66
  %75 = phi i32 [ %69, %66 ], [ %73, %70 ]
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %79, %74
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %124, %81
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %87, label %127

87:                                               ; preds = %83
  %88 = load %struct.cluster*, %struct.cluster** %5, align 8
  %89 = getelementptr inbounds %struct.cluster, %struct.cluster* %88, i32 0, i32 2
  %90 = load %struct.tipc_node**, %struct.tipc_node*** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.tipc_node*, %struct.tipc_node** %90, i64 %92
  %94 = load %struct.tipc_node*, %struct.tipc_node** %93, align 8
  store %struct.tipc_node* %94, %struct.tipc_node** %10, align 8
  %95 = load %struct.tipc_node*, %struct.tipc_node** %10, align 8
  %96 = icmp ne %struct.tipc_node* %95, null
  br i1 %96, label %97, label %123

97:                                               ; preds = %87
  %98 = load %struct.tipc_node*, %struct.tipc_node** %10, align 8
  %99 = call i64 @tipc_node_has_active_links(%struct.tipc_node* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %123

101:                                              ; preds = %97
  %102 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %103 = load i32, i32* @GFP_ATOMIC, align 4
  %104 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %102, i32 %103)
  store %struct.sk_buff* %104, %struct.sk_buff** %9, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %106 = icmp eq %struct.sk_buff* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %127

108:                                              ; preds = %101
  %109 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %110 = call i32 @buf_msg(%struct.sk_buff* %109)
  %111 = load %struct.tipc_node*, %struct.tipc_node** %10, align 8
  %112 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @msg_set_destnode(i32 %110, i32 %113)
  %115 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %116 = load %struct.tipc_node*, %struct.tipc_node** %10, align 8
  %117 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.tipc_node*, %struct.tipc_node** %10, align 8
  %120 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @tipc_link_send(%struct.sk_buff* %115, i32 %118, i32 %121)
  br label %123

123:                                              ; preds = %108, %97, %87
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %11, align 4
  br label %83

127:                                              ; preds = %107, %83
  %128 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %129 = call i32 @buf_discard(%struct.sk_buff* %128)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @in_own_cluster(i32) #1

declare dso_local i64 @is_slave(i32) #1

declare dso_local i64 @tipc_node_has_active_links(%struct.tipc_node*) #1

declare dso_local %struct.sk_buff* @skb_copy(%struct.sk_buff*, i32) #1

declare dso_local i32 @msg_set_destnode(i32, i32) #1

declare dso_local i32 @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @tipc_link_send(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

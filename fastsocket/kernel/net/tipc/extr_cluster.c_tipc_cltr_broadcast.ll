; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_broadcast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_broadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.cluster = type { i32, i32, %struct.tipc_node**, i32 }
%struct.tipc_node = type { i32 }

@tipc_mode = common dso_local global i64 0, align 8
@TIPC_NET_MODE = common dso_local global i64 0, align 8
@tipc_own_addr = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@LOWEST_SLAVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_cltr_broadcast(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.cluster*, align 8
  %5 = alloca %struct.tipc_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %10 = load i64, i64* @tipc_mode, align 8
  %11 = load i64, i64* @TIPC_NET_MODE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %82

13:                                               ; preds = %1
  %14 = load i32, i32* @tipc_own_addr, align 4
  %15 = call %struct.cluster* @tipc_cltr_find(i32 %14)
  store %struct.cluster* %15, %struct.cluster** %4, align 8
  %16 = load %struct.cluster*, %struct.cluster** %4, align 8
  %17 = getelementptr inbounds %struct.cluster, %struct.cluster* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @in_own_cluster(i32 %18)
  %20 = call i32 @assert(i32 %19)
  store i32 1, i32* %7, align 4
  %21 = load %struct.cluster*, %struct.cluster** %4, align 8
  %22 = getelementptr inbounds %struct.cluster, %struct.cluster* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %24

24:                                               ; preds = %78, %13
  %25 = load i32, i32* %9, align 4
  %26 = icmp sle i32 %25, 2
  br i1 %26, label %27, label %81

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %70, %27
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %73

33:                                               ; preds = %29
  %34 = load %struct.cluster*, %struct.cluster** %4, align 8
  %35 = getelementptr inbounds %struct.cluster, %struct.cluster* %34, i32 0, i32 2
  %36 = load %struct.tipc_node**, %struct.tipc_node*** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.tipc_node*, %struct.tipc_node** %36, i64 %38
  %40 = load %struct.tipc_node*, %struct.tipc_node** %39, align 8
  store %struct.tipc_node* %40, %struct.tipc_node** %5, align 8
  %41 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %42 = icmp ne %struct.tipc_node* %41, null
  br i1 %42, label %43, label %69

43:                                               ; preds = %33
  %44 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %45 = call i64 @tipc_node_has_active_links(%struct.tipc_node* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %43
  %48 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %48, i32 %49)
  store %struct.sk_buff* %50, %struct.sk_buff** %3, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %52 = icmp eq %struct.sk_buff* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %83

54:                                               ; preds = %47
  %55 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %56 = call i32 @buf_msg(%struct.sk_buff* %55)
  %57 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %58 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @msg_set_destnode(i32 %56, i32 %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %62 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %63 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %66 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @tipc_link_send(%struct.sk_buff* %61, i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %54, %43, %33
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %29

73:                                               ; preds = %29
  %74 = load i32, i32* @LOWEST_SLAVE, align 4
  store i32 %74, i32* %7, align 4
  %75 = load %struct.cluster*, %struct.cluster** %4, align 8
  %76 = getelementptr inbounds %struct.cluster, %struct.cluster* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %24

81:                                               ; preds = %24
  br label %82

82:                                               ; preds = %81, %1
  br label %83

83:                                               ; preds = %82, %53
  %84 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %85 = call i32 @buf_discard(%struct.sk_buff* %84)
  ret void
}

declare dso_local %struct.cluster* @tipc_cltr_find(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @in_own_cluster(i32) #1

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

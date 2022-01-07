; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_node.h_tipc_node_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_node.h_tipc_node_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node = type { i32 }
%struct.cluster = type { %struct.tipc_node** }

@tipc_local_nodes = common dso_local global %struct.tipc_node** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tipc_node* (i32)* @tipc_node_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tipc_node* @tipc_node_find(i32 %0) #0 {
  %2 = alloca %struct.tipc_node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cluster*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @in_own_cluster(i32 %5)
  %7 = call i64 @likely(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.tipc_node**, %struct.tipc_node*** @tipc_local_nodes, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @tipc_node(i32 %11)
  %13 = getelementptr inbounds %struct.tipc_node*, %struct.tipc_node** %10, i64 %12
  %14 = load %struct.tipc_node*, %struct.tipc_node** %13, align 8
  store %struct.tipc_node* %14, %struct.tipc_node** %2, align 8
  br label %35

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @tipc_addr_domain_valid(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = call %struct.cluster* @tipc_cltr_find(i32 %20)
  store %struct.cluster* %21, %struct.cluster** %4, align 8
  %22 = load %struct.cluster*, %struct.cluster** %4, align 8
  %23 = icmp ne %struct.cluster* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.cluster*, %struct.cluster** %4, align 8
  %26 = getelementptr inbounds %struct.cluster, %struct.cluster* %25, i32 0, i32 0
  %27 = load %struct.tipc_node**, %struct.tipc_node*** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @tipc_node(i32 %28)
  %30 = getelementptr inbounds %struct.tipc_node*, %struct.tipc_node** %27, i64 %29
  %31 = load %struct.tipc_node*, %struct.tipc_node** %30, align 8
  store %struct.tipc_node* %31, %struct.tipc_node** %2, align 8
  br label %35

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32, %15
  br label %34

34:                                               ; preds = %33
  store %struct.tipc_node* null, %struct.tipc_node** %2, align 8
  br label %35

35:                                               ; preds = %34, %24, %9
  %36 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  ret %struct.tipc_node* %36
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @in_own_cluster(i32) #1

declare dso_local i64 @tipc_node(i32) #1

declare dso_local i64 @tipc_addr_domain_valid(i32) #1

declare dso_local %struct.cluster* @tipc_cltr_find(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

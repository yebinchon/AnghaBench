; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_node.c_tipc_node_select_next_hop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_node.c_tipc_node_select_next_hop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tipc_node* @tipc_node_select_next_hop(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.tipc_node*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tipc_node*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @tipc_addr_domain_valid(i64 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.tipc_node* null, %struct.tipc_node** %3, align 8
  br label %75

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = call %struct.tipc_node* @tipc_node_find(i64 %13)
  store %struct.tipc_node* %14, %struct.tipc_node** %6, align 8
  %15 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %16 = icmp ne %struct.tipc_node* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %19 = call i64 @tipc_node_has_active_links(%struct.tipc_node* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  store %struct.tipc_node* %22, %struct.tipc_node** %3, align 8
  br label %75

23:                                               ; preds = %17, %12
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @is_slave(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @in_own_cluster(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store %struct.tipc_node* null, %struct.tipc_node** %3, align 8
  br label %75

32:                                               ; preds = %27, %23
  %33 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @tipc_node_select_router(%struct.tipc_node* %33, i64 %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call %struct.tipc_node* @tipc_node_select(i64 %39, i64 %40)
  store %struct.tipc_node* %41, %struct.tipc_node** %3, align 8
  br label %75

42:                                               ; preds = %32
  %43 = load i64, i64* %4, align 8
  %44 = call i64 @is_slave(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store %struct.tipc_node* null, %struct.tipc_node** %3, align 8
  br label %75

47:                                               ; preds = %42
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @tipc_zone(i64 %48)
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @tipc_cluster(i64 %50)
  %52 = call i64 @tipc_addr(i32 %49, i32 %51, i32 0)
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call %struct.tipc_node* @tipc_net_select_remote_node(i64 %53, i64 %54)
  store %struct.tipc_node* %55, %struct.tipc_node** %6, align 8
  %56 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %57 = icmp ne %struct.tipc_node* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %47
  %59 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %60 = call i64 @tipc_node_has_active_links(%struct.tipc_node* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  store %struct.tipc_node* %63, %struct.tipc_node** %3, align 8
  br label %75

64:                                               ; preds = %58, %47
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* %5, align 8
  %67 = call i64 @tipc_net_select_router(i64 %65, i64 %66)
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %5, align 8
  %73 = call %struct.tipc_node* @tipc_node_select(i64 %71, i64 %72)
  store %struct.tipc_node* %73, %struct.tipc_node** %3, align 8
  br label %75

74:                                               ; preds = %64
  store %struct.tipc_node* null, %struct.tipc_node** %3, align 8
  br label %75

75:                                               ; preds = %74, %70, %62, %46, %38, %31, %21, %11
  %76 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  ret %struct.tipc_node* %76
}

declare dso_local i32 @tipc_addr_domain_valid(i64) #1

declare dso_local %struct.tipc_node* @tipc_node_find(i64) #1

declare dso_local i64 @tipc_node_has_active_links(%struct.tipc_node*) #1

declare dso_local i64 @is_slave(i64) #1

declare dso_local i64 @in_own_cluster(i64) #1

declare dso_local i64 @tipc_node_select_router(%struct.tipc_node*, i64) #1

declare dso_local %struct.tipc_node* @tipc_node_select(i64, i64) #1

declare dso_local i64 @tipc_addr(i32, i32, i32) #1

declare dso_local i32 @tipc_zone(i64) #1

declare dso_local i32 @tipc_cluster(i64) #1

declare dso_local %struct.tipc_node* @tipc_net_select_remote_node(i64, i64) #1

declare dso_local i64 @tipc_net_select_router(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_get_max_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_get_max_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node = type { %struct.link** }
%struct.link = type { i32 }

@MAX_PKT_DEFAULT = common dso_local global i64 0, align 8
@tipc_own_addr = common dso_local global i64 0, align 8
@MAX_MSG_SIZE = common dso_local global i64 0, align 8
@tipc_net_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tipc_link_get_max_pkt(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tipc_node*, align 8
  %7 = alloca %struct.link*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* @MAX_PKT_DEFAULT, align 8
  store i64 %9, i64* %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @tipc_own_addr, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64, i64* @MAX_MSG_SIZE, align 8
  store i64 %14, i64* %3, align 8
  br label %43

15:                                               ; preds = %2
  %16 = call i32 @read_lock_bh(i32* @tipc_net_lock)
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call %struct.tipc_node* @tipc_node_select(i64 %17, i64 %18)
  store %struct.tipc_node* %19, %struct.tipc_node** %6, align 8
  %20 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %21 = icmp ne %struct.tipc_node* %20, null
  br i1 %21, label %22, label %40

22:                                               ; preds = %15
  %23 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %24 = call i32 @tipc_node_lock(%struct.tipc_node* %23)
  %25 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %26 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %25, i32 0, i32 0
  %27 = load %struct.link**, %struct.link*** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = and i64 %28, 1
  %30 = getelementptr inbounds %struct.link*, %struct.link** %27, i64 %29
  %31 = load %struct.link*, %struct.link** %30, align 8
  store %struct.link* %31, %struct.link** %7, align 8
  %32 = load %struct.link*, %struct.link** %7, align 8
  %33 = icmp ne %struct.link* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load %struct.link*, %struct.link** %7, align 8
  %36 = call i64 @link_max_pkt(%struct.link* %35)
  store i64 %36, i64* %8, align 8
  br label %37

37:                                               ; preds = %34, %22
  %38 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %39 = call i32 @tipc_node_unlock(%struct.tipc_node* %38)
  br label %40

40:                                               ; preds = %37, %15
  %41 = call i32 @read_unlock_bh(i32* @tipc_net_lock)
  %42 = load i64, i64* %8, align 8
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %40, %13
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local %struct.tipc_node* @tipc_node_select(i64, i64) #1

declare dso_local i32 @tipc_node_lock(%struct.tipc_node*) #1

declare dso_local i64 @link_max_pkt(%struct.link*) #1

declare dso_local i32 @tipc_node_unlock(%struct.tipc_node*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

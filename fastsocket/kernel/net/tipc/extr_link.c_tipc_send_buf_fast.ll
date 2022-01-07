; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_send_buf_fast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_send_buf_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.link = type { %struct.link** }
%struct.tipc_node = type { %struct.tipc_node** }

@tipc_own_addr = common dso_local global i64 0, align 8
@tipc_net_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"send_fast: buf %x selected %x, destnode = %x\0A\00", align 1
@TIPC_ERR_NO_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_send_buf_fast(%struct.sk_buff* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.link*, align 8
  %7 = alloca %struct.tipc_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i32 @buf_msg(%struct.sk_buff* %11)
  %13 = call i32 @msg_origport(i32 %12)
  %14 = and i32 %13, 1
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @tipc_own_addr, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @tipc_port_recv_msg(%struct.sk_buff* %20)
  store i32 %21, i32* %3, align 4
  br label %70

22:                                               ; preds = %2
  %23 = call i32 @read_lock_bh(i32* @tipc_net_lock)
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call %struct.tipc_node* @tipc_node_select(i64 %24, i64 %25)
  store %struct.tipc_node* %26, %struct.tipc_node** %7, align 8
  %27 = load %struct.tipc_node*, %struct.tipc_node** %7, align 8
  %28 = call i64 @likely(%struct.tipc_node* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %22
  %31 = load %struct.tipc_node*, %struct.tipc_node** %7, align 8
  %32 = call i32 @tipc_node_lock(%struct.tipc_node* %31)
  %33 = load %struct.tipc_node*, %struct.tipc_node** %7, align 8
  %34 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %33, i32 0, i32 0
  %35 = load %struct.tipc_node**, %struct.tipc_node*** %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds %struct.tipc_node*, %struct.tipc_node** %35, i64 %36
  %38 = load %struct.tipc_node*, %struct.tipc_node** %37, align 8
  %39 = bitcast %struct.tipc_node* %38 to %struct.link*
  store %struct.link* %39, %struct.link** %6, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = load %struct.link*, %struct.link** %6, align 8
  %42 = bitcast %struct.link* %41 to %struct.tipc_node*
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %40, %struct.tipc_node* %42, i64 %43)
  %45 = load %struct.link*, %struct.link** %6, align 8
  %46 = bitcast %struct.link* %45 to %struct.tipc_node*
  %47 = call i64 @likely(%struct.tipc_node* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %30
  %50 = load %struct.link*, %struct.link** %6, align 8
  %51 = bitcast %struct.link* %50 to %struct.tipc_node*
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call i32 @link_send_buf_fast(%struct.tipc_node* %51, %struct.sk_buff* %52, i64* %10)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.tipc_node*, %struct.tipc_node** %7, align 8
  %55 = call i32 @tipc_node_unlock(%struct.tipc_node* %54)
  %56 = call i32 @read_unlock_bh(i32* @tipc_net_lock)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %70

58:                                               ; preds = %30
  %59 = load %struct.tipc_node*, %struct.tipc_node** %7, align 8
  %60 = call i32 @tipc_node_unlock(%struct.tipc_node* %59)
  br label %61

61:                                               ; preds = %58, %22
  %62 = call i32 @read_unlock_bh(i32* @tipc_net_lock)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = call i32 @buf_msg(%struct.sk_buff* %63)
  %65 = call i32 @msg_data_sz(i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = load i32, i32* @TIPC_ERR_NO_NODE, align 4
  %68 = call i32 @tipc_reject_msg(%struct.sk_buff* %66, i32 %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %61, %49, %19
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @msg_origport(i32) #1

declare dso_local i32 @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @tipc_port_recv_msg(%struct.sk_buff*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local %struct.tipc_node* @tipc_node_select(i64, i64) #1

declare dso_local i64 @likely(%struct.tipc_node*) #1

declare dso_local i32 @tipc_node_lock(%struct.tipc_node*) #1

declare dso_local i32 @dbg(i8*, %struct.sk_buff*, %struct.tipc_node*, i64) #1

declare dso_local i32 @link_send_buf_fast(%struct.tipc_node*, %struct.sk_buff*, i64*) #1

declare dso_local i32 @tipc_node_unlock(%struct.tipc_node*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @msg_data_sz(i32) #1

declare dso_local i32 @tipc_reject_msg(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

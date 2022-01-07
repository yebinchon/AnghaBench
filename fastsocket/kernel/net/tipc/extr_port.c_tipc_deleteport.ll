; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_deleteport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_deleteport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32, i32, i32, %struct.port*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TIPC_ERR_NO_PORT = common dso_local global i32 0, align 4
@tipc_port_list_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Deleted port %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_deleteport(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.port*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @tipc_withdraw(i32 %6, i32 0, i32* null)
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.port* @tipc_port_lock(i32 %8)
  store %struct.port* %9, %struct.port** %4, align 8
  %10 = load %struct.port*, %struct.port** %4, align 8
  %11 = icmp ne %struct.port* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %67

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @tipc_ref_discard(i32 %16)
  %18 = load %struct.port*, %struct.port** %4, align 8
  %19 = call i32 @tipc_port_unlock(%struct.port* %18)
  %20 = load %struct.port*, %struct.port** %4, align 8
  %21 = getelementptr inbounds %struct.port, %struct.port* %20, i32 0, i32 0
  %22 = call i32 @k_cancel_timer(i32* %21)
  %23 = load %struct.port*, %struct.port** %4, align 8
  %24 = getelementptr inbounds %struct.port, %struct.port* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %15
  %29 = load %struct.port*, %struct.port** %4, align 8
  %30 = load i32, i32* @TIPC_ERR_NO_PORT, align 4
  %31 = call %struct.sk_buff* @port_build_peer_abort_msg(%struct.port* %29, i32 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %5, align 8
  %32 = load %struct.port*, %struct.port** %4, align 8
  %33 = getelementptr inbounds %struct.port, %struct.port* %32, i32 0, i32 4
  %34 = call i32 @tipc_nodesub_unsubscribe(i32* %33)
  br label %35

35:                                               ; preds = %28, %15
  %36 = load %struct.port*, %struct.port** %4, align 8
  %37 = getelementptr inbounds %struct.port, %struct.port* %36, i32 0, i32 3
  %38 = load %struct.port*, %struct.port** %37, align 8
  %39 = icmp ne %struct.port* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load %struct.port*, %struct.port** %4, align 8
  %42 = getelementptr inbounds %struct.port, %struct.port* %41, i32 0, i32 3
  %43 = load %struct.port*, %struct.port** %42, align 8
  %44 = call i32 @tipc_reg_remove_port(%struct.port* %43)
  %45 = load %struct.port*, %struct.port** %4, align 8
  %46 = getelementptr inbounds %struct.port, %struct.port* %45, i32 0, i32 3
  %47 = load %struct.port*, %struct.port** %46, align 8
  %48 = call i32 @kfree(%struct.port* %47)
  br label %49

49:                                               ; preds = %40, %35
  %50 = call i32 @spin_lock_bh(i32* @tipc_port_list_lock)
  %51 = load %struct.port*, %struct.port** %4, align 8
  %52 = getelementptr inbounds %struct.port, %struct.port* %51, i32 0, i32 2
  %53 = call i32 @list_del(i32* %52)
  %54 = load %struct.port*, %struct.port** %4, align 8
  %55 = getelementptr inbounds %struct.port, %struct.port* %54, i32 0, i32 1
  %56 = call i32 @list_del(i32* %55)
  %57 = call i32 @spin_unlock_bh(i32* @tipc_port_list_lock)
  %58 = load %struct.port*, %struct.port** %4, align 8
  %59 = getelementptr inbounds %struct.port, %struct.port* %58, i32 0, i32 0
  %60 = call i32 @k_term_timer(i32* %59)
  %61 = load %struct.port*, %struct.port** %4, align 8
  %62 = call i32 @kfree(%struct.port* %61)
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = call i32 @tipc_net_route_msg(%struct.sk_buff* %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %49, %12
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @tipc_withdraw(i32, i32, i32*) #1

declare dso_local %struct.port* @tipc_port_lock(i32) #1

declare dso_local i32 @tipc_ref_discard(i32) #1

declare dso_local i32 @tipc_port_unlock(%struct.port*) #1

declare dso_local i32 @k_cancel_timer(i32*) #1

declare dso_local %struct.sk_buff* @port_build_peer_abort_msg(%struct.port*, i32) #1

declare dso_local i32 @tipc_nodesub_unsubscribe(i32*) #1

declare dso_local i32 @tipc_reg_remove_port(%struct.port*) #1

declare dso_local i32 @kfree(%struct.port*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @k_term_timer(i32*) #1

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @tipc_net_route_msg(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

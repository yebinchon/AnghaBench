; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bcast.c_bclink_send_nack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bcast.c_bclink_send_nack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.sk_buff*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_node = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.tipc_msg = type { i32 }

@INT_H_SIZE = common dso_local global i32 0, align 4
@BCAST_PROTOCOL = common dso_local global i32 0, align 4
@STATE_MSG = common dso_local global i32 0, align 4
@tipc_net_id = common dso_local global i32 0, align 4
@tipc_own_tag = common dso_local global i32 0, align 4
@bcbearer = common dso_local global %struct.TYPE_9__* null, align 8
@bcl = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_node*)* @bclink_send_nack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bclink_send_nack(%struct.tipc_node* %0) #0 {
  %2 = alloca %struct.tipc_node*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.tipc_msg*, align 8
  store %struct.tipc_node* %0, %struct.tipc_node** %2, align 8
  %5 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %6 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %10 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @less(i32 %8, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %89

16:                                               ; preds = %1
  %17 = load i32, i32* @INT_H_SIZE, align 4
  %18 = call %struct.sk_buff* @buf_acquire(i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %3, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %21, label %89

21:                                               ; preds = %16
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %22)
  store %struct.tipc_msg* %23, %struct.tipc_msg** %4, align 8
  %24 = load %struct.tipc_msg*, %struct.tipc_msg** %4, align 8
  %25 = load i32, i32* @BCAST_PROTOCOL, align 4
  %26 = load i32, i32* @STATE_MSG, align 4
  %27 = load i32, i32* @INT_H_SIZE, align 4
  %28 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %29 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @msg_init(%struct.tipc_msg* %24, i32 %25, i32 %26, i32 %27, i32 %30)
  %32 = load %struct.tipc_msg*, %struct.tipc_msg** %4, align 8
  %33 = load i32, i32* @tipc_net_id, align 4
  %34 = call i32 @msg_set_mc_netid(%struct.tipc_msg* %32, i32 %33)
  %35 = load %struct.tipc_msg*, %struct.tipc_msg** %4, align 8
  %36 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %37 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mod(i32 %39)
  %41 = call i32 @msg_set_bcast_ack(%struct.tipc_msg* %35, i32 %40)
  %42 = load %struct.tipc_msg*, %struct.tipc_msg** %4, align 8
  %43 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %44 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @msg_set_bcgap_after(%struct.tipc_msg* %42, i32 %46)
  %48 = load %struct.tipc_msg*, %struct.tipc_msg** %4, align 8
  %49 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %50 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @msg_set_bcgap_to(%struct.tipc_msg* %48, i32 %52)
  %54 = load %struct.tipc_msg*, %struct.tipc_msg** %4, align 8
  %55 = load i32, i32* @tipc_own_tag, align 4
  %56 = call i32 @msg_set_bcast_tag(%struct.tipc_msg* %54, i32 %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** @bcbearer, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %60 = call i64 @tipc_bearer_send(i32* %58, %struct.sk_buff* %59, i32* null)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %21
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bcl, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %69 = call i32 @buf_discard(%struct.sk_buff* %68)
  br label %84

70:                                               ; preds = %21
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bcl, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bcl, align 8
  %75 = call i32 @tipc_bearer_schedule(i32 %73, %struct.TYPE_8__* %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bcl, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  store %struct.sk_buff* %76, %struct.sk_buff** %78, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bcl, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %70, %62
  %85 = load i32, i32* @tipc_own_tag, align 4
  %86 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %87 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %15, %84, %16
  ret void
}

declare dso_local i32 @less(i32, i32) #1

declare dso_local %struct.sk_buff* @buf_acquire(i32) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_init(%struct.tipc_msg*, i32, i32, i32, i32) #1

declare dso_local i32 @msg_set_mc_netid(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_bcast_ack(%struct.tipc_msg*, i32) #1

declare dso_local i32 @mod(i32) #1

declare dso_local i32 @msg_set_bcgap_after(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_bcgap_to(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_bcast_tag(%struct.tipc_msg*, i32) #1

declare dso_local i64 @tipc_bearer_send(i32*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

declare dso_local i32 @tipc_bearer_schedule(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

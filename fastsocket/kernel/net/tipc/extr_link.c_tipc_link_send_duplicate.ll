; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_send_duplicate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_send_duplicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i64, %struct.sk_buff*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { %struct.sk_buff*, i32 }
%struct.tipc_msg = type { i32 }

@CHANGEOVER_PROTOCOL = common dso_local global i32 0, align 4
@DUPLICATE_MSG = common dso_local global i32 0, align 4
@INT_H_SIZE = common dso_local global i64 0, align 8
@MSG_BUNDLER = common dso_local global i64 0, align 8
@CLOSED_MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Link changeover error, unable to send duplicate msg\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%c->%c:\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c">SEND>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_link_send_duplicate(%struct.link* %0, %struct.link* %1) #0 {
  %3 = alloca %struct.link*, align 8
  %4 = alloca %struct.link*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tipc_msg, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.tipc_msg*, align 8
  %9 = alloca i64, align 8
  store %struct.link* %0, %struct.link** %3, align 8
  store %struct.link* %1, %struct.link** %4, align 8
  %10 = load i32, i32* @CHANGEOVER_PROTOCOL, align 4
  %11 = load i32, i32* @DUPLICATE_MSG, align 4
  %12 = load i64, i64* @INT_H_SIZE, align 8
  %13 = load %struct.link*, %struct.link** %3, align 8
  %14 = getelementptr inbounds %struct.link, %struct.link* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @msg_init(%struct.tipc_msg* %6, i32 %10, i32 %11, i64 %12, i32 %15)
  %17 = load %struct.link*, %struct.link** %3, align 8
  %18 = getelementptr inbounds %struct.link, %struct.link* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @msg_set_msgcnt(%struct.tipc_msg* %6, i32 %19)
  %21 = load %struct.link*, %struct.link** %3, align 8
  %22 = getelementptr inbounds %struct.link, %struct.link* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @msg_set_bearer_id(%struct.tipc_msg* %6, i32 %23)
  %25 = load %struct.link*, %struct.link** %3, align 8
  %26 = getelementptr inbounds %struct.link, %struct.link* %25, i32 0, i32 3
  %27 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  store %struct.sk_buff* %27, %struct.sk_buff** %5, align 8
  br label %28

28:                                               ; preds = %104, %2
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %31, label %108

31:                                               ; preds = %28
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %32)
  store %struct.tipc_msg* %33, %struct.tipc_msg** %8, align 8
  %34 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %35 = call i64 @msg_size(%struct.tipc_msg* %34)
  store i64 %35, i64* %9, align 8
  %36 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %37 = call i64 @msg_user(%struct.tipc_msg* %36)
  %38 = load i64, i64* @MSG_BUNDLER, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %42 = load i32, i32* @CLOSED_MSG, align 4
  %43 = call i32 @msg_set_type(%struct.tipc_msg* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %31
  %45 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %46 = load %struct.link*, %struct.link** %3, align 8
  %47 = getelementptr inbounds %struct.link, %struct.link* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %48, 1
  %50 = call i32 @mod(i64 %49)
  %51 = call i32 @msg_set_ack(%struct.tipc_msg* %45, i32 %50)
  %52 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %53 = load %struct.link*, %struct.link** %3, align 8
  %54 = getelementptr inbounds %struct.link, %struct.link* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @msg_set_bcast_ack(%struct.tipc_msg* %52, i32 %58)
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @INT_H_SIZE, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @msg_set_size(%struct.tipc_msg* %6, i64 %62)
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* @INT_H_SIZE, align 8
  %66 = add nsw i64 %64, %65
  %67 = call %struct.sk_buff* @buf_acquire(i64 %66)
  store %struct.sk_buff* %67, %struct.sk_buff** %7, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = icmp eq %struct.sk_buff* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %44
  %71 = call i32 @warn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %108

72:                                               ; preds = %44
  %73 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %74 = load i64, i64* @INT_H_SIZE, align 8
  %75 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %73, %struct.tipc_msg* %6, i64 %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %77 = load i64, i64* @INT_H_SIZE, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @skb_copy_to_linear_data_offset(%struct.sk_buff* %76, i64 %77, i32 %80, i64 %81)
  %83 = load %struct.link*, %struct.link** %3, align 8
  %84 = getelementptr inbounds %struct.link, %struct.link* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.link*, %struct.link** %4, align 8
  %89 = getelementptr inbounds %struct.link, %struct.link* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dbg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %92)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %95 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %94)
  %96 = call i32 @msg_dbg(%struct.tipc_msg* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %97 = load %struct.link*, %struct.link** %4, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %99 = call i32 @tipc_link_send_buf(%struct.link* %97, %struct.sk_buff* %98)
  %100 = load %struct.link*, %struct.link** %3, align 8
  %101 = call i32 @tipc_link_is_up(%struct.link* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %72
  br label %108

104:                                              ; preds = %72
  %105 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 0
  %107 = load %struct.sk_buff*, %struct.sk_buff** %106, align 8
  store %struct.sk_buff* %107, %struct.sk_buff** %5, align 8
  br label %28

108:                                              ; preds = %70, %103, %28
  ret void
}

declare dso_local i32 @msg_init(%struct.tipc_msg*, i32, i32, i64, i32) #1

declare dso_local i32 @msg_set_msgcnt(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_bearer_id(%struct.tipc_msg*, i32) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i64 @msg_size(%struct.tipc_msg*) #1

declare dso_local i64 @msg_user(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_type(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_ack(%struct.tipc_msg*, i32) #1

declare dso_local i32 @mod(i64) #1

declare dso_local i32 @msg_set_bcast_ack(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_size(%struct.tipc_msg*, i64) #1

declare dso_local %struct.sk_buff* @buf_acquire(i64) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, %struct.tipc_msg*, i64) #1

declare dso_local i32 @skb_copy_to_linear_data_offset(%struct.sk_buff*, i64, i32, i64) #1

declare dso_local i32 @dbg(i8*, i32, i32) #1

declare dso_local i32 @msg_dbg(%struct.tipc_msg*, i8*) #1

declare dso_local i32 @tipc_link_send_buf(%struct.link*, %struct.sk_buff*) #1

declare dso_local i32 @tipc_link_is_up(%struct.link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c_hidp_del_connection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c_hidp_del_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_conndel_req = type { i32, i32 }
%struct.hidp_session = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@hidp_session_sem = common dso_local global i32 0, align 4
@HIDP_VIRTUAL_CABLE_UNPLUG = common dso_local global i32 0, align 4
@HIDP_TRANS_HID_CONTROL = common dso_local global i32 0, align 4
@HIDP_CTRL_VIRTUAL_CABLE_UNPLUG = common dso_local global i32 0, align 4
@EUNATCH = common dso_local global i8* null, align 8
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hidp_del_connection(%struct.hidp_conndel_req* %0) #0 {
  %2 = alloca %struct.hidp_conndel_req*, align 8
  %3 = alloca %struct.hidp_session*, align 8
  %4 = alloca i32, align 4
  store %struct.hidp_conndel_req* %0, %struct.hidp_conndel_req** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @down_read(i32* @hidp_session_sem)
  %7 = load %struct.hidp_conndel_req*, %struct.hidp_conndel_req** %2, align 8
  %8 = getelementptr inbounds %struct.hidp_conndel_req, %struct.hidp_conndel_req* %7, i32 0, i32 1
  %9 = call %struct.hidp_session* @__hidp_get_session(i32* %8)
  store %struct.hidp_session* %9, %struct.hidp_session** %3, align 8
  %10 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %11 = icmp ne %struct.hidp_session* %10, null
  br i1 %11, label %12, label %53

12:                                               ; preds = %1
  %13 = load %struct.hidp_conndel_req*, %struct.hidp_conndel_req** %2, align 8
  %14 = getelementptr inbounds %struct.hidp_conndel_req, %struct.hidp_conndel_req* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @HIDP_VIRTUAL_CABLE_UNPLUG, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %22 = load i32, i32* @HIDP_TRANS_HID_CONTROL, align 4
  %23 = load i32, i32* @HIDP_CTRL_VIRTUAL_CABLE_UNPLUG, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @hidp_send_ctrl_message(%struct.hidp_session* %21, i32 %24, i32* null, i32 0)
  br label %52

26:                                               ; preds = %12
  %27 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %28 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %27, i32 0, i32 4
  %29 = call i32 @skb_queue_purge(i32* %28)
  %30 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %31 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %30, i32 0, i32 3
  %32 = call i32 @skb_queue_purge(i32* %31)
  %33 = load i8*, i8** @EUNATCH, align 8
  %34 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %35 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %34, i32 0, i32 2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i8* %33, i8** %39, align 8
  %40 = load i8*, i8** @EUNATCH, align 8
  %41 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %42 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i8* %40, i8** %46, align 8
  %47 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %48 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %47, i32 0, i32 0
  %49 = call i32 @atomic_inc(i32* %48)
  %50 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %51 = call i32 @hidp_schedule(%struct.hidp_session* %50)
  br label %52

52:                                               ; preds = %26, %20
  br label %56

53:                                               ; preds = %1
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %52
  %57 = call i32 @up_read(i32* @hidp_session_sem)
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.hidp_session* @__hidp_get_session(i32*) #1

declare dso_local i32 @hidp_send_ctrl_message(%struct.hidp_session*, i32, i32*, i32) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @hidp_schedule(%struct.hidp_session*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

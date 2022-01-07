; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_subscr.c_subscr_named_msg_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_subscr.c_subscr_named_msg_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32, i32* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_portid = type { i32 }
%struct.tipc_name_seq = type { i32 }
%struct.subscriber = type { i64, i32*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@subscr_named_msg_event.msg_sect = internal global %struct.iovec zeroinitializer, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Subscriber rejected, no memory\0A\00", align 1
@topsrv = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@subscr_conn_shutdown_event = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Subscriber rejected, unable to create port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, %struct.sk_buff**, i32*, i64, i64, %struct.tipc_portid*, %struct.tipc_name_seq*)* @subscr_named_msg_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subscr_named_msg_event(i8* %0, i64 %1, %struct.sk_buff** %2, i32* %3, i64 %4, i64 %5, %struct.tipc_portid* %6, %struct.tipc_name_seq* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sk_buff**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.tipc_portid*, align 8
  %16 = alloca %struct.tipc_name_seq*, align 8
  %17 = alloca %struct.subscriber*, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store %struct.tipc_portid* %6, %struct.tipc_portid** %15, align 8
  store %struct.tipc_name_seq* %7, %struct.tipc_name_seq** %16, align 8
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.subscriber* @kzalloc(i32 24, i32 %19)
  store %struct.subscriber* %20, %struct.subscriber** %17, align 8
  %21 = load %struct.subscriber*, %struct.subscriber** %17, align 8
  %22 = icmp eq %struct.subscriber* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %8
  %24 = call i32 @warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %85

25:                                               ; preds = %8
  %26 = load %struct.subscriber*, %struct.subscriber** %17, align 8
  %27 = getelementptr inbounds %struct.subscriber, %struct.subscriber* %26, i32 0, i32 3
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.subscriber*, %struct.subscriber** %17, align 8
  %30 = getelementptr inbounds %struct.subscriber, %struct.subscriber* %29, i32 0, i32 2
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @topsrv, i32 0, i32 2), align 4
  %33 = load %struct.subscriber*, %struct.subscriber** %17, align 8
  %34 = load i64, i64* %14, align 8
  %35 = load i32, i32* @subscr_conn_shutdown_event, align 4
  %36 = load %struct.subscriber*, %struct.subscriber** %17, align 8
  %37 = getelementptr inbounds %struct.subscriber, %struct.subscriber* %36, i32 0, i32 0
  %38 = call i32 @tipc_createport(i32 %32, %struct.subscriber* %33, i64 %34, i32* null, i32* null, i32 %35, i32* null, i32* null, i32 (%struct.subscriber*, i64, %struct.sk_buff**, i32*, i64)* @subscr_conn_msg_event, i32* null, i64* %37)
  %39 = load %struct.subscriber*, %struct.subscriber** %17, align 8
  %40 = getelementptr inbounds %struct.subscriber, %struct.subscriber* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %25
  %44 = call i32 @warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.subscriber*, %struct.subscriber** %17, align 8
  %46 = call i32 @kfree(%struct.subscriber* %45)
  br label %85

47:                                               ; preds = %25
  %48 = load %struct.subscriber*, %struct.subscriber** %17, align 8
  %49 = getelementptr inbounds %struct.subscriber, %struct.subscriber* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.tipc_portid*, %struct.tipc_portid** %15, align 8
  %52 = call i32 @tipc_connect2port(i64 %50, %struct.tipc_portid* %51)
  %53 = load %struct.subscriber*, %struct.subscriber** %17, align 8
  %54 = getelementptr inbounds %struct.subscriber, %struct.subscriber* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call %struct.TYPE_6__* @tipc_port_lock(i64 %55)
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.subscriber*, %struct.subscriber** %17, align 8
  %61 = getelementptr inbounds %struct.subscriber, %struct.subscriber* %60, i32 0, i32 1
  store i32* %59, i32** %61, align 8
  %62 = call i32 @spin_lock_bh(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @topsrv, i32 0, i32 0))
  %63 = load %struct.subscriber*, %struct.subscriber** %17, align 8
  %64 = getelementptr inbounds %struct.subscriber, %struct.subscriber* %63, i32 0, i32 2
  %65 = call i32 @list_add(i32* %64, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @topsrv, i32 0, i32 1))
  %66 = call i32 @spin_unlock_bh(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @topsrv, i32 0, i32 0))
  %67 = load %struct.subscriber*, %struct.subscriber** %17, align 8
  %68 = getelementptr inbounds %struct.subscriber, %struct.subscriber* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %18, align 8
  %70 = load %struct.subscriber*, %struct.subscriber** %17, align 8
  %71 = getelementptr inbounds %struct.subscriber, %struct.subscriber* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @spin_unlock_bh(i32* %72)
  %74 = load i64, i64* %18, align 8
  %75 = call i32 @tipc_send(i64 %74, i32 1, %struct.iovec* @subscr_named_msg_event.msg_sect)
  %76 = load i64, i64* %13, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %47
  %79 = load %struct.subscriber*, %struct.subscriber** %17, align 8
  %80 = load i64, i64* %18, align 8
  %81 = load %struct.sk_buff**, %struct.sk_buff*** %11, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = load i64, i64* %13, align 8
  %84 = call i32 @subscr_conn_msg_event(%struct.subscriber* %79, i64 %80, %struct.sk_buff** %81, i32* %82, i64 %83)
  br label %85

85:                                               ; preds = %23, %43, %78, %47
  ret void
}

declare dso_local %struct.subscriber* @kzalloc(i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tipc_createport(i32, %struct.subscriber*, i64, i32*, i32*, i32, i32*, i32*, i32 (%struct.subscriber*, i64, %struct.sk_buff**, i32*, i64)*, i32*, i64*) #1

declare dso_local i32 @subscr_conn_msg_event(%struct.subscriber*, i64, %struct.sk_buff**, i32*, i64) #1

declare dso_local i32 @kfree(%struct.subscriber*) #1

declare dso_local i32 @tipc_connect2port(i64, %struct.tipc_portid*) #1

declare dso_local %struct.TYPE_6__* @tipc_port_lock(i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @tipc_send(i64, i32, %struct.iovec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

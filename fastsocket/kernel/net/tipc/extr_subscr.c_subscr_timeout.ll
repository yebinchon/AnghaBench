; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_subscr.c_subscr_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_subscr.c_subscr_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.subscription = type { i64, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.port = type { i32 }

@TIPC_WAIT_FOREVER = common dso_local global i64 0, align 8
@TIPC_SUBSCR_TIMEOUT = common dso_local global i32 0, align 4
@topsrv = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.subscription*)* @subscr_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subscr_timeout(%struct.subscription* %0) #0 {
  %2 = alloca %struct.subscription*, align 8
  %3 = alloca %struct.port*, align 8
  store %struct.subscription* %0, %struct.subscription** %2, align 8
  %4 = load %struct.subscription*, %struct.subscription** %2, align 8
  %5 = getelementptr inbounds %struct.subscription, %struct.subscription* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = call %struct.port* @tipc_port_lock(i32 %6)
  store %struct.port* %7, %struct.port** %3, align 8
  %8 = load %struct.port*, %struct.port** %3, align 8
  %9 = icmp eq %struct.port* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %49

11:                                               ; preds = %1
  %12 = load %struct.subscription*, %struct.subscription** %2, align 8
  %13 = getelementptr inbounds %struct.subscription, %struct.subscription* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TIPC_WAIT_FOREVER, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.port*, %struct.port** %3, align 8
  %19 = call i32 @tipc_port_unlock(%struct.port* %18)
  br label %49

20:                                               ; preds = %11
  %21 = load %struct.subscription*, %struct.subscription** %2, align 8
  %22 = call i32 @tipc_nametbl_unsubscribe(%struct.subscription* %21)
  %23 = load %struct.subscription*, %struct.subscription** %2, align 8
  %24 = getelementptr inbounds %struct.subscription, %struct.subscription* %23, i32 0, i32 3
  %25 = call i32 @list_del(i32* %24)
  %26 = load %struct.port*, %struct.port** %3, align 8
  %27 = call i32 @tipc_port_unlock(%struct.port* %26)
  %28 = load %struct.subscription*, %struct.subscription** %2, align 8
  %29 = load %struct.subscription*, %struct.subscription** %2, align 8
  %30 = getelementptr inbounds %struct.subscription, %struct.subscription* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.subscription*, %struct.subscription** %2, align 8
  %36 = getelementptr inbounds %struct.subscription, %struct.subscription* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @TIPC_SUBSCR_TIMEOUT, align 4
  %42 = call i32 @subscr_send_event(%struct.subscription* %28, i32 %34, i32 %40, i32 %41, i32 0, i32 0)
  %43 = load %struct.subscription*, %struct.subscription** %2, align 8
  %44 = getelementptr inbounds %struct.subscription, %struct.subscription* %43, i32 0, i32 1
  %45 = call i32 @k_term_timer(i32* %44)
  %46 = load %struct.subscription*, %struct.subscription** %2, align 8
  %47 = call i32 @kfree(%struct.subscription* %46)
  %48 = call i32 @atomic_dec(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @topsrv, i32 0, i32 0))
  br label %49

49:                                               ; preds = %20, %17, %10
  ret void
}

declare dso_local %struct.port* @tipc_port_lock(i32) #1

declare dso_local i32 @tipc_port_unlock(%struct.port*) #1

declare dso_local i32 @tipc_nametbl_unsubscribe(%struct.subscription*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @subscr_send_event(%struct.subscription*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @k_term_timer(i32*) #1

declare dso_local i32 @kfree(%struct.subscription*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

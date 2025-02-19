; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_session_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_session_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"session %p state %ld\00", align 1
@BT_CONNECTED = common dso_local global i32 0, align 4
@BT_LISTEN = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfcomm_session*)* @rfcomm_session_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcomm_session_del(%struct.rfcomm_session* %0) #0 {
  %2 = alloca %struct.rfcomm_session*, align 8
  %3 = alloca i32, align 4
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %2, align 8
  %4 = load %struct.rfcomm_session*, %struct.rfcomm_session** %2, align 8
  %5 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.rfcomm_session*, %struct.rfcomm_session** %2, align 8
  %8 = load %struct.rfcomm_session*, %struct.rfcomm_session** %2, align 8
  %9 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_session* %7, i32 %10)
  %12 = load %struct.rfcomm_session*, %struct.rfcomm_session** %2, align 8
  %13 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %12, i32 0, i32 2
  %14 = call i32 @list_del(i32* %13)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @BT_CONNECTED, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.rfcomm_session*, %struct.rfcomm_session** %2, align 8
  %20 = call i32 @rfcomm_send_disc(%struct.rfcomm_session* %19, i32 0)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.rfcomm_session*, %struct.rfcomm_session** %2, align 8
  %23 = call i32 @rfcomm_session_clear_timer(%struct.rfcomm_session* %22)
  %24 = load %struct.rfcomm_session*, %struct.rfcomm_session** %2, align 8
  %25 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @sock_release(i32 %26)
  %28 = load %struct.rfcomm_session*, %struct.rfcomm_session** %2, align 8
  %29 = call i32 @kfree(%struct.rfcomm_session* %28)
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @BT_LISTEN, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load i32, i32* @THIS_MODULE, align 4
  %35 = call i32 @module_put(i32 %34)
  br label %36

36:                                               ; preds = %33, %21
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_session*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @rfcomm_send_disc(%struct.rfcomm_session*, i32) #1

declare dso_local i32 @rfcomm_session_clear_timer(%struct.rfcomm_session*) #1

declare dso_local i32 @sock_release(i32) #1

declare dso_local i32 @kfree(%struct.rfcomm_session*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

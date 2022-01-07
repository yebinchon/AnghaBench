; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_subscr.c_subscr_conn_msg_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_subscr.c_subscr_conn_msg_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.subscriber = type { i32* }
%struct.subscription = type { i32 }
%struct.tipc_subscr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.sk_buff**, i32*, i32)* @subscr_conn_msg_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subscr_conn_msg_event(i8* %0, i32 %1, %struct.sk_buff** %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.subscriber*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.subscription*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sk_buff** %2, %struct.sk_buff*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.subscriber*
  store %struct.subscriber* %15, %struct.subscriber** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32* @tipc_port_lock(i32 %16)
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %45

20:                                               ; preds = %5
  %21 = load %struct.subscriber*, %struct.subscriber** %11, align 8
  %22 = getelementptr inbounds %struct.subscriber, %struct.subscriber* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %12, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 4
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.subscriber*, %struct.subscriber** %11, align 8
  %29 = call i32 @subscr_terminate(%struct.subscriber* %28)
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 @spin_unlock_bh(i32* %30)
  br label %45

32:                                               ; preds = %20
  %33 = load i32*, i32** %9, align 8
  %34 = bitcast i32* %33 to %struct.tipc_subscr*
  %35 = load %struct.subscriber*, %struct.subscriber** %11, align 8
  %36 = call %struct.subscription* @subscr_subscribe(%struct.tipc_subscr* %34, %struct.subscriber* %35)
  store %struct.subscription* %36, %struct.subscription** %13, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = call i32 @spin_unlock_bh(i32* %37)
  %39 = load %struct.subscription*, %struct.subscription** %13, align 8
  %40 = icmp ne %struct.subscription* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load %struct.subscription*, %struct.subscription** %13, align 8
  %43 = call i32 @tipc_nametbl_subscribe(%struct.subscription* %42)
  br label %44

44:                                               ; preds = %41, %32
  br label %45

45:                                               ; preds = %19, %44, %27
  ret void
}

declare dso_local i32* @tipc_port_lock(i32) #1

declare dso_local i32 @subscr_terminate(%struct.subscriber*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.subscription* @subscr_subscribe(%struct.tipc_subscr*, %struct.subscriber*) #1

declare dso_local i32 @tipc_nametbl_subscribe(%struct.subscription*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

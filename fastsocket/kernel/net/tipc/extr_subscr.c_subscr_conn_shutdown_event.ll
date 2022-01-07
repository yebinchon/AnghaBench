; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_subscr.c_subscr_conn_shutdown_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_subscr.c_subscr_conn_shutdown_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.subscriber = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.sk_buff**, i8*, i32, i32)* @subscr_conn_shutdown_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subscr_conn_shutdown_event(i8* %0, i32 %1, %struct.sk_buff** %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.subscriber*, align 8
  %14 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.sk_buff** %2, %struct.sk_buff*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.subscriber*
  store %struct.subscriber* %16, %struct.subscriber** %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32* @tipc_port_lock(i32 %17)
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  br label %29

21:                                               ; preds = %6
  %22 = load %struct.subscriber*, %struct.subscriber** %13, align 8
  %23 = getelementptr inbounds %struct.subscriber, %struct.subscriber* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %14, align 8
  %25 = load %struct.subscriber*, %struct.subscriber** %13, align 8
  %26 = call i32 @subscr_terminate(%struct.subscriber* %25)
  %27 = load i32*, i32** %14, align 8
  %28 = call i32 @spin_unlock_bh(i32* %27)
  br label %29

29:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32* @tipc_port_lock(i32) #1

declare dso_local i32 @subscr_terminate(%struct.subscriber*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

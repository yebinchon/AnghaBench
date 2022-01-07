; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_auto_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_auto_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32 }
%struct.tipc_msg = type { i32 }
%struct.tipc_sock = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@SS_DISCONNECTING = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.tipc_msg*)* @auto_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auto_connect(%struct.socket* %0, %struct.tipc_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.tipc_msg*, align 8
  %6 = alloca %struct.tipc_sock*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.tipc_msg* %1, %struct.tipc_msg** %5, align 8
  %7 = load %struct.socket*, %struct.socket** %4, align 8
  %8 = getelementptr inbounds %struct.socket, %struct.socket* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.tipc_sock* @tipc_sk(i32 %9)
  store %struct.tipc_sock* %10, %struct.tipc_sock** %6, align 8
  %11 = load %struct.tipc_msg*, %struct.tipc_msg** %5, align 8
  %12 = call i64 @msg_errcode(%struct.tipc_msg* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* @SS_DISCONNECTING, align 4
  %16 = load %struct.socket*, %struct.socket** %4, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @ECONNREFUSED, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %50

20:                                               ; preds = %2
  %21 = load %struct.tipc_msg*, %struct.tipc_msg** %5, align 8
  %22 = call i32 @msg_origport(%struct.tipc_msg* %21)
  %23 = load %struct.tipc_sock*, %struct.tipc_sock** %6, align 8
  %24 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load %struct.tipc_msg*, %struct.tipc_msg** %5, align 8
  %27 = call i32 @msg_orignode(%struct.tipc_msg* %26)
  %28 = load %struct.tipc_sock*, %struct.tipc_sock** %6, align 8
  %29 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.tipc_sock*, %struct.tipc_sock** %6, align 8
  %32 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tipc_sock*, %struct.tipc_sock** %6, align 8
  %37 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %36, i32 0, i32 1
  %38 = call i32 @tipc_connect2port(i32 %35, %struct.TYPE_4__* %37)
  %39 = load %struct.tipc_sock*, %struct.tipc_sock** %6, align 8
  %40 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tipc_msg*, %struct.tipc_msg** %5, align 8
  %45 = call i32 @msg_importance(%struct.tipc_msg* %44)
  %46 = call i32 @tipc_set_portimportance(i32 %43, i32 %45)
  %47 = load i32, i32* @SS_CONNECTED, align 4
  %48 = load %struct.socket*, %struct.socket** %4, align 8
  %49 = getelementptr inbounds %struct.socket, %struct.socket* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %20, %14
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.tipc_sock* @tipc_sk(i32) #1

declare dso_local i64 @msg_errcode(%struct.tipc_msg*) #1

declare dso_local i32 @msg_origport(%struct.tipc_msg*) #1

declare dso_local i32 @msg_orignode(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_connect2port(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @tipc_set_portimportance(i32, i32) #1

declare dso_local i32 @msg_importance(%struct.tipc_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

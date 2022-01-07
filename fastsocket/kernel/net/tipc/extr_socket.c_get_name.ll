; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_get_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_tipc = type { %struct.TYPE_9__, i64, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.tipc_sock = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@SS_CONNECTED = common dso_local global i64 0, align 8
@SS_DISCONNECTING = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@TIPC_ADDR_ID = common dso_local global i32 0, align 4
@AF_TIPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32*, i32)* @get_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_name(%struct.socket* %0, %struct.sockaddr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_tipc*, align 8
  %11 = alloca %struct.tipc_sock*, align 8
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %13 = bitcast %struct.sockaddr* %12 to %struct.sockaddr_tipc*
  store %struct.sockaddr_tipc* %13, %struct.sockaddr_tipc** %10, align 8
  %14 = load %struct.socket*, %struct.socket** %6, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.tipc_sock* @tipc_sk(i32 %16)
  store %struct.tipc_sock* %17, %struct.tipc_sock** %11, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %4
  %21 = load %struct.socket*, %struct.socket** %6, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SS_CONNECTED, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 2
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load %struct.socket*, %struct.socket** %6, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SS_DISCONNECTING, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29, %26
  %36 = load i32, i32* @ENOTCONN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %79

38:                                               ; preds = %29, %20
  %39 = load %struct.tipc_sock*, %struct.tipc_sock** %11, align 8
  %40 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %10, align 8
  %44 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store i32 %42, i32* %46, align 4
  %47 = load %struct.tipc_sock*, %struct.tipc_sock** %11, align 8
  %48 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %10, align 8
  %52 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 8
  br label %65

55:                                               ; preds = %4
  %56 = load %struct.tipc_sock*, %struct.tipc_sock** %11, align 8
  %57 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %10, align 8
  %62 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = call i32 @tipc_ownidentity(i32 %60, %struct.TYPE_10__* %63)
  br label %65

65:                                               ; preds = %55, %38
  %66 = load i32*, i32** %8, align 8
  store i32 32, i32* %66, align 4
  %67 = load i32, i32* @TIPC_ADDR_ID, align 4
  %68 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %10, align 8
  %69 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @AF_TIPC, align 4
  %71 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %10, align 8
  %72 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %10, align 8
  %74 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %10, align 8
  %76 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %65, %35
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local %struct.tipc_sock* @tipc_sk(i32) #1

declare dso_local i32 @tipc_ownidentity(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

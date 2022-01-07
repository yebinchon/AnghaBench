; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_send_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i32* }
%struct.msghdr = type { i32, i32, i32, i64 }
%struct.tipc_port = type { i32, i32, i32 }
%struct.sockaddr_tipc = type { i32 }

@SS_CONNECTED = common dso_local global i64 0, align 8
@SS_DISCONNECTING = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@ELINKCONG = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64)* @send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_packet(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.tipc_port*, align 8
  %12 = alloca %struct.sockaddr_tipc*, align 8
  %13 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.socket*, %struct.socket** %7, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 1
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %10, align 8
  %17 = load %struct.sock*, %struct.sock** %10, align 8
  %18 = call %struct.tipc_port* @tipc_sk_port(%struct.sock* %17)
  store %struct.tipc_port* %18, %struct.tipc_port** %11, align 8
  %19 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %20 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.sockaddr_tipc*
  store %struct.sockaddr_tipc* %22, %struct.sockaddr_tipc** %12, align 8
  %23 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %12, align 8
  %24 = ptrtoint %struct.sockaddr_tipc* %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %29 = load %struct.socket*, %struct.socket** %7, align 8
  %30 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @send_msg(%struct.kiocb* %28, %struct.socket* %29, %struct.msghdr* %30, i64 %31)
  store i32 %32, i32* %5, align 4
  br label %127

33:                                               ; preds = %4
  %34 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %35 = icmp ne %struct.kiocb* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.sock*, %struct.sock** %10, align 8
  %38 = call i32 @lock_sock(%struct.sock* %37)
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %118, %39
  %41 = load %struct.socket*, %struct.socket** %7, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SS_CONNECTED, align 8
  %45 = icmp ne i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %40
  %50 = load %struct.socket*, %struct.socket** %7, align 8
  %51 = getelementptr inbounds %struct.socket, %struct.socket* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SS_DISCONNECTING, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @EPIPE, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %13, align 4
  br label %61

58:                                               ; preds = %49
  %59 = load i32, i32* @ENOTCONN, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %58, %55
  br label %119

62:                                               ; preds = %40
  %63 = load %struct.tipc_port*, %struct.tipc_port** %11, align 8
  %64 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %67 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %70 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @tipc_send(i32 %65, i32 %68, i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @ELINKCONG, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp ne i32 %73, %75
  %77 = zext i1 %76 to i32
  %78 = call i64 @likely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %62
  br label %119

81:                                               ; preds = %62
  %82 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %83 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @MSG_DONTWAIT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i32, i32* @EWOULDBLOCK, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %13, align 4
  br label %119

91:                                               ; preds = %81
  %92 = load %struct.sock*, %struct.sock** %10, align 8
  %93 = call i32 @release_sock(%struct.sock* %92)
  %94 = load %struct.sock*, %struct.sock** %10, align 8
  %95 = getelementptr inbounds %struct.sock, %struct.sock* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.tipc_port*, %struct.tipc_port** %11, align 8
  %99 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %91
  %103 = load %struct.tipc_port*, %struct.tipc_port** %11, align 8
  %104 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  br label %108

108:                                              ; preds = %102, %91
  %109 = phi i1 [ true, %91 ], [ %107, %102 ]
  %110 = zext i1 %109 to i32
  %111 = call i32 @wait_event_interruptible(i32 %97, i32 %110)
  store i32 %111, i32* %13, align 4
  %112 = load %struct.sock*, %struct.sock** %10, align 8
  %113 = call i32 @lock_sock(%struct.sock* %112)
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  br label %119

117:                                              ; preds = %108
  br label %118

118:                                              ; preds = %117
  br i1 true, label %40, label %119

119:                                              ; preds = %118, %116, %88, %80, %61
  %120 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %121 = icmp ne %struct.kiocb* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load %struct.sock*, %struct.sock** %10, align 8
  %124 = call i32 @release_sock(%struct.sock* %123)
  br label %125

125:                                              ; preds = %122, %119
  %126 = load i32, i32* %13, align 4
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %125, %27
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local %struct.tipc_port* @tipc_sk_port(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @send_msg(%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @tipc_send(i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

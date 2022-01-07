; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_rxrpc.c_afs_open_socket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_rxrpc.c_afs_open_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_rxrpc = type { i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@afs_incoming_calls = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"kafsd\00", align 1
@afs_async_calls = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c" = -ENOMEM [wq]\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AF_RXRPC = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c" = %d [socket]\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@CM_SERVICE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AFS_CM_PORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c" = %d [bind]\00", align 1
@afs_rx_interceptor = common dso_local global i32 0, align 4
@afs_socket = common dso_local global %struct.socket* null, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_open_socket() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sockaddr_rxrpc, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @skb_queue_head_init(i32* @afs_incoming_calls)
  %7 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %7, i32* @afs_async_calls, align 4
  %8 = load i32, i32* @afs_async_calls, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %0
  %11 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %1, align 4
  br label %70

14:                                               ; preds = %0
  %15 = load i32, i32* @AF_RXRPC, align 4
  %16 = load i32, i32* @SOCK_DGRAM, align 4
  %17 = load i32, i32* @PF_INET, align 4
  %18 = call i32 @sock_create_kern(i32 %15, i32 %16, i32 %17, %struct.socket** %3)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load i32, i32* @afs_async_calls, align 4
  %23 = call i32 @destroy_workqueue(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %1, align 4
  br label %70

27:                                               ; preds = %14
  %28 = load i32, i32* @GFP_NOFS, align 4
  %29 = load %struct.socket*, %struct.socket** %3, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* @AF_RXRPC, align 4
  %34 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %2, i32 0, i32 4
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @CM_SERVICE, align 4
  %36 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %2, i32 0, i32 3
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @SOCK_DGRAM, align 4
  %38 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %2, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %2, i32 0, i32 0
  store i32 12, i32* %39, align 4
  %40 = load i32, i32* @AF_INET, align 4
  %41 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %2, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @AFS_CM_PORT, align 4
  %45 = call i32 @htons(i32 %44)
  %46 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %2, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %2, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = call i32 @memset(i32* %51, i32 0, i32 4)
  %53 = load %struct.socket*, %struct.socket** %3, align 8
  %54 = bitcast %struct.sockaddr_rxrpc* %2 to %struct.sockaddr*
  %55 = call i32 @kernel_bind(%struct.socket* %53, %struct.sockaddr* %54, i32 28)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %27
  %59 = load %struct.socket*, %struct.socket** %3, align 8
  %60 = call i32 @sock_release(%struct.socket* %59)
  %61 = load i32, i32* %4, align 4
  %62 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %1, align 4
  br label %70

64:                                               ; preds = %27
  %65 = load %struct.socket*, %struct.socket** %3, align 8
  %66 = load i32, i32* @afs_rx_interceptor, align 4
  %67 = call i32 @rxrpc_kernel_intercept_rx_messages(%struct.socket* %65, i32 %66)
  %68 = load %struct.socket*, %struct.socket** %3, align 8
  store %struct.socket* %68, %struct.socket** @afs_socket, align 8
  %69 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %70

70:                                               ; preds = %64, %58, %21, %10
  %71 = load i32, i32* %1, align 4
  ret i32 %71
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i32 @sock_create_kern(i32, i32, i32, %struct.socket**) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @kernel_bind(%struct.socket*, %struct.sockaddr*, i32) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

declare dso_local i32 @rxrpc_kernel_intercept_rx_messages(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

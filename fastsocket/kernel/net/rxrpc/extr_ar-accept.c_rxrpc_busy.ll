; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-accept.c_rxrpc_busy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-accept.c_rxrpc_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_local = type { i32, i32 }
%struct.sockaddr_rxrpc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rxrpc_header = type { i32, i64, i64, i64, i32, i64 }
%struct.msghdr = type { i32, i64, i64, i32*, i32* }
%struct.kvec = type { i32, %struct.rxrpc_header* }

@.str = private unnamed_addr constant [5 x i8] c"%d,,\00", align 1
@RXRPC_PACKET_TYPE_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Tx BUSY %%%u\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c" = -EAGAIN [sendmsg failed: %d]\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_local*, %struct.sockaddr_rxrpc*, %struct.rxrpc_header*)* @rxrpc_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_busy(%struct.rxrpc_local* %0, %struct.sockaddr_rxrpc* %1, %struct.rxrpc_header* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxrpc_local*, align 8
  %6 = alloca %struct.sockaddr_rxrpc*, align 8
  %7 = alloca %struct.rxrpc_header*, align 8
  %8 = alloca %struct.msghdr, align 8
  %9 = alloca [1 x %struct.kvec], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.rxrpc_local* %0, %struct.rxrpc_local** %5, align 8
  store %struct.sockaddr_rxrpc* %1, %struct.sockaddr_rxrpc** %6, align 8
  store %struct.rxrpc_header* %2, %struct.rxrpc_header** %7, align 8
  %12 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  %13 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @_enter(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %6, align 8
  %17 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 4
  store i32* %18, i32** %19, align 8
  %20 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 0
  store i32 4, i32* %20, align 8
  %21 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 3
  store i32* null, i32** %21, align 8
  %22 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.rxrpc_header*, %struct.rxrpc_header** %7, align 8
  %25 = getelementptr inbounds %struct.rxrpc_header, %struct.rxrpc_header* %24, i32 0, i32 5
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @RXRPC_PACKET_TYPE_BUSY, align 4
  %27 = load %struct.rxrpc_header*, %struct.rxrpc_header** %7, align 8
  %28 = getelementptr inbounds %struct.rxrpc_header, %struct.rxrpc_header* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.rxrpc_header*, %struct.rxrpc_header** %7, align 8
  %30 = getelementptr inbounds %struct.rxrpc_header, %struct.rxrpc_header* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.rxrpc_header*, %struct.rxrpc_header** %7, align 8
  %32 = getelementptr inbounds %struct.rxrpc_header, %struct.rxrpc_header* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.rxrpc_header*, %struct.rxrpc_header** %7, align 8
  %34 = getelementptr inbounds %struct.rxrpc_header, %struct.rxrpc_header* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.rxrpc_header*, %struct.rxrpc_header** %7, align 8
  %36 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %9, i64 0, i64 0
  %37 = getelementptr inbounds %struct.kvec, %struct.kvec* %36, i32 0, i32 1
  store %struct.rxrpc_header* %35, %struct.rxrpc_header** %37, align 8
  %38 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %9, i64 0, i64 0
  %39 = getelementptr inbounds %struct.kvec, %struct.kvec* %38, i32 0, i32 0
  store i32 48, i32* %39, align 16
  %40 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %9, i64 0, i64 0
  %41 = getelementptr inbounds %struct.kvec, %struct.kvec* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 16
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %10, align 8
  %44 = call i32 @htonl(i32 1)
  %45 = load %struct.rxrpc_header*, %struct.rxrpc_header** %7, align 8
  %46 = getelementptr inbounds %struct.rxrpc_header, %struct.rxrpc_header* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.rxrpc_header*, %struct.rxrpc_header** %7, align 8
  %48 = getelementptr inbounds %struct.rxrpc_header, %struct.rxrpc_header* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ntohl(i32 %49)
  %51 = call i32 @_proto(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  %53 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %9, i64 0, i64 0
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @kernel_sendmsg(i32 %54, %struct.msghdr* %8, %struct.kvec* %55, i32 1, i64 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %3
  %61 = load i32, i32* %11, align 4
  %62 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EAGAIN, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %67

65:                                               ; preds = %3
  %66 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %60
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @_proto(i8*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @kernel_sendmsg(i32, %struct.msghdr*, %struct.kvec*, i32, i64) #1

declare dso_local i32 @_leave(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

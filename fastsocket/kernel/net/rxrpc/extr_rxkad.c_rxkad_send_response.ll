; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_rxkad.c_rxkad_send_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_rxkad.c_rxkad_send_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { %struct.TYPE_10__*, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.rxrpc_header = type { i32, i64, i64, i32, i32, i64, i32 }
%struct.rxkad_response = type { i32, i64, i64, i32, i32, i64, i32 }
%struct.rxkad_key = type { i32, i64 }
%struct.msghdr = type { i32, i64, i64, i32*, i32* }
%struct.kvec = type { i32, %struct.rxrpc_header* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RXRPC_PACKET_TYPE_RESPONSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Tx RESPONSE %%%u\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"sendmsg failed: %d\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_connection*, %struct.rxrpc_header*, %struct.rxkad_response*, %struct.rxkad_key*)* @rxkad_send_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxkad_send_response(%struct.rxrpc_connection* %0, %struct.rxrpc_header* %1, %struct.rxkad_response* %2, %struct.rxkad_key* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rxrpc_connection*, align 8
  %7 = alloca %struct.rxrpc_header*, align 8
  %8 = alloca %struct.rxkad_response*, align 8
  %9 = alloca %struct.rxkad_key*, align 8
  %10 = alloca %struct.msghdr, align 8
  %11 = alloca [3 x %struct.kvec], align 16
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %6, align 8
  store %struct.rxrpc_header* %1, %struct.rxrpc_header** %7, align 8
  store %struct.rxkad_response* %2, %struct.rxkad_response** %8, align 8
  store %struct.rxkad_key* %3, %struct.rxkad_key** %9, align 8
  %14 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %6, align 8
  %16 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 4
  store i32* %22, i32** %23, align 8
  %24 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 0
  store i32 4, i32* %24, align 8
  %25 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 3
  store i32* null, i32** %25, align 8
  %26 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %6, align 8
  %29 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rxrpc_header*, %struct.rxrpc_header** %7, align 8
  %32 = getelementptr inbounds %struct.rxrpc_header, %struct.rxrpc_header* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 8
  %33 = load %struct.rxrpc_header*, %struct.rxrpc_header** %7, align 8
  %34 = getelementptr inbounds %struct.rxrpc_header, %struct.rxrpc_header* %33, i32 0, i32 5
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @RXRPC_PACKET_TYPE_RESPONSE, align 4
  %36 = load %struct.rxrpc_header*, %struct.rxrpc_header** %7, align 8
  %37 = getelementptr inbounds %struct.rxrpc_header, %struct.rxrpc_header* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %6, align 8
  %39 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rxrpc_header*, %struct.rxrpc_header** %7, align 8
  %42 = getelementptr inbounds %struct.rxrpc_header, %struct.rxrpc_header* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.rxrpc_header*, %struct.rxrpc_header** %7, align 8
  %44 = getelementptr inbounds %struct.rxrpc_header, %struct.rxrpc_header* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.rxrpc_header*, %struct.rxrpc_header** %7, align 8
  %46 = getelementptr inbounds %struct.rxrpc_header, %struct.rxrpc_header* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.rxrpc_header*, %struct.rxrpc_header** %7, align 8
  %48 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %11, i64 0, i64 0
  %49 = getelementptr inbounds %struct.kvec, %struct.kvec* %48, i32 0, i32 1
  store %struct.rxrpc_header* %47, %struct.rxrpc_header** %49, align 8
  %50 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %11, i64 0, i64 0
  %51 = getelementptr inbounds %struct.kvec, %struct.kvec* %50, i32 0, i32 0
  store i32 48, i32* %51, align 16
  %52 = load %struct.rxkad_response*, %struct.rxkad_response** %8, align 8
  %53 = bitcast %struct.rxkad_response* %52 to %struct.rxrpc_header*
  %54 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %11, i64 0, i64 1
  %55 = getelementptr inbounds %struct.kvec, %struct.kvec* %54, i32 0, i32 1
  store %struct.rxrpc_header* %53, %struct.rxrpc_header** %55, align 8
  %56 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %11, i64 0, i64 1
  %57 = getelementptr inbounds %struct.kvec, %struct.kvec* %56, i32 0, i32 0
  store i32 48, i32* %57, align 16
  %58 = load %struct.rxkad_key*, %struct.rxkad_key** %9, align 8
  %59 = getelementptr inbounds %struct.rxkad_key, %struct.rxkad_key* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = bitcast i8* %61 to %struct.rxrpc_header*
  %63 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %11, i64 0, i64 2
  %64 = getelementptr inbounds %struct.kvec, %struct.kvec* %63, i32 0, i32 1
  store %struct.rxrpc_header* %62, %struct.rxrpc_header** %64, align 8
  %65 = load %struct.rxkad_key*, %struct.rxkad_key** %9, align 8
  %66 = getelementptr inbounds %struct.rxkad_key, %struct.rxkad_key* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %11, i64 0, i64 2
  %69 = getelementptr inbounds %struct.kvec, %struct.kvec* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 16
  %70 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %11, i64 0, i64 0
  %71 = getelementptr inbounds %struct.kvec, %struct.kvec* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 16
  %73 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %11, i64 0, i64 1
  %74 = getelementptr inbounds %struct.kvec, %struct.kvec* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 16
  %76 = add nsw i32 %72, %75
  %77 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %11, i64 0, i64 2
  %78 = getelementptr inbounds %struct.kvec, %struct.kvec* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 16
  %80 = add nsw i32 %76, %79
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %12, align 8
  %82 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %6, align 8
  %83 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %82, i32 0, i32 1
  %84 = call i32 @atomic_inc_return(i32* %83)
  %85 = call i32 @htonl(i32 %84)
  %86 = load %struct.rxrpc_header*, %struct.rxrpc_header** %7, align 8
  %87 = getelementptr inbounds %struct.rxrpc_header, %struct.rxrpc_header* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.rxrpc_header*, %struct.rxrpc_header** %7, align 8
  %89 = getelementptr inbounds %struct.rxrpc_header, %struct.rxrpc_header* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @ntohl(i32 %90)
  %92 = call i32 @_proto(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %6, align 8
  %94 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %93, i32 0, i32 0
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %11, i64 0, i64 0
  %101 = load i64, i64* %12, align 8
  %102 = call i32 @kernel_sendmsg(i32 %99, %struct.msghdr* %10, %struct.kvec* %100, i32 3, i64 %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %4
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @EAGAIN, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %5, align 4
  br label %112

110:                                              ; preds = %4
  %111 = call i32 @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %110, %105
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @_proto(i8*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @kernel_sendmsg(i32, %struct.msghdr*, %struct.kvec*, i32, i64) #1

declare dso_local i32 @_debug(i8*, i32) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

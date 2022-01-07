; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_rxkad.c_rxkad_issue_challenge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_rxkad.c_rxkad_issue_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { i32, %struct.TYPE_10__*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.rxkad_challenge = type { i8*, i32, i64, i32, i64, i32, i32, i64, i64, i32, i32, i64, i8*, i8*, i8* }
%struct.rxrpc_header = type { i8*, i32, i64, i32, i64, i32, i32, i64, i64, i32, i32, i64, i8*, i8*, i8* }
%struct.msghdr = type { i32, i64, i64, i32*, i32* }
%struct.kvec = type { i32, %struct.rxrpc_header* }

@.str = private unnamed_addr constant [8 x i8] c"{%d,%x}\00", align 1
@RXRPC_PACKET_TYPE_CHALLENGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Tx CHALLENGE %%%u\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"sendmsg failed: %d\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_connection*)* @rxkad_issue_challenge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxkad_issue_challenge(%struct.rxrpc_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rxrpc_connection*, align 8
  %4 = alloca %struct.rxkad_challenge, align 8
  %5 = alloca %struct.rxrpc_header, align 8
  %6 = alloca %struct.msghdr, align 8
  %7 = alloca [2 x %struct.kvec], align 16
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %3, align 8
  %10 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %11 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %14 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @key_serial(i32 %15)
  %17 = call i32 @_enter(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %16)
  %18 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %19 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @key_validate(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %2, align 4
  br label %124

26:                                               ; preds = %1
  %27 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %28 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %27, i32 0, i32 0
  %29 = call i32 @get_random_bytes(i32* %28, i32 4)
  %30 = call i8* @htonl(i32 2)
  %31 = getelementptr inbounds %struct.rxkad_challenge, %struct.rxkad_challenge* %4, i32 0, i32 14
  store i8* %30, i8** %31, align 8
  %32 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %33 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @htonl(i32 %34)
  %36 = getelementptr inbounds %struct.rxkad_challenge, %struct.rxkad_challenge* %4, i32 0, i32 13
  store i8* %35, i8** %36, align 8
  %37 = call i8* @htonl(i32 0)
  %38 = getelementptr inbounds %struct.rxkad_challenge, %struct.rxkad_challenge* %4, i32 0, i32 12
  store i8* %37, i8** %38, align 8
  %39 = getelementptr inbounds %struct.rxkad_challenge, %struct.rxkad_challenge* %4, i32 0, i32 11
  store i64 0, i64* %39, align 8
  %40 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %41 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %40, i32 0, i32 1
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 4
  store i32* %47, i32** %48, align 8
  %49 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 0
  store i32 4, i32* %49, align 8
  %50 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 3
  store i32* null, i32** %50, align 8
  %51 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %54 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.rxrpc_header, %struct.rxrpc_header* %5, i32 0, i32 10
  store i32 %55, i32* %56, align 4
  %57 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %58 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.rxrpc_header, %struct.rxrpc_header* %5, i32 0, i32 9
  store i32 %59, i32* %60, align 8
  %61 = getelementptr inbounds %struct.rxrpc_header, %struct.rxrpc_header* %5, i32 0, i32 8
  store i64 0, i64* %61, align 8
  %62 = getelementptr inbounds %struct.rxrpc_header, %struct.rxrpc_header* %5, i32 0, i32 7
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* @RXRPC_PACKET_TYPE_CHALLENGE, align 4
  %64 = getelementptr inbounds %struct.rxrpc_header, %struct.rxrpc_header* %5, i32 0, i32 6
  store i32 %63, i32* %64, align 4
  %65 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %66 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.rxrpc_header, %struct.rxrpc_header* %5, i32 0, i32 5
  store i32 %67, i32* %68, align 8
  %69 = getelementptr inbounds %struct.rxrpc_header, %struct.rxrpc_header* %5, i32 0, i32 4
  store i64 0, i64* %69, align 8
  %70 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %71 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.rxrpc_header, %struct.rxrpc_header* %5, i32 0, i32 3
  store i32 %72, i32* %73, align 8
  %74 = getelementptr inbounds %struct.rxrpc_header, %struct.rxrpc_header* %5, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %76 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.rxrpc_header, %struct.rxrpc_header* %5, i32 0, i32 1
  store i32 %77, i32* %78, align 8
  %79 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %7, i64 0, i64 0
  %80 = getelementptr inbounds %struct.kvec, %struct.kvec* %79, i32 0, i32 1
  store %struct.rxrpc_header* %5, %struct.rxrpc_header** %80, align 8
  %81 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %7, i64 0, i64 0
  %82 = getelementptr inbounds %struct.kvec, %struct.kvec* %81, i32 0, i32 0
  store i32 104, i32* %82, align 16
  %83 = bitcast %struct.rxkad_challenge* %4 to %struct.rxrpc_header*
  %84 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %7, i64 0, i64 1
  %85 = getelementptr inbounds %struct.kvec, %struct.kvec* %84, i32 0, i32 1
  store %struct.rxrpc_header* %83, %struct.rxrpc_header** %85, align 8
  %86 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %7, i64 0, i64 1
  %87 = getelementptr inbounds %struct.kvec, %struct.kvec* %86, i32 0, i32 0
  store i32 104, i32* %87, align 16
  %88 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %7, i64 0, i64 0
  %89 = getelementptr inbounds %struct.kvec, %struct.kvec* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 16
  %91 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %7, i64 0, i64 1
  %92 = getelementptr inbounds %struct.kvec, %struct.kvec* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 16
  %94 = add nsw i32 %90, %93
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %8, align 8
  %96 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %97 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %96, i32 0, i32 2
  %98 = call i32 @atomic_inc_return(i32* %97)
  %99 = call i8* @htonl(i32 %98)
  %100 = getelementptr inbounds %struct.rxrpc_header, %struct.rxrpc_header* %5, i32 0, i32 0
  store i8* %99, i8** %100, align 8
  %101 = getelementptr inbounds %struct.rxrpc_header, %struct.rxrpc_header* %5, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @ntohl(i8* %102)
  %104 = call i32 @_proto(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %106 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %105, i32 0, i32 1
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %7, i64 0, i64 0
  %113 = load i64, i64* %8, align 8
  %114 = call i32 @kernel_sendmsg(i32 %111, %struct.msghdr* %6, %struct.kvec* %112, i32 2, i64 %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %26
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @EAGAIN, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %124

122:                                              ; preds = %26
  %123 = call i32 @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %124

124:                                              ; preds = %122, %117, %24
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @key_serial(i32) #1

declare dso_local i32 @key_validate(i32) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @_proto(i8*, i32) #1

declare dso_local i32 @ntohl(i8*) #1

declare dso_local i32 @kernel_sendmsg(i32, %struct.msghdr*, %struct.kvec*, i32, i64) #1

declare dso_local i32 @_debug(i8*, i32) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_af_rxrpc.c_rxrpc_name_to_transport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_af_rxrpc.c_rxrpc_name_to_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_transport = type { i32 }
%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_rxrpc = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.rxrpc_sock = type { i32*, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.rxrpc_peer = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%p,%p,%d,%d\00", align 1
@RXRPC_UNCONNECTED = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" = %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rxrpc_transport* (%struct.socket*, %struct.sockaddr*, i32, i32, i32)* @rxrpc_name_to_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rxrpc_transport* @rxrpc_name_to_transport(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.rxrpc_transport*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr_rxrpc*, align 8
  %13 = alloca %struct.rxrpc_transport*, align 8
  %14 = alloca %struct.rxrpc_sock*, align 8
  %15 = alloca %struct.rxrpc_peer*, align 8
  store %struct.socket* %0, %struct.socket** %7, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %17 = bitcast %struct.sockaddr* %16 to %struct.sockaddr_rxrpc*
  store %struct.sockaddr_rxrpc* %17, %struct.sockaddr_rxrpc** %12, align 8
  %18 = load %struct.socket*, %struct.socket** %7, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.rxrpc_sock* @rxrpc_sk(i32 %20)
  store %struct.rxrpc_sock* %21, %struct.rxrpc_sock** %14, align 8
  %22 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %14, align 8
  %23 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @_enter(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.rxrpc_sock* %22, %struct.sockaddr* %23, i32 %24, i32 %25)
  %27 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %14, align 8
  %28 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %14, align 8
  %34 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RXRPC_UNCONNECTED, align 8
  %38 = icmp sgt i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  %41 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %14, align 8
  %42 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %12, align 8
  %46 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %5
  %50 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %51 = sub nsw i32 0, %50
  %52 = call %struct.rxrpc_transport* @ERR_PTR(i32 %51)
  store %struct.rxrpc_transport* %52, %struct.rxrpc_transport** %6, align 8
  br label %90

53:                                               ; preds = %5
  %54 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %14, align 8
  %55 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %12, align 8
  %60 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %58, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %53
  %65 = load i32, i32* @EAFNOSUPPORT, align 4
  %66 = sub nsw i32 0, %65
  %67 = call %struct.rxrpc_transport* @ERR_PTR(i32 %66)
  store %struct.rxrpc_transport* %67, %struct.rxrpc_transport** %6, align 8
  br label %90

68:                                               ; preds = %53
  %69 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %12, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call %struct.rxrpc_peer* @rxrpc_get_peer(%struct.sockaddr_rxrpc* %69, i32 %70)
  store %struct.rxrpc_peer* %71, %struct.rxrpc_peer** %15, align 8
  %72 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %15, align 8
  %73 = call i64 @IS_ERR(%struct.rxrpc_peer* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %15, align 8
  %77 = call %struct.rxrpc_transport* @ERR_CAST(%struct.rxrpc_peer* %76)
  store %struct.rxrpc_transport* %77, %struct.rxrpc_transport** %6, align 8
  br label %90

78:                                               ; preds = %68
  %79 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %14, align 8
  %80 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %15, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call %struct.rxrpc_transport* @rxrpc_get_transport(i32* %81, %struct.rxrpc_peer* %82, i32 %83)
  store %struct.rxrpc_transport* %84, %struct.rxrpc_transport** %13, align 8
  %85 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %15, align 8
  %86 = call i32 @rxrpc_put_peer(%struct.rxrpc_peer* %85)
  %87 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %13, align 8
  %88 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.rxrpc_transport* %87)
  %89 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %13, align 8
  store %struct.rxrpc_transport* %89, %struct.rxrpc_transport** %6, align 8
  br label %90

90:                                               ; preds = %78, %75, %64, %49
  %91 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %6, align 8
  ret %struct.rxrpc_transport* %91
}

declare dso_local %struct.rxrpc_sock* @rxrpc_sk(i32) #1

declare dso_local i32 @_enter(i8*, %struct.rxrpc_sock*, %struct.sockaddr*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.rxrpc_transport* @ERR_PTR(i32) #1

declare dso_local %struct.rxrpc_peer* @rxrpc_get_peer(%struct.sockaddr_rxrpc*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rxrpc_peer*) #1

declare dso_local %struct.rxrpc_transport* @ERR_CAST(%struct.rxrpc_peer*) #1

declare dso_local %struct.rxrpc_transport* @rxrpc_get_transport(i32*, %struct.rxrpc_peer*, i32) #1

declare dso_local i32 @rxrpc_put_peer(%struct.rxrpc_peer*) #1

declare dso_local i32 @_leave(i8*, %struct.rxrpc_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

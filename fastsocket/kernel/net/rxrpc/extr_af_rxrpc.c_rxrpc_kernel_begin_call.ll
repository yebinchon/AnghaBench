; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_af_rxrpc.c_rxrpc_kernel_begin_call.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_af_rxrpc.c_rxrpc_kernel_begin_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32 }
%struct.socket = type { i32 }
%struct.sockaddr_rxrpc = type { i32 }
%struct.key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rxrpc_conn_bundle = type { i32 }
%struct.rxrpc_transport = type { i32 }
%struct.rxrpc_sock = type { i32, %struct.key*, i32, %struct.rxrpc_transport* }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c",,%x,%lx\00", align 1
@ENOTCONN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" = %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rxrpc_call* @rxrpc_kernel_begin_call(%struct.socket* %0, %struct.sockaddr_rxrpc* %1, %struct.key* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr_rxrpc*, align 8
  %8 = alloca %struct.key*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rxrpc_conn_bundle*, align 8
  %12 = alloca %struct.rxrpc_transport*, align 8
  %13 = alloca %struct.rxrpc_call*, align 8
  %14 = alloca %struct.rxrpc_sock*, align 8
  %15 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr_rxrpc* %1, %struct.sockaddr_rxrpc** %7, align 8
  store %struct.key* %2, %struct.key** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.socket*, %struct.socket** %6, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.rxrpc_sock* @rxrpc_sk(i32 %18)
  store %struct.rxrpc_sock* %19, %struct.rxrpc_sock** %14, align 8
  %20 = load %struct.key*, %struct.key** %8, align 8
  %21 = call i32 @key_serial(%struct.key* %20)
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @_enter(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %21, i64 %22)
  %24 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %14, align 8
  %25 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %24, i32 0, i32 0
  %26 = call i32 @lock_sock(i32* %25)
  %27 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %7, align 8
  %28 = icmp ne %struct.sockaddr_rxrpc* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %5
  %30 = load %struct.socket*, %struct.socket** %6, align 8
  %31 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %7, align 8
  %32 = bitcast %struct.sockaddr_rxrpc* %31 to %struct.sockaddr*
  %33 = load i32, i32* %10, align 4
  %34 = call %struct.rxrpc_transport* @rxrpc_name_to_transport(%struct.socket* %30, %struct.sockaddr* %32, i32 4, i32 0, i32 %33)
  store %struct.rxrpc_transport* %34, %struct.rxrpc_transport** %12, align 8
  %35 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %12, align 8
  %36 = call i64 @IS_ERR(%struct.rxrpc_transport* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %12, align 8
  %40 = call %struct.rxrpc_call* @ERR_CAST(%struct.rxrpc_transport* %39)
  store %struct.rxrpc_call* %40, %struct.rxrpc_call** %13, align 8
  store %struct.rxrpc_transport* null, %struct.rxrpc_transport** %12, align 8
  br label %115

41:                                               ; preds = %29
  br label %56

42:                                               ; preds = %5
  %43 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %14, align 8
  %44 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %43, i32 0, i32 3
  %45 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %44, align 8
  store %struct.rxrpc_transport* %45, %struct.rxrpc_transport** %12, align 8
  %46 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %12, align 8
  %47 = icmp ne %struct.rxrpc_transport* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @ENOTCONN, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.rxrpc_call* @ERR_PTR(i32 %50)
  store %struct.rxrpc_call* %51, %struct.rxrpc_call** %13, align 8
  br label %115

52:                                               ; preds = %42
  %53 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %12, align 8
  %54 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %53, i32 0, i32 0
  %55 = call i32 @atomic_inc(i32* %54)
  br label %56

56:                                               ; preds = %52, %41
  %57 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %14, align 8
  %58 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %15, align 4
  %60 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %7, align 8
  %61 = icmp ne %struct.sockaddr_rxrpc* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %7, align 8
  %64 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @htons(i32 %65)
  store i32 %66, i32* %15, align 4
  br label %67

67:                                               ; preds = %62, %56
  %68 = load %struct.key*, %struct.key** %8, align 8
  %69 = icmp ne %struct.key* %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %14, align 8
  %72 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %71, i32 0, i32 1
  %73 = load %struct.key*, %struct.key** %72, align 8
  store %struct.key* %73, %struct.key** %8, align 8
  br label %74

74:                                               ; preds = %70, %67
  %75 = load %struct.key*, %struct.key** %8, align 8
  %76 = icmp ne %struct.key* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load %struct.key*, %struct.key** %8, align 8
  %79 = getelementptr inbounds %struct.key, %struct.key* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  store %struct.key* null, %struct.key** %8, align 8
  br label %84

84:                                               ; preds = %83, %77, %74
  %85 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %14, align 8
  %86 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %12, align 8
  %87 = load %struct.key*, %struct.key** %8, align 8
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call %struct.rxrpc_transport* @rxrpc_get_bundle(%struct.rxrpc_sock* %85, %struct.rxrpc_transport* %86, %struct.key* %87, i32 %88, i32 %89)
  %91 = bitcast %struct.rxrpc_transport* %90 to %struct.rxrpc_conn_bundle*
  store %struct.rxrpc_conn_bundle* %91, %struct.rxrpc_conn_bundle** %11, align 8
  %92 = load %struct.rxrpc_conn_bundle*, %struct.rxrpc_conn_bundle** %11, align 8
  %93 = bitcast %struct.rxrpc_conn_bundle* %92 to %struct.rxrpc_transport*
  %94 = call i64 @IS_ERR(%struct.rxrpc_transport* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %84
  %97 = load %struct.rxrpc_conn_bundle*, %struct.rxrpc_conn_bundle** %11, align 8
  %98 = bitcast %struct.rxrpc_conn_bundle* %97 to %struct.rxrpc_transport*
  %99 = call %struct.rxrpc_call* @ERR_CAST(%struct.rxrpc_transport* %98)
  store %struct.rxrpc_call* %99, %struct.rxrpc_call** %13, align 8
  br label %112

100:                                              ; preds = %84
  %101 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %14, align 8
  %102 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %12, align 8
  %103 = load %struct.rxrpc_conn_bundle*, %struct.rxrpc_conn_bundle** %11, align 8
  %104 = bitcast %struct.rxrpc_conn_bundle* %103 to %struct.rxrpc_transport*
  %105 = load i64, i64* %9, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call %struct.rxrpc_call* @rxrpc_get_client_call(%struct.rxrpc_sock* %101, %struct.rxrpc_transport* %102, %struct.rxrpc_transport* %104, i64 %105, i32 1, i32 %106)
  store %struct.rxrpc_call* %107, %struct.rxrpc_call** %13, align 8
  %108 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %12, align 8
  %109 = load %struct.rxrpc_conn_bundle*, %struct.rxrpc_conn_bundle** %11, align 8
  %110 = bitcast %struct.rxrpc_conn_bundle* %109 to %struct.rxrpc_transport*
  %111 = call i32 @rxrpc_put_bundle(%struct.rxrpc_transport* %108, %struct.rxrpc_transport* %110)
  br label %112

112:                                              ; preds = %100, %96
  %113 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %12, align 8
  %114 = call i32 @rxrpc_put_transport(%struct.rxrpc_transport* %113)
  br label %115

115:                                              ; preds = %112, %48, %38
  %116 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %14, align 8
  %117 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %116, i32 0, i32 0
  %118 = call i32 @release_sock(i32* %117)
  %119 = load %struct.rxrpc_call*, %struct.rxrpc_call** %13, align 8
  %120 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.rxrpc_call* %119)
  %121 = load %struct.rxrpc_call*, %struct.rxrpc_call** %13, align 8
  ret %struct.rxrpc_call* %121
}

declare dso_local %struct.rxrpc_sock* @rxrpc_sk(i32) #1

declare dso_local i32 @_enter(i8*, i32, i64) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local i32 @lock_sock(i32*) #1

declare dso_local %struct.rxrpc_transport* @rxrpc_name_to_transport(%struct.socket*, %struct.sockaddr*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.rxrpc_transport*) #1

declare dso_local %struct.rxrpc_call* @ERR_CAST(%struct.rxrpc_transport*) #1

declare dso_local %struct.rxrpc_call* @ERR_PTR(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.rxrpc_transport* @rxrpc_get_bundle(%struct.rxrpc_sock*, %struct.rxrpc_transport*, %struct.key*, i32, i32) #1

declare dso_local %struct.rxrpc_call* @rxrpc_get_client_call(%struct.rxrpc_sock*, %struct.rxrpc_transport*, %struct.rxrpc_transport*, i64, i32, i32) #1

declare dso_local i32 @rxrpc_put_bundle(%struct.rxrpc_transport*, %struct.rxrpc_transport*) #1

declare dso_local i32 @rxrpc_put_transport(%struct.rxrpc_transport*) #1

declare dso_local i32 @release_sock(i32*) #1

declare dso_local i32 @_leave(i8*, %struct.rxrpc_call*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

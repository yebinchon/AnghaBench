; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-call.c_rxrpc_alloc_client_call.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-call.c_rxrpc_alloc_client_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, %struct.TYPE_8__, %struct.TYPE_7__*, i32, %struct.rxrpc_sock* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.rxrpc_sock = type { i32 }
%struct.rxrpc_transport = type { i32 }
%struct.rxrpc_conn_bundle = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i32 0, align 4
@rxrpc_call_jar = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@rxrpc_call_max_lifetime = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" = %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rxrpc_call* (%struct.rxrpc_sock*, %struct.rxrpc_transport*, %struct.rxrpc_conn_bundle*, i32)* @rxrpc_alloc_client_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rxrpc_call* @rxrpc_alloc_client_call(%struct.rxrpc_sock* %0, %struct.rxrpc_transport* %1, %struct.rxrpc_conn_bundle* %2, i32 %3) #0 {
  %5 = alloca %struct.rxrpc_call*, align 8
  %6 = alloca %struct.rxrpc_sock*, align 8
  %7 = alloca %struct.rxrpc_transport*, align 8
  %8 = alloca %struct.rxrpc_conn_bundle*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rxrpc_call*, align 8
  %11 = alloca i32, align 4
  store %struct.rxrpc_sock* %0, %struct.rxrpc_sock** %6, align 8
  store %struct.rxrpc_transport* %1, %struct.rxrpc_transport** %7, align 8
  store %struct.rxrpc_conn_bundle* %2, %struct.rxrpc_conn_bundle** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %6, align 8
  %14 = icmp ne %struct.rxrpc_sock* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %7, align 8
  %18 = icmp ne %struct.rxrpc_transport* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.rxrpc_conn_bundle*, %struct.rxrpc_conn_bundle** %8, align 8
  %22 = icmp ne %struct.rxrpc_conn_bundle* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = call %struct.rxrpc_call* @rxrpc_alloc_call(i32 %25)
  store %struct.rxrpc_call* %26, %struct.rxrpc_call** %10, align 8
  %27 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %28 = icmp ne %struct.rxrpc_call* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.rxrpc_call* @ERR_PTR(i32 %31)
  store %struct.rxrpc_call* %32, %struct.rxrpc_call** %5, align 8
  br label %101

33:                                               ; preds = %4
  %34 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %6, align 8
  %35 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %34, i32 0, i32 0
  %36 = call i32 @sock_hold(i32* %35)
  %37 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %6, align 8
  %38 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %39 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %38, i32 0, i32 4
  store %struct.rxrpc_sock* %37, %struct.rxrpc_sock** %39, align 8
  %40 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %41 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %6, align 8
  %43 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %7, align 8
  %44 = load %struct.rxrpc_conn_bundle*, %struct.rxrpc_conn_bundle** %8, align 8
  %45 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @rxrpc_connect_call(%struct.rxrpc_sock* %42, %struct.rxrpc_transport* %43, %struct.rxrpc_conn_bundle* %44, %struct.rxrpc_call* %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %33
  %51 = load i32, i32* @rxrpc_call_jar, align 4
  %52 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %53 = call i32 @kmem_cache_free(i32 %51, %struct.rxrpc_call* %52)
  %54 = load i32, i32* %11, align 4
  %55 = call %struct.rxrpc_call* @ERR_PTR(i32 %54)
  store %struct.rxrpc_call* %55, %struct.rxrpc_call** %5, align 8
  br label %101

56:                                               ; preds = %33
  %57 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %58 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %57, i32 0, i32 2
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = call i32 @spin_lock(i32* %64)
  %66 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %67 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %66, i32 0, i32 3
  %68 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %69 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %68, i32 0, i32 2
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = call i32 @list_add(i32* %67, i32* %75)
  %77 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %78 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %77, i32 0, i32 2
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load i64, i64* @jiffies, align 8
  %87 = load i32, i32* @rxrpc_call_max_lifetime, align 4
  %88 = load i32, i32* @HZ, align 4
  %89 = mul nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %86, %90
  %92 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %93 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store i64 %91, i64* %94, align 8
  %95 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %96 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %95, i32 0, i32 1
  %97 = call i32 @add_timer(%struct.TYPE_8__* %96)
  %98 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %99 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.rxrpc_call* %98)
  %100 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  store %struct.rxrpc_call* %100, %struct.rxrpc_call** %5, align 8
  br label %101

101:                                              ; preds = %56, %50, %29
  %102 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  ret %struct.rxrpc_call* %102
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.rxrpc_call* @rxrpc_alloc_call(i32) #1

declare dso_local %struct.rxrpc_call* @ERR_PTR(i32) #1

declare dso_local i32 @sock_hold(i32*) #1

declare dso_local i32 @rxrpc_connect_call(%struct.rxrpc_sock*, %struct.rxrpc_transport*, %struct.rxrpc_conn_bundle*, %struct.rxrpc_call*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.rxrpc_call*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_8__*) #1

declare dso_local i32 @_leave(i8*, %struct.rxrpc_call*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_af_rxrpc.c_rxrpc_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_af_rxrpc.c_rxrpc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i64, i32, i32* }
%struct.rxrpc_sock = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sock = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%p,%d\00", align 1
@init_net = common dso_local global %struct.net zeroinitializer, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@rxrpc_rpc_ops = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@PF_RXRPC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@rxrpc_proto = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RXRPC_UNCONNECTED = common dso_local global i32 0, align 4
@rxrpc_write_space = common dso_local global i32 0, align 4
@sysctl_rxrpc_max_qlen = common dso_local global i32 0, align 4
@rxrpc_sock_destructor = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c" = 0 [%p]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @rxrpc_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rxrpc_sock*, align 8
  %11 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.socket*, %struct.socket** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @_enter(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.socket* %12, i32 %13)
  %15 = load %struct.net*, %struct.net** %6, align 8
  %16 = icmp ne %struct.net* %15, @init_net
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EAFNOSUPPORT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %92

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @PF_INET, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EPROTONOSUPPORT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %92

27:                                               ; preds = %20
  %28 = load %struct.socket*, %struct.socket** %7, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SOCK_DGRAM, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %92

36:                                               ; preds = %27
  %37 = load %struct.socket*, %struct.socket** %7, align 8
  %38 = getelementptr inbounds %struct.socket, %struct.socket* %37, i32 0, i32 2
  store i32* @rxrpc_rpc_ops, i32** %38, align 8
  %39 = load i32, i32* @SS_UNCONNECTED, align 4
  %40 = load %struct.socket*, %struct.socket** %7, align 8
  %41 = getelementptr inbounds %struct.socket, %struct.socket* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.net*, %struct.net** %6, align 8
  %43 = load i32, i32* @PF_RXRPC, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.sock* @sk_alloc(%struct.net* %42, i32 %43, i32 %44, i32* @rxrpc_proto)
  store %struct.sock* %45, %struct.sock** %11, align 8
  %46 = load %struct.sock*, %struct.sock** %11, align 8
  %47 = icmp ne %struct.sock* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %36
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %92

51:                                               ; preds = %36
  %52 = load %struct.socket*, %struct.socket** %7, align 8
  %53 = load %struct.sock*, %struct.sock** %11, align 8
  %54 = call i32 @sock_init_data(%struct.socket* %52, %struct.sock* %53)
  %55 = load i32, i32* @RXRPC_UNCONNECTED, align 4
  %56 = load %struct.sock*, %struct.sock** %11, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @rxrpc_write_space, align 4
  %59 = load %struct.sock*, %struct.sock** %11, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @sysctl_rxrpc_max_qlen, align 4
  %62 = load %struct.sock*, %struct.sock** %11, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @rxrpc_sock_destructor, align 4
  %65 = load %struct.sock*, %struct.sock** %11, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.sock*, %struct.sock** %11, align 8
  %68 = call %struct.rxrpc_sock* @rxrpc_sk(%struct.sock* %67)
  store %struct.rxrpc_sock* %68, %struct.rxrpc_sock** %10, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %10, align 8
  %71 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @RB_ROOT, align 4
  %73 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %10, align 8
  %74 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 4
  %75 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %10, align 8
  %76 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %75, i32 0, i32 5
  %77 = call i32 @INIT_LIST_HEAD(i32* %76)
  %78 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %10, align 8
  %79 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %78, i32 0, i32 4
  %80 = call i32 @INIT_LIST_HEAD(i32* %79)
  %81 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %10, align 8
  %82 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %81, i32 0, i32 3
  %83 = call i32 @INIT_LIST_HEAD(i32* %82)
  %84 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %10, align 8
  %85 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %84, i32 0, i32 2
  %86 = call i32 @rwlock_init(i32* %85)
  %87 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %10, align 8
  %88 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %87, i32 0, i32 1
  %89 = call i32 @memset(i32* %88, i32 0, i32 4)
  %90 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %10, align 8
  %91 = call i32 @_leave(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.rxrpc_sock* %90)
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %51, %48, %33, %24, %17
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @_enter(i8*, %struct.socket*, i32) #1

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local %struct.rxrpc_sock* @rxrpc_sk(%struct.sock*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @_leave(i8*, %struct.rxrpc_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

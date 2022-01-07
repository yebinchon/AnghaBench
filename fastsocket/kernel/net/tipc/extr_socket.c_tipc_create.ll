; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_tipc_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_tipc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.proto_ops = type { i32 }
%struct.socket = type { i32, i32, %struct.proto_ops* }
%struct.sock = type { i32, i32 }
%struct.tipc_port = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.tipc_port* }

@init_net = common dso_local global %struct.net zeroinitializer, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@stream_ops = common dso_local global %struct.proto_ops zeroinitializer, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@packet_ops = common dso_local global %struct.proto_ops zeroinitializer, align 4
@msg_ops = common dso_local global %struct.proto_ops zeroinitializer, align 4
@SS_READY = common dso_local global i32 0, align 4
@EPROTOTYPE = common dso_local global i32 0, align 4
@AF_TIPC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@tipc_proto = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dispatch = common dso_local global i32 0, align 4
@wakeupdispatch = common dso_local global i32 0, align 4
@TIPC_LOW_IMPORTANCE = common dso_local global i32 0, align 4
@CONN_TIMEOUT_DEFAULT = common dso_local global i32 0, align 4
@backlog_rcv = common dso_local global i32 0, align 4
@tipc_user_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @tipc_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.proto_ops*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.tipc_port*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.net*, %struct.net** %6, align 8
  %15 = icmp ne %struct.net* %14, @init_net
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EAFNOSUPPORT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %113

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EPROTONOSUPPORT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %113

28:                                               ; preds = %19
  %29 = load %struct.socket*, %struct.socket** %7, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %38 [
    i32 128, label %32
    i32 129, label %34
    i32 131, label %36
    i32 130, label %36
  ]

32:                                               ; preds = %28
  store %struct.proto_ops* @stream_ops, %struct.proto_ops** %10, align 8
  %33 = load i32, i32* @SS_UNCONNECTED, align 4
  store i32 %33, i32* %11, align 4
  br label %41

34:                                               ; preds = %28
  store %struct.proto_ops* @packet_ops, %struct.proto_ops** %10, align 8
  %35 = load i32, i32* @SS_UNCONNECTED, align 4
  store i32 %35, i32* %11, align 4
  br label %41

36:                                               ; preds = %28, %28
  store %struct.proto_ops* @msg_ops, %struct.proto_ops** %10, align 8
  %37 = load i32, i32* @SS_READY, align 4
  store i32 %37, i32* %11, align 4
  br label %41

38:                                               ; preds = %28
  %39 = load i32, i32* @EPROTOTYPE, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %113

41:                                               ; preds = %36, %34, %32
  %42 = load %struct.net*, %struct.net** %6, align 8
  %43 = load i32, i32* @AF_TIPC, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.sock* @sk_alloc(%struct.net* %42, i32 %43, i32 %44, i32* @tipc_proto)
  store %struct.sock* %45, %struct.sock** %12, align 8
  %46 = load %struct.sock*, %struct.sock** %12, align 8
  %47 = icmp eq %struct.sock* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %113

51:                                               ; preds = %41
  %52 = load %struct.sock*, %struct.sock** %12, align 8
  %53 = load i32, i32* @TIPC_LOW_IMPORTANCE, align 4
  %54 = call %struct.tipc_port* @tipc_createport_raw(%struct.sock* %52, i32* @dispatch, i32* @wakeupdispatch, i32 %53)
  store %struct.tipc_port* %54, %struct.tipc_port** %13, align 8
  %55 = load %struct.tipc_port*, %struct.tipc_port** %13, align 8
  %56 = icmp ne %struct.tipc_port* %55, null
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %51
  %62 = load %struct.sock*, %struct.sock** %12, align 8
  %63 = call i32 @sk_free(%struct.sock* %62)
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %113

66:                                               ; preds = %51
  %67 = load %struct.proto_ops*, %struct.proto_ops** %10, align 8
  %68 = load %struct.socket*, %struct.socket** %7, align 8
  %69 = getelementptr inbounds %struct.socket, %struct.socket* %68, i32 0, i32 2
  store %struct.proto_ops* %67, %struct.proto_ops** %69, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.socket*, %struct.socket** %7, align 8
  %72 = getelementptr inbounds %struct.socket, %struct.socket* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.socket*, %struct.socket** %7, align 8
  %74 = load %struct.sock*, %struct.sock** %12, align 8
  %75 = call i32 @sock_init_data(%struct.socket* %73, %struct.sock* %74)
  %76 = load i32, i32* @CONN_TIMEOUT_DEFAULT, align 4
  %77 = call i32 @msecs_to_jiffies(i32 %76)
  %78 = load %struct.sock*, %struct.sock** %12, align 8
  %79 = getelementptr inbounds %struct.sock, %struct.sock* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @backlog_rcv, align 4
  %81 = load %struct.sock*, %struct.sock** %12, align 8
  %82 = getelementptr inbounds %struct.sock, %struct.sock* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.tipc_port*, %struct.tipc_port** %13, align 8
  %84 = load %struct.sock*, %struct.sock** %12, align 8
  %85 = call %struct.TYPE_2__* @tipc_sk(%struct.sock* %84)
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store %struct.tipc_port* %83, %struct.tipc_port** %86, align 8
  %87 = load %struct.tipc_port*, %struct.tipc_port** %13, align 8
  %88 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @spin_unlock_bh(i32 %89)
  %91 = load %struct.socket*, %struct.socket** %7, align 8
  %92 = getelementptr inbounds %struct.socket, %struct.socket* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @SS_READY, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %66
  %97 = load %struct.tipc_port*, %struct.tipc_port** %13, align 8
  %98 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @tipc_set_portunreturnable(i32 %99, i32 1)
  %101 = load %struct.socket*, %struct.socket** %7, align 8
  %102 = getelementptr inbounds %struct.socket, %struct.socket* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 131
  br i1 %104, label %105, label %110

105:                                              ; preds = %96
  %106 = load %struct.tipc_port*, %struct.tipc_port** %13, align 8
  %107 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @tipc_set_portunreliable(i32 %108, i32 1)
  br label %110

110:                                              ; preds = %105, %96
  br label %111

111:                                              ; preds = %110, %66
  %112 = call i32 @atomic_inc(i32* @tipc_user_count)
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %111, %61, %48, %38, %25, %16
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*) #1

declare dso_local %struct.tipc_port* @tipc_createport_raw(%struct.sock*, i32*, i32*, i32) #1

declare dso_local i32 @sk_free(%struct.sock*) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local %struct.TYPE_2__* @tipc_sk(%struct.sock*) #1

declare dso_local i32 @spin_unlock_bh(i32) #1

declare dso_local i32 @tipc_set_portunreturnable(i32, i32) #1

declare dso_local i32 @tipc_set_portunreliable(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_tcp_data_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_tcp_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.rpc_xprt = type { i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rpc_xprt* }

@.str = private unnamed_addr constant [33 x i8] c"RPC:       xs_tcp_data_ready...\0A\00", align 1
@xs_tcp_data_recv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @xs_tcp_data_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xs_tcp_data_ready(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_xprt*, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = call i32 @read_lock_bh(i32* %10)
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call %struct.rpc_xprt* @xprt_from_sock(%struct.sock* %12)
  store %struct.rpc_xprt* %13, %struct.rpc_xprt** %5, align 8
  %14 = icmp ne %struct.rpc_xprt* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %37

16:                                               ; preds = %2
  %17 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  %18 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  %23 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %21, %16
  %25 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store %struct.rpc_xprt* %25, %struct.rpc_xprt** %27, align 8
  br label %28

28:                                               ; preds = %33, %24
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 65536, i32* %29, align 8
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = load i32, i32* @xs_tcp_data_recv, align 4
  %32 = call i32 @tcp_read_sock(%struct.sock* %30, %struct.TYPE_5__* %6, i32 %31)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %28, label %36

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %36, %15
  %38 = load %struct.sock*, %struct.sock** %3, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 0
  %40 = call i32 @read_unlock_bh(i32* %39)
  ret void
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local %struct.rpc_xprt* @xprt_from_sock(%struct.sock*) #1

declare dso_local i32 @tcp_read_sock(%struct.sock*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

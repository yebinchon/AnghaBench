; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_write_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_write_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.socket* }
%struct.socket = type { i32 }
%struct.rpc_xprt = type { i32 }

@SOCK_NOSPACE = common dso_local global i32 0, align 4
@SOCK_ASYNC_NOSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @xs_write_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xs_write_space(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.rpc_xprt*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = getelementptr inbounds %struct.sock, %struct.sock* %5, i32 0, i32 0
  %7 = load %struct.socket*, %struct.socket** %6, align 8
  store %struct.socket* %7, %struct.socket** %3, align 8
  %8 = icmp ne %struct.socket* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %37

14:                                               ; preds = %1
  %15 = load i32, i32* @SOCK_NOSPACE, align 4
  %16 = load %struct.socket*, %struct.socket** %3, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = call i32 @clear_bit(i32 %15, i32* %17)
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = call %struct.rpc_xprt* @xprt_from_sock(%struct.sock* %19)
  store %struct.rpc_xprt* %20, %struct.rpc_xprt** %4, align 8
  %21 = icmp ne %struct.rpc_xprt* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %37

27:                                               ; preds = %14
  %28 = load i32, i32* @SOCK_ASYNC_NOSPACE, align 4
  %29 = load %struct.socket*, %struct.socket** %3, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 0
  %31 = call i64 @test_and_clear_bit(i32 %28, i32* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %37

34:                                               ; preds = %27
  %35 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %36 = call i32 @xprt_write_space(%struct.rpc_xprt* %35)
  br label %37

37:                                               ; preds = %34, %33, %26, %13
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local %struct.rpc_xprt* @xprt_from_sock(%struct.sock*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @xprt_write_space(%struct.rpc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

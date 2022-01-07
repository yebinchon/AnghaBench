; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_create_sock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_create_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.rpc_xprt = type { i32 }
%struct.sock_xprt = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"RPC:       can't create %d transport socket (%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.socket* (%struct.rpc_xprt*, %struct.sock_xprt*, i32, i32, i32)* @xs_create_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.socket* @xs_create_sock(%struct.rpc_xprt* %0, %struct.sock_xprt* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.rpc_xprt*, align 8
  %8 = alloca %struct.sock_xprt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.socket*, align 8
  %13 = alloca i32, align 4
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %7, align 8
  store %struct.sock_xprt* %1, %struct.sock_xprt** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.rpc_xprt*, %struct.rpc_xprt** %7, align 8
  %15 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @__sock_create(i32 %16, i32 %17, i32 %18, i32 %19, %struct.socket** %12, i32 1)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %5
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %13, align 4
  %26 = sub nsw i32 0, %25
  %27 = call i32 @dprintk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %26)
  br label %42

28:                                               ; preds = %5
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.socket*, %struct.socket** %12, align 8
  %31 = call i32 @xs_reclassify_socket(i32 %29, %struct.socket* %30)
  %32 = load %struct.sock_xprt*, %struct.sock_xprt** %8, align 8
  %33 = load %struct.socket*, %struct.socket** %12, align 8
  %34 = call i32 @xs_bind(%struct.sock_xprt* %32, %struct.socket* %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load %struct.socket*, %struct.socket** %12, align 8
  %39 = call i32 @sock_release(%struct.socket* %38)
  br label %42

40:                                               ; preds = %28
  %41 = load %struct.socket*, %struct.socket** %12, align 8
  store %struct.socket* %41, %struct.socket** %6, align 8
  br label %45

42:                                               ; preds = %37, %23
  %43 = load i32, i32* %13, align 4
  %44 = call %struct.socket* @ERR_PTR(i32 %43)
  store %struct.socket* %44, %struct.socket** %6, align 8
  br label %45

45:                                               ; preds = %42, %40
  %46 = load %struct.socket*, %struct.socket** %6, align 8
  ret %struct.socket* %46
}

declare dso_local i32 @__sock_create(i32, i32, i32, i32, %struct.socket**, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local i32 @xs_reclassify_socket(i32, %struct.socket*) #1

declare dso_local i32 @xs_bind(%struct.sock_xprt*, %struct.socket*) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

declare dso_local %struct.socket* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

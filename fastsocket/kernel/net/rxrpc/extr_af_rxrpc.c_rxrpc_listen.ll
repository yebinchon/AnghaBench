; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_af_rxrpc.c_rxrpc_listen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_af_rxrpc.c_rxrpc_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.rxrpc_sock = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%p,%d\00", align 1
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RXRPC_SERVER_LISTENING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32)* @rxrpc_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_listen(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.rxrpc_sock*, align 8
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.socket*, %struct.socket** %3, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %10 = load %struct.sock*, %struct.sock** %9, align 8
  store %struct.sock* %10, %struct.sock** %5, align 8
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call %struct.rxrpc_sock* @rxrpc_sk(%struct.sock* %11)
  store %struct.rxrpc_sock* %12, %struct.rxrpc_sock** %6, align 8
  %13 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @_enter(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.rxrpc_sock* %13, i32 %14)
  %16 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %6, align 8
  %17 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %16, i32 0, i32 0
  %18 = call i32 @lock_sock(%struct.TYPE_3__* %17)
  %19 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %6, align 8
  %20 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %27 [
    i32 128, label %23
    i32 131, label %26
    i32 130, label %26
    i32 129, label %30
  ]

23:                                               ; preds = %2
  %24 = load i32, i32* @EADDRNOTAVAIL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %44

26:                                               ; preds = %2, %2
  br label %27

27:                                               ; preds = %2, %26
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %44

30:                                               ; preds = %2
  %31 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %6, align 8
  %32 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.sock*, %struct.sock** %5, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @RXRPC_SERVER_LISTENING, align 4
  %41 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %6, align 8
  %42 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %30, %27, %23
  %45 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %6, align 8
  %46 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %45, i32 0, i32 0
  %47 = call i32 @release_sock(%struct.TYPE_3__* %46)
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local %struct.rxrpc_sock* @rxrpc_sk(%struct.sock*) #1

declare dso_local i32 @_enter(i8*, %struct.rxrpc_sock*, i32) #1

declare dso_local i32 @lock_sock(%struct.TYPE_3__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @release_sock(%struct.TYPE_3__*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

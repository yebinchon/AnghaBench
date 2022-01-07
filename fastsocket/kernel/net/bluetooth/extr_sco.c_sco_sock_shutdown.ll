; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_sco.c_sco_sock_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_sco.c_sco_sock_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"sock %p, sk %p\00", align 1
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@SOCK_LINGER = common dso_local global i32 0, align 4
@BT_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32)* @sco_sock_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sco_sock_shutdown(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.socket*, %struct.socket** %4, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %10 = load %struct.sock*, %struct.sock** %9, align 8
  store %struct.sock* %10, %struct.sock** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.socket*, %struct.socket** %4, align 8
  %12 = load %struct.sock*, %struct.sock** %6, align 8
  %13 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.socket* %11, %struct.sock* %12)
  %14 = load %struct.sock*, %struct.sock** %6, align 8
  %15 = icmp ne %struct.sock* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load %struct.sock*, %struct.sock** %6, align 8
  %19 = call i32 @lock_sock(%struct.sock* %18)
  %20 = load %struct.sock*, %struct.sock** %6, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %49, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @SHUTDOWN_MASK, align 4
  %26 = load %struct.sock*, %struct.sock** %6, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.sock*, %struct.sock** %6, align 8
  %29 = call i32 @sco_sock_clear_timer(%struct.sock* %28)
  %30 = load %struct.sock*, %struct.sock** %6, align 8
  %31 = call i32 @__sco_sock_close(%struct.sock* %30)
  %32 = load %struct.sock*, %struct.sock** %6, align 8
  %33 = load i32, i32* @SOCK_LINGER, align 4
  %34 = call i64 @sock_flag(%struct.sock* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %24
  %37 = load %struct.sock*, %struct.sock** %6, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.sock*, %struct.sock** %6, align 8
  %43 = load i32, i32* @BT_CLOSED, align 4
  %44 = load %struct.sock*, %struct.sock** %6, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @bt_sock_wait_state(%struct.sock* %42, i32 %43, i64 %46)
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %41, %36, %24
  br label %49

49:                                               ; preds = %48, %17
  %50 = load %struct.sock*, %struct.sock** %6, align 8
  %51 = call i32 @release_sock(%struct.sock* %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %16
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @BT_DBG(i8*, %struct.socket*, %struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @sco_sock_clear_timer(%struct.sock*) #1

declare dso_local i32 @__sco_sock_close(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @bt_sock_wait_state(%struct.sock*, i32, i64) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_sco.c_sco_sock_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_sco.c_sco_sock_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32, i32 }
%struct.net = type { i32 }
%struct.socket = type { i32 }
%struct.TYPE_2__ = type { i32 }

@PF_BLUETOOTH = common dso_local global i32 0, align 4
@sco_proto = common dso_local global i32 0, align 4
@sco_sock_destruct = common dso_local global i32 0, align 4
@SCO_CONN_TIMEOUT = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@BT_OPEN = common dso_local global i32 0, align 4
@sco_sock_timeout = common dso_local global i32 0, align 4
@sco_sk_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.net*, %struct.socket*, i32, i32)* @sco_sock_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @sco_sock_alloc(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.net*, %struct.net** %6, align 8
  %12 = load i32, i32* @PF_BLUETOOTH, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call %struct.sock* @sk_alloc(%struct.net* %11, i32 %12, i32 %13, i32* @sco_proto)
  store %struct.sock* %14, %struct.sock** %10, align 8
  %15 = load %struct.sock*, %struct.sock** %10, align 8
  %16 = icmp ne %struct.sock* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %50

18:                                               ; preds = %4
  %19 = load %struct.socket*, %struct.socket** %7, align 8
  %20 = load %struct.sock*, %struct.sock** %10, align 8
  %21 = call i32 @sock_init_data(%struct.socket* %19, %struct.sock* %20)
  %22 = load %struct.sock*, %struct.sock** %10, align 8
  %23 = call %struct.TYPE_2__* @bt_sk(%struct.sock* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load i32, i32* @sco_sock_destruct, align 4
  %27 = load %struct.sock*, %struct.sock** %10, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @SCO_CONN_TIMEOUT, align 4
  %30 = load %struct.sock*, %struct.sock** %10, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.sock*, %struct.sock** %10, align 8
  %33 = load i32, i32* @SOCK_ZAPPED, align 4
  %34 = call i32 @sock_reset_flag(%struct.sock* %32, i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.sock*, %struct.sock** %10, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @BT_OPEN, align 4
  %39 = load %struct.sock*, %struct.sock** %10, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.sock*, %struct.sock** %10, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 1
  %43 = load i32, i32* @sco_sock_timeout, align 4
  %44 = load %struct.sock*, %struct.sock** %10, align 8
  %45 = ptrtoint %struct.sock* %44 to i64
  %46 = call i32 @setup_timer(i32* %42, i32 %43, i64 %45)
  %47 = load %struct.sock*, %struct.sock** %10, align 8
  %48 = call i32 @bt_sock_link(i32* @sco_sk_list, %struct.sock* %47)
  %49 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %49, %struct.sock** %5, align 8
  br label %50

50:                                               ; preds = %18, %17
  %51 = load %struct.sock*, %struct.sock** %5, align 8
  ret %struct.sock* %51
}

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.TYPE_2__* @bt_sk(%struct.sock*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @bt_sock_link(i32*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

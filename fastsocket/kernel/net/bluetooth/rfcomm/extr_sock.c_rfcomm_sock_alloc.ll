; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sock_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sock_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32, i32, i32 }
%struct.net = type { i32 }
%struct.socket = type { i32 }
%struct.rfcomm_dlc = type { %struct.sock*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.rfcomm_dlc* }

@PF_BLUETOOTH = common dso_local global i32 0, align 4
@rfcomm_proto = common dso_local global i32 0, align 4
@rfcomm_sk_data_ready = common dso_local global i32 0, align 4
@rfcomm_sk_state_change = common dso_local global i32 0, align 4
@rfcomm_sock_destruct = common dso_local global i32 0, align 4
@RFCOMM_CONN_TIMEOUT = common dso_local global i32 0, align 4
@RFCOMM_MAX_CREDITS = common dso_local global i32 0, align 4
@RFCOMM_DEFAULT_MTU = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@BT_OPEN = common dso_local global i32 0, align 4
@rfcomm_sk_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"sk %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.net*, %struct.socket*, i32, i32)* @rfcomm_sock_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @rfcomm_sock_alloc(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rfcomm_dlc*, align 8
  %11 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.net*, %struct.net** %6, align 8
  %13 = load i32, i32* @PF_BLUETOOTH, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call %struct.sock* @sk_alloc(%struct.net* %12, i32 %13, i32 %14, i32* @rfcomm_proto)
  store %struct.sock* %15, %struct.sock** %11, align 8
  %16 = load %struct.sock*, %struct.sock** %11, align 8
  %17 = icmp ne %struct.sock* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %80

19:                                               ; preds = %4
  %20 = load %struct.socket*, %struct.socket** %7, align 8
  %21 = load %struct.sock*, %struct.sock** %11, align 8
  %22 = call i32 @sock_init_data(%struct.socket* %20, %struct.sock* %21)
  %23 = load %struct.sock*, %struct.sock** %11, align 8
  %24 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.rfcomm_dlc* @rfcomm_dlc_alloc(i32 %27)
  store %struct.rfcomm_dlc* %28, %struct.rfcomm_dlc** %10, align 8
  %29 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %10, align 8
  %30 = icmp ne %struct.rfcomm_dlc* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %19
  %32 = load %struct.sock*, %struct.sock** %11, align 8
  %33 = call i32 @sk_free(%struct.sock* %32)
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %80

34:                                               ; preds = %19
  %35 = load i32, i32* @rfcomm_sk_data_ready, align 4
  %36 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %10, align 8
  %37 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @rfcomm_sk_state_change, align 4
  %39 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %10, align 8
  %40 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %10, align 8
  %42 = load %struct.sock*, %struct.sock** %11, align 8
  %43 = call %struct.TYPE_3__* @rfcomm_pi(%struct.sock* %42)
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store %struct.rfcomm_dlc* %41, %struct.rfcomm_dlc** %44, align 8
  %45 = load %struct.sock*, %struct.sock** %11, align 8
  %46 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %10, align 8
  %47 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %46, i32 0, i32 0
  store %struct.sock* %45, %struct.sock** %47, align 8
  %48 = load i32, i32* @rfcomm_sock_destruct, align 4
  %49 = load %struct.sock*, %struct.sock** %11, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @RFCOMM_CONN_TIMEOUT, align 4
  %52 = load %struct.sock*, %struct.sock** %11, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @RFCOMM_MAX_CREDITS, align 4
  %55 = load i32, i32* @RFCOMM_DEFAULT_MTU, align 4
  %56 = mul nsw i32 %54, %55
  %57 = mul nsw i32 %56, 10
  %58 = load %struct.sock*, %struct.sock** %11, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @RFCOMM_MAX_CREDITS, align 4
  %61 = load i32, i32* @RFCOMM_DEFAULT_MTU, align 4
  %62 = mul nsw i32 %60, %61
  %63 = mul nsw i32 %62, 10
  %64 = load %struct.sock*, %struct.sock** %11, align 8
  %65 = getelementptr inbounds %struct.sock, %struct.sock* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.sock*, %struct.sock** %11, align 8
  %67 = load i32, i32* @SOCK_ZAPPED, align 4
  %68 = call i32 @sock_reset_flag(%struct.sock* %66, i32 %67)
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.sock*, %struct.sock** %11, align 8
  %71 = getelementptr inbounds %struct.sock, %struct.sock* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @BT_OPEN, align 4
  %73 = load %struct.sock*, %struct.sock** %11, align 8
  %74 = getelementptr inbounds %struct.sock, %struct.sock* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.sock*, %struct.sock** %11, align 8
  %76 = call i32 @bt_sock_link(i32* @rfcomm_sk_list, %struct.sock* %75)
  %77 = load %struct.sock*, %struct.sock** %11, align 8
  %78 = call i32 @BT_DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.sock* %77)
  %79 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %79, %struct.sock** %5, align 8
  br label %80

80:                                               ; preds = %34, %31, %18
  %81 = load %struct.sock*, %struct.sock** %5, align 8
  ret %struct.sock* %81
}

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.TYPE_4__* @bt_sk(%struct.sock*) #1

declare dso_local %struct.rfcomm_dlc* @rfcomm_dlc_alloc(i32) #1

declare dso_local i32 @sk_free(%struct.sock*) #1

declare dso_local %struct.TYPE_3__* @rfcomm_pi(%struct.sock*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @bt_sock_link(i32*, %struct.sock*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sk_state_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sk_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dlc = type { i64, i32, %struct.sock* }
%struct.sock = type { i32, i64, i32 (%struct.sock*)*, i32 (%struct.sock*, i32)* }
%struct.TYPE_2__ = type { i32, %struct.sock* }

@.str = private unnamed_addr constant [24 x i8] c"dlc %p state %ld err %d\00", align 1
@BT_CLOSED = common dso_local global i64 0, align 8
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfcomm_dlc*, i32)* @rfcomm_sk_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcomm_sk_state_change(%struct.rfcomm_dlc* %0, i32 %1) #0 {
  %3 = alloca %struct.rfcomm_dlc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sock*, align 8
  store %struct.rfcomm_dlc* %0, %struct.rfcomm_dlc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %8 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %7, i32 0, i32 2
  %9 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %9, %struct.sock** %5, align 8
  %10 = load %struct.sock*, %struct.sock** %5, align 8
  %11 = icmp ne %struct.sock* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %95

13:                                               ; preds = %2
  %14 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %15 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %16 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dlc* %14, i64 %17, i32 %18)
  %20 = load %struct.sock*, %struct.sock** %5, align 8
  %21 = call i32 @bh_lock_sock(%struct.sock* %20)
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.sock*, %struct.sock** %5, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %24, %13
  %29 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %30 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.sock*, %struct.sock** %5, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct.sock*, %struct.sock** %5, align 8
  %35 = call %struct.TYPE_2__* @bt_sk(%struct.sock* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load %struct.sock*, %struct.sock** %36, align 8
  store %struct.sock* %37, %struct.sock** %6, align 8
  %38 = load %struct.sock*, %struct.sock** %6, align 8
  %39 = icmp ne %struct.sock* %38, null
  br i1 %39, label %40, label %58

40:                                               ; preds = %28
  %41 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %42 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @BT_CLOSED, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.sock*, %struct.sock** %5, align 8
  %48 = load i32, i32* @SOCK_ZAPPED, align 4
  %49 = call i32 @sock_set_flag(%struct.sock* %47, i32 %48)
  %50 = load %struct.sock*, %struct.sock** %5, align 8
  %51 = call i32 @bt_accept_unlink(%struct.sock* %50)
  br label %52

52:                                               ; preds = %46, %40
  %53 = load %struct.sock*, %struct.sock** %6, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 3
  %55 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %54, align 8
  %56 = load %struct.sock*, %struct.sock** %6, align 8
  %57 = call i32 %55(%struct.sock* %56, i32 0)
  br label %78

58:                                               ; preds = %28
  %59 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %60 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @BT_CONNECTED, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %66 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.sock*, %struct.sock** %5, align 8
  %69 = call %struct.TYPE_2__* @bt_sk(%struct.sock* %68)
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @rfcomm_session_getaddr(i32 %67, i32* %70, i32* null)
  br label %72

72:                                               ; preds = %64, %58
  %73 = load %struct.sock*, %struct.sock** %5, align 8
  %74 = getelementptr inbounds %struct.sock, %struct.sock* %73, i32 0, i32 2
  %75 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %74, align 8
  %76 = load %struct.sock*, %struct.sock** %5, align 8
  %77 = call i32 %75(%struct.sock* %76)
  br label %78

78:                                               ; preds = %72, %52
  %79 = load %struct.sock*, %struct.sock** %5, align 8
  %80 = call i32 @bh_unlock_sock(%struct.sock* %79)
  %81 = load %struct.sock*, %struct.sock** %6, align 8
  %82 = icmp ne %struct.sock* %81, null
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  %84 = load %struct.sock*, %struct.sock** %5, align 8
  %85 = load i32, i32* @SOCK_ZAPPED, align 4
  %86 = call i64 @sock_flag(%struct.sock* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %90 = call i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc* %89)
  %91 = load %struct.sock*, %struct.sock** %5, align 8
  %92 = call i32 @rfcomm_sock_kill(%struct.sock* %91)
  %93 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %94 = call i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc* %93)
  br label %95

95:                                               ; preds = %12, %88, %83, %78
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dlc*, i64, i32) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @bt_sk(%struct.sock*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @bt_accept_unlink(%struct.sock*) #1

declare dso_local i32 @rfcomm_session_getaddr(i32, i32*, i32*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_sock_kill(%struct.sock*) #1

declare dso_local i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

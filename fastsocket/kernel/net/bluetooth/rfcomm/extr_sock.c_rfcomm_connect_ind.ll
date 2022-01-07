; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_sock.c_rfcomm_connect_ind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_sock.c_rfcomm_connect_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i32 }
%struct.rfcomm_dlc = type { i32 }
%struct.sock = type { i32 (%struct.sock*)*, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_3__ = type { %struct.rfcomm_dlc*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"session %p channel %d\00", align 1
@BT_LISTEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"backlog full %d\00", align 1
@BTPROTO_RFCOMM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BT_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rfcomm_connect_ind(%struct.rfcomm_session* %0, i32 %1, %struct.rfcomm_dlc** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rfcomm_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rfcomm_dlc**, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.rfcomm_dlc** %2, %struct.rfcomm_dlc*** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.rfcomm_session*, %struct.rfcomm_session** %5, align 8
  %14 = ptrtoint %struct.rfcomm_session* %13 to i32
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load %struct.rfcomm_session*, %struct.rfcomm_session** %5, align 8
  %18 = call i32 @rfcomm_session_getaddr(%struct.rfcomm_session* %17, i32* %10, i32* %11)
  %19 = load i32, i32* @BT_LISTEN, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.sock* @rfcomm_get_sock_by_channel(i32 %19, i32 %20, i32* %10)
  store %struct.sock* %21, %struct.sock** %9, align 8
  %22 = load %struct.sock*, %struct.sock** %9, align 8
  %23 = icmp ne %struct.sock* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %86

25:                                               ; preds = %3
  %26 = load %struct.sock*, %struct.sock** %9, align 8
  %27 = call i64 @sk_acceptq_is_full(%struct.sock* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.sock*, %struct.sock** %9, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %70

34:                                               ; preds = %25
  %35 = load %struct.sock*, %struct.sock** %9, align 8
  %36 = call i32 @sock_net(%struct.sock* %35)
  %37 = load i32, i32* @BTPROTO_RFCOMM, align 4
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = call %struct.sock* @rfcomm_sock_alloc(i32 %36, i32* null, i32 %37, i32 %38)
  store %struct.sock* %39, %struct.sock** %8, align 8
  %40 = load %struct.sock*, %struct.sock** %8, align 8
  %41 = icmp ne %struct.sock* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  br label %70

43:                                               ; preds = %34
  %44 = load %struct.sock*, %struct.sock** %8, align 8
  %45 = load %struct.sock*, %struct.sock** %9, align 8
  %46 = call i32 @rfcomm_sock_init(%struct.sock* %44, %struct.sock* %45)
  %47 = load %struct.sock*, %struct.sock** %8, align 8
  %48 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %47)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = call i32 @bacpy(i32* %49, i32* %10)
  %51 = load %struct.sock*, %struct.sock** %8, align 8
  %52 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %51)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = call i32 @bacpy(i32* %53, i32* %11)
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.sock*, %struct.sock** %8, align 8
  %57 = call %struct.TYPE_3__* @rfcomm_pi(%struct.sock* %56)
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 8
  %59 = load i32, i32* @BT_CONFIG, align 4
  %60 = load %struct.sock*, %struct.sock** %8, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.sock*, %struct.sock** %9, align 8
  %63 = load %struct.sock*, %struct.sock** %8, align 8
  %64 = call i32 @bt_accept_enqueue(%struct.sock* %62, %struct.sock* %63)
  %65 = load %struct.sock*, %struct.sock** %8, align 8
  %66 = call %struct.TYPE_3__* @rfcomm_pi(%struct.sock* %65)
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %67, align 8
  %69 = load %struct.rfcomm_dlc**, %struct.rfcomm_dlc*** %7, align 8
  store %struct.rfcomm_dlc* %68, %struct.rfcomm_dlc** %69, align 8
  store i32 1, i32* %12, align 4
  br label %70

70:                                               ; preds = %43, %42, %29
  %71 = load %struct.sock*, %struct.sock** %9, align 8
  %72 = call i32 @bh_unlock_sock(%struct.sock* %71)
  %73 = load %struct.sock*, %struct.sock** %9, align 8
  %74 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %73)
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load %struct.sock*, %struct.sock** %9, align 8
  %80 = getelementptr inbounds %struct.sock, %struct.sock* %79, i32 0, i32 0
  %81 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %80, align 8
  %82 = load %struct.sock*, %struct.sock** %9, align 8
  %83 = call i32 %81(%struct.sock* %82)
  br label %84

84:                                               ; preds = %78, %70
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %24
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @BT_DBG(i8*, i32, ...) #1

declare dso_local i32 @rfcomm_session_getaddr(%struct.rfcomm_session*, i32*, i32*) #1

declare dso_local %struct.sock* @rfcomm_get_sock_by_channel(i32, i32, i32*) #1

declare dso_local i64 @sk_acceptq_is_full(%struct.sock*) #1

declare dso_local %struct.sock* @rfcomm_sock_alloc(i32, i32*, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @rfcomm_sock_init(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @bt_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_3__* @rfcomm_pi(%struct.sock*) #1

declare dso_local i32 @bt_accept_enqueue(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

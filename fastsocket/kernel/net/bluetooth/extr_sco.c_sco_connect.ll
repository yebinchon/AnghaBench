; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_sco.c_sco_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_sco.c_sco_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i64 }
%struct.sco_conn = type { i32 }
%struct.hci_conn = type { i64 }
%struct.hci_dev = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s -> %s\00", align 1
@EHOSTUNREACH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@disable_esco = common dso_local global i32 0, align 4
@ESCO_LINK = common dso_local global i32 0, align 4
@SCO_LINK = common dso_local global i32 0, align 4
@BT_SECURITY_LOW = common dso_local global i32 0, align 4
@HCI_AT_NO_BONDING = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@BT_CONNECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @sco_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sco_connect(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sco_conn*, align 8
  %7 = alloca %struct.hci_conn*, align 8
  %8 = alloca %struct.hci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.TYPE_2__* @bt_sk(%struct.sock* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i32* %13, i32** %4, align 8
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = call %struct.TYPE_2__* @bt_sk(%struct.sock* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @batostr(i32* %17)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @batostr(i32* %19)
  %21 = call i32 @BT_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call %struct.hci_dev* @hci_get_route(i32* %22, i32* %23)
  store %struct.hci_dev* %24, %struct.hci_dev** %8, align 8
  %25 = icmp ne %struct.hci_dev* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @EHOSTUNREACH, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %102

29:                                               ; preds = %1
  %30 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %31 = call i32 @hci_dev_lock_bh(%struct.hci_dev* %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %35 = call i64 @lmp_esco_capable(%struct.hci_dev* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load i32, i32* @disable_esco, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @ESCO_LINK, align 4
  store i32 %41, i32* %10, align 4
  br label %44

42:                                               ; preds = %37, %29
  %43 = load i32, i32* @SCO_LINK, align 4
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @BT_SECURITY_LOW, align 4
  %49 = load i32, i32* @HCI_AT_NO_BONDING, align 4
  %50 = call %struct.hci_conn* @hci_connect(%struct.hci_dev* %45, i32 %46, i32* %47, i32 %48, i32 %49)
  store %struct.hci_conn* %50, %struct.hci_conn** %7, align 8
  %51 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %52 = icmp ne %struct.hci_conn* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %44
  br label %96

54:                                               ; preds = %44
  %55 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %56 = call %struct.sco_conn* @sco_conn_add(%struct.hci_conn* %55, i32 0)
  store %struct.sco_conn* %56, %struct.sco_conn** %6, align 8
  %57 = load %struct.sco_conn*, %struct.sco_conn** %6, align 8
  %58 = icmp ne %struct.sco_conn* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %61 = call i32 @hci_conn_put(%struct.hci_conn* %60)
  br label %96

62:                                               ; preds = %54
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.sco_conn*, %struct.sco_conn** %6, align 8
  %65 = getelementptr inbounds %struct.sco_conn, %struct.sco_conn* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @bacpy(i32* %63, i32 %66)
  %68 = load %struct.sco_conn*, %struct.sco_conn** %6, align 8
  %69 = load %struct.sock*, %struct.sock** %3, align 8
  %70 = call i32 @sco_chan_add(%struct.sco_conn* %68, %struct.sock* %69, i32* null)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %96

74:                                               ; preds = %62
  %75 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %76 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @BT_CONNECTED, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load %struct.sock*, %struct.sock** %3, align 8
  %82 = call i32 @sco_sock_clear_timer(%struct.sock* %81)
  %83 = load i64, i64* @BT_CONNECTED, align 8
  %84 = load %struct.sock*, %struct.sock** %3, align 8
  %85 = getelementptr inbounds %struct.sock, %struct.sock* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  br label %95

86:                                               ; preds = %74
  %87 = load i64, i64* @BT_CONNECT, align 8
  %88 = load %struct.sock*, %struct.sock** %3, align 8
  %89 = getelementptr inbounds %struct.sock, %struct.sock* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.sock*, %struct.sock** %3, align 8
  %91 = load %struct.sock*, %struct.sock** %3, align 8
  %92 = getelementptr inbounds %struct.sock, %struct.sock* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @sco_sock_set_timer(%struct.sock* %90, i32 %93)
  br label %95

95:                                               ; preds = %86, %80
  br label %96

96:                                               ; preds = %95, %73, %59, %53
  %97 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %98 = call i32 @hci_dev_unlock_bh(%struct.hci_dev* %97)
  %99 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %100 = call i32 @hci_dev_put(%struct.hci_dev* %99)
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %96, %26
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.TYPE_2__* @bt_sk(%struct.sock*) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @batostr(i32*) #1

declare dso_local %struct.hci_dev* @hci_get_route(i32*, i32*) #1

declare dso_local i32 @hci_dev_lock_bh(%struct.hci_dev*) #1

declare dso_local i64 @lmp_esco_capable(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_connect(%struct.hci_dev*, i32, i32*, i32, i32) #1

declare dso_local %struct.sco_conn* @sco_conn_add(%struct.hci_conn*, i32) #1

declare dso_local i32 @hci_conn_put(%struct.hci_conn*) #1

declare dso_local i32 @bacpy(i32*, i32) #1

declare dso_local i32 @sco_chan_add(%struct.sco_conn*, %struct.sock*, i32*) #1

declare dso_local i32 @sco_sock_clear_timer(%struct.sock*) #1

declare dso_local i32 @sco_sock_set_timer(%struct.sock*, i32) #1

declare dso_local i32 @hci_dev_unlock_bh(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_sync_conn_complete_evt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_sync_conn_complete_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_sync_conn_complete = type { i32, i64, i32, i32 }
%struct.hci_conn = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s status %d\00", align 1
@ESCO_LINK = common dso_local global i64 0, align 8
@SCO_LINK = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i32 0, align 4
@SCO_ESCO_MASK = common dso_local global i32 0, align 4
@EDR_ESCO_MASK = common dso_local global i32 0, align 4
@BT_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_sync_conn_complete_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_sync_conn_complete_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_sync_conn_complete*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.hci_ev_sync_conn_complete*
  store %struct.hci_ev_sync_conn_complete* %11, %struct.hci_ev_sync_conn_complete** %5, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.hci_ev_sync_conn_complete*, %struct.hci_ev_sync_conn_complete** %5, align 8
  %16 = getelementptr inbounds %struct.hci_ev_sync_conn_complete, %struct.hci_ev_sync_conn_complete* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %20 = call i32 @hci_dev_lock(%struct.hci_dev* %19)
  %21 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %22 = load %struct.hci_ev_sync_conn_complete*, %struct.hci_ev_sync_conn_complete** %5, align 8
  %23 = getelementptr inbounds %struct.hci_ev_sync_conn_complete, %struct.hci_ev_sync_conn_complete* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.hci_ev_sync_conn_complete*, %struct.hci_ev_sync_conn_complete** %5, align 8
  %26 = getelementptr inbounds %struct.hci_ev_sync_conn_complete, %struct.hci_ev_sync_conn_complete* %25, i32 0, i32 3
  %27 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %21, i64 %24, i32* %26)
  store %struct.hci_conn* %27, %struct.hci_conn** %6, align 8
  %28 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %29 = icmp ne %struct.hci_conn* %28, null
  br i1 %29, label %50, label %30

30:                                               ; preds = %2
  %31 = load %struct.hci_ev_sync_conn_complete*, %struct.hci_ev_sync_conn_complete** %5, align 8
  %32 = getelementptr inbounds %struct.hci_ev_sync_conn_complete, %struct.hci_ev_sync_conn_complete* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ESCO_LINK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %118

37:                                               ; preds = %30
  %38 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %39 = load i64, i64* @ESCO_LINK, align 8
  %40 = load %struct.hci_ev_sync_conn_complete*, %struct.hci_ev_sync_conn_complete** %5, align 8
  %41 = getelementptr inbounds %struct.hci_ev_sync_conn_complete, %struct.hci_ev_sync_conn_complete* %40, i32 0, i32 3
  %42 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %38, i64 %39, i32* %41)
  store %struct.hci_conn* %42, %struct.hci_conn** %6, align 8
  %43 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %44 = icmp ne %struct.hci_conn* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  br label %118

46:                                               ; preds = %37
  %47 = load i32, i32* @SCO_LINK, align 4
  %48 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %49 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %2
  %51 = load %struct.hci_ev_sync_conn_complete*, %struct.hci_ev_sync_conn_complete** %5, align 8
  %52 = getelementptr inbounds %struct.hci_ev_sync_conn_complete, %struct.hci_ev_sync_conn_complete* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %100 [
    i32 0, label %54
    i32 28, label %68
    i32 31, label %68
  ]

54:                                               ; preds = %50
  %55 = load %struct.hci_ev_sync_conn_complete*, %struct.hci_ev_sync_conn_complete** %5, align 8
  %56 = getelementptr inbounds %struct.hci_ev_sync_conn_complete, %struct.hci_ev_sync_conn_complete* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @__le16_to_cpu(i32 %57)
  %59 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %60 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @BT_CONNECTED, align 4
  %62 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %63 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %65 = call i32 @hci_conn_hold_device(%struct.hci_conn* %64)
  %66 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %67 = call i32 @hci_conn_add_sysfs(%struct.hci_conn* %66)
  br label %104

68:                                               ; preds = %50, %50
  %69 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %70 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %99

73:                                               ; preds = %68
  %74 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %75 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %76, 2
  br i1 %77, label %78, label %99

78:                                               ; preds = %73
  %79 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %80 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @SCO_ESCO_MASK, align 4
  %83 = and i32 %81, %82
  %84 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %85 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @EDR_ESCO_MASK, align 4
  %88 = and i32 %86, %87
  %89 = or i32 %83, %88
  %90 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %91 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %93 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %94 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %93, i32 0, i32 3
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @hci_setup_sync(%struct.hci_conn* %92, i32 %97)
  br label %118

99:                                               ; preds = %73, %68
  br label %100

100:                                              ; preds = %50, %99
  %101 = load i32, i32* @BT_CLOSED, align 4
  %102 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %103 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %100, %54
  %105 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %106 = load %struct.hci_ev_sync_conn_complete*, %struct.hci_ev_sync_conn_complete** %5, align 8
  %107 = getelementptr inbounds %struct.hci_ev_sync_conn_complete, %struct.hci_ev_sync_conn_complete* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @hci_proto_connect_cfm(%struct.hci_conn* %105, i32 %108)
  %110 = load %struct.hci_ev_sync_conn_complete*, %struct.hci_ev_sync_conn_complete** %5, align 8
  %111 = getelementptr inbounds %struct.hci_ev_sync_conn_complete, %struct.hci_ev_sync_conn_complete* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %104
  %115 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %116 = call i32 @hci_conn_del(%struct.hci_conn* %115)
  br label %117

117:                                              ; preds = %114, %104
  br label %118

118:                                              ; preds = %117, %78, %45, %36
  %119 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %120 = call i32 @hci_dev_unlock(%struct.hci_dev* %119)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i64, i32*) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @hci_conn_hold_device(%struct.hci_conn*) #1

declare dso_local i32 @hci_conn_add_sysfs(%struct.hci_conn*) #1

declare dso_local i32 @hci_setup_sync(%struct.hci_conn*, i32) #1

declare dso_local i32 @hci_proto_connect_cfm(%struct.hci_conn*, i32) #1

declare dso_local i32 @hci_conn_del(%struct.hci_conn*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

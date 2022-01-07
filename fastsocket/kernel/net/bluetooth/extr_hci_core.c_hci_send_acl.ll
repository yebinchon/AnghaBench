; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_send_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_send_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i32, %struct.TYPE_6__, i32, i8*, %struct.hci_conn*, %struct.hci_dev* }
%struct.TYPE_6__ = type { i32 }
%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i32, %struct.TYPE_6__, i32, i8*, %struct.sk_buff*, %struct.hci_dev* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_5__ = type { %struct.sk_buff* }

@.str = private unnamed_addr constant [22 x i8] c"%s conn %p flags 0x%x\00", align 1
@HCI_ACLDATA_PKT = common dso_local global i8* null, align 8
@ACL_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s nonfrag skb %p len %d\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%s frag %p len %d\00", align 1
@ACL_CONT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_send_acl(%struct.hci_conn* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.hci_conn*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %10 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %9, i32 0, i32 5
  %11 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  store %struct.hci_dev* %11, %struct.hci_dev** %7, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %16 = bitcast %struct.hci_conn* %15 to %struct.sk_buff*
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %14, %struct.sk_buff* %16, i32 %17)
  %19 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %20 = bitcast %struct.hci_dev* %19 to i8*
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @HCI_ACLDATA_PKT, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call %struct.TYPE_7__* @bt_cb(%struct.sk_buff* %24)
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i8* %23, i8** %26, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %29 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @ACL_START, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @hci_add_acl_hdr(%struct.sk_buff* %27, i32 %30, i32 %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.sk_buff*, %struct.sk_buff** %37, align 8
  store %struct.sk_buff* %38, %struct.sk_buff** %8, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %53, label %40

40:                                               ; preds = %3
  %41 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %42 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %43, %struct.sk_buff* %44, i32 %47)
  %49 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %50 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %49, i32 0, i32 1
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = call i32 @skb_queue_tail(%struct.TYPE_6__* %50, %struct.sk_buff* %51)
  br label %114

53:                                               ; preds = %3
  %54 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %55 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %56, %struct.sk_buff* %57, i32 %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %62)
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %64, align 8
  %65 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %66 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = call i32 @spin_lock_bh(i32* %67)
  %69 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %70 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %69, i32 0, i32 1
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = call i32 @__skb_queue_tail(%struct.TYPE_6__* %70, %struct.sk_buff* %71)
  br label %73

73:                                               ; preds = %106, %53
  %74 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %74, %struct.sk_buff** %5, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %76, align 8
  store %struct.sk_buff* %77, %struct.sk_buff** %8, align 8
  %78 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %79 = bitcast %struct.hci_dev* %78 to i8*
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** @HCI_ACLDATA_PKT, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = call %struct.TYPE_7__* @bt_cb(%struct.sk_buff* %83)
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i8* %82, i8** %85, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %88 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @ACL_CONT, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @hci_add_acl_hdr(%struct.sk_buff* %86, i32 %89, i32 %92)
  %94 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %95 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %96, %struct.sk_buff* %97, i32 %100)
  %102 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %103 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %102, i32 0, i32 1
  %104 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %105 = call i32 @__skb_queue_tail(%struct.TYPE_6__* %103, %struct.sk_buff* %104)
  br label %106

106:                                              ; preds = %73
  %107 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %108 = icmp ne %struct.sk_buff* %107, null
  br i1 %108, label %73, label %109

109:                                              ; preds = %106
  %110 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %111 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = call i32 @spin_unlock_bh(i32* %112)
  br label %114

114:                                              ; preds = %109, %40
  %115 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %116 = call i32 @hci_sched_tx(%struct.hci_dev* %115)
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*, i32, %struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_7__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @hci_add_acl_hdr(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(%struct.TYPE_6__*, %struct.sk_buff*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__skb_queue_tail(%struct.TYPE_6__*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @hci_sched_tx(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

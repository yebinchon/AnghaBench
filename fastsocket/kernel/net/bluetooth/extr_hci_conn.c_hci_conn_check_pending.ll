; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_conn.c_hci_conn_check_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_conn.c_hci_conn_check_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_conn = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"hdev %s\00", align 1
@ACL_LINK = common dso_local global i32 0, align 4
@BT_CONNECT2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_conn_check_pending(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %4 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %5 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %9 = call i32 @hci_dev_lock(%struct.hci_dev* %8)
  %10 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %11 = load i32, i32* @ACL_LINK, align 4
  %12 = load i32, i32* @BT_CONNECT2, align 4
  %13 = call %struct.hci_conn* @hci_conn_hash_lookup_state(%struct.hci_dev* %10, i32 %11, i32 %12)
  store %struct.hci_conn* %13, %struct.hci_conn** %3, align 8
  %14 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %15 = icmp ne %struct.hci_conn* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %18 = call i32 @hci_acl_connect(%struct.hci_conn* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %21 = call i32 @hci_dev_unlock(%struct.hci_dev* %20)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_state(%struct.hci_dev*, i32, i32) #1

declare dso_local i32 @hci_acl_connect(%struct.hci_conn*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

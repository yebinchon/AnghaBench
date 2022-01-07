; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_conn.c_hci_conn_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_conn.c_hci_conn_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i64, i32, %struct.hci_conn*, i64, i32, i32, i32, %struct.hci_dev* }
%struct.hci_dev = type { i32, i32 (%struct.hci_dev*, i32)*, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"%s conn %p handle %d\00", align 1
@ACL_LINK = common dso_local global i64 0, align 8
@HCI_NOTIFY_CONN_DEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_conn_del(%struct.hci_conn* %0) #0 {
  %2 = alloca %struct.hci_conn*, align 8
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.hci_conn*, align 8
  %5 = alloca %struct.hci_conn*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %2, align 8
  %6 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %7 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %6, i32 0, i32 7
  %8 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  store %struct.hci_dev* %8, %struct.hci_dev** %3, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %13 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %14 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %11, %struct.hci_conn* %12, i32 %15)
  %17 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %18 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %17, i32 0, i32 5
  %19 = call i32 @del_timer(i32* %18)
  %20 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %21 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %20, i32 0, i32 4
  %22 = call i32 @del_timer(i32* %21)
  %23 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %24 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ACL_LINK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %1
  %29 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %30 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %29, i32 0, i32 2
  %31 = load %struct.hci_conn*, %struct.hci_conn** %30, align 8
  store %struct.hci_conn* %31, %struct.hci_conn** %4, align 8
  %32 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %33 = icmp ne %struct.hci_conn* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %36 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %35, i32 0, i32 2
  store %struct.hci_conn* null, %struct.hci_conn** %36, align 8
  br label %37

37:                                               ; preds = %34, %28
  %38 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %39 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %42 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 8
  br label %59

47:                                               ; preds = %1
  %48 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %49 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %48, i32 0, i32 2
  %50 = load %struct.hci_conn*, %struct.hci_conn** %49, align 8
  store %struct.hci_conn* %50, %struct.hci_conn** %5, align 8
  %51 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %52 = icmp ne %struct.hci_conn* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %55 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %54, i32 0, i32 2
  store %struct.hci_conn* null, %struct.hci_conn** %55, align 8
  %56 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %57 = call i32 @hci_conn_put(%struct.hci_conn* %56)
  br label %58

58:                                               ; preds = %53, %47
  br label %59

59:                                               ; preds = %58, %37
  %60 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %61 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %60, i32 0, i32 0
  %62 = call i32 @tasklet_disable(i32* %61)
  %63 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %64 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %65 = call i32 @hci_conn_hash_del(%struct.hci_dev* %63, %struct.hci_conn* %64)
  %66 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %67 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %66, i32 0, i32 1
  %68 = load i32 (%struct.hci_dev*, i32)*, i32 (%struct.hci_dev*, i32)** %67, align 8
  %69 = icmp ne i32 (%struct.hci_dev*, i32)* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %59
  %71 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %72 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %71, i32 0, i32 1
  %73 = load i32 (%struct.hci_dev*, i32)*, i32 (%struct.hci_dev*, i32)** %72, align 8
  %74 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %75 = load i32, i32* @HCI_NOTIFY_CONN_DEL, align 4
  %76 = call i32 %73(%struct.hci_dev* %74, i32 %75)
  br label %77

77:                                               ; preds = %70, %59
  %78 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %79 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %78, i32 0, i32 0
  %80 = call i32 @tasklet_enable(i32* %79)
  %81 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %82 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %81, i32 0, i32 1
  %83 = call i32 @skb_queue_purge(i32* %82)
  %84 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %85 = call i32 @hci_conn_put_device(%struct.hci_conn* %84)
  %86 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %87 = call i32 @hci_dev_put(%struct.hci_dev* %86)
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*, i32, %struct.hci_conn*, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @hci_conn_put(%struct.hci_conn*) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @hci_conn_hash_del(%struct.hci_dev*, %struct.hci_conn*) #1

declare dso_local i32 @tasklet_enable(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @hci_conn_put_device(%struct.hci_conn*) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

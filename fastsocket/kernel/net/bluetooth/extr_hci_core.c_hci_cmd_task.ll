; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_cmd_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_cmd_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i64, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s cmd %d\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"%s command tx timeout\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @hci_cmd_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cmd_task(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.hci_dev*
  store %struct.hci_dev* %6, %struct.hci_dev** %3, align 8
  %7 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %11 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %10, i32 0, i32 2
  %12 = call i64 @atomic_read(i32* %11)
  %13 = call i32 @BT_DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %9, i64 %12)
  %14 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 2
  %16 = call i64 @atomic_read(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %1
  %19 = load i64, i64* @jiffies, align 8
  %20 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %21 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HZ, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i64 @time_after(i64 %19, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %18
  %28 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %29 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @BT_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %33 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %32, i32 0, i32 2
  %34 = call i32 @atomic_set(i32* %33, i32 1)
  br label %35

35:                                               ; preds = %27, %18, %1
  %36 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %37 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %36, i32 0, i32 2
  %38 = call i64 @atomic_read(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %73

40:                                               ; preds = %35
  %41 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %42 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %41, i32 0, i32 0
  %43 = call %struct.sk_buff* @skb_dequeue(i32* %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %4, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %45, label %73

45:                                               ; preds = %40
  %46 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %47 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @kfree_skb(i32 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = load i32, i32* @GFP_ATOMIC, align 4
  %52 = call i32 @skb_clone(%struct.sk_buff* %50, i32 %51)
  %53 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %54 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = icmp ne i32 %52, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %45
  %57 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %58 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %57, i32 0, i32 2
  %59 = call i32 @atomic_dec(i32* %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = call i32 @hci_send_frame(%struct.sk_buff* %60)
  %62 = load i64, i64* @jiffies, align 8
  %63 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %64 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  br label %72

65:                                               ; preds = %45
  %66 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %67 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %66, i32 0, i32 0
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = call i32 @skb_queue_head(i32* %67, %struct.sk_buff* %68)
  %70 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %71 = call i32 @hci_sched_cmd(%struct.hci_dev* %70)
  br label %72

72:                                               ; preds = %65, %56
  br label %73

73:                                               ; preds = %72, %40, %35
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i32 @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @hci_send_frame(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @hci_sched_cmd(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

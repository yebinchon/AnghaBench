; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_sched_sco.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_sched_sco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64, i32 }
%struct.hci_conn = type { i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SCO_LINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"skb %p len %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*)* @hci_sched_sco to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_sched_sco(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %6 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %7 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to %struct.sk_buff*
  %11 = call i32 (i8*, %struct.sk_buff*, ...) @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %10)
  br label %12

12:                                               ; preds = %56, %1
  %13 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %19 = load i32, i32* @SCO_LINK, align 4
  %20 = call %struct.hci_conn* @hci_low_sent(%struct.hci_dev* %18, i32 %19, i32* %5)
  store %struct.hci_conn* %20, %struct.hci_conn** %3, align 8
  %21 = icmp ne %struct.hci_conn* %20, null
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi i1 [ false, %12 ], [ %21, %17 ]
  br i1 %23, label %24, label %57

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %55, %24
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %5, align 4
  %28 = icmp ne i32 %26, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %31 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %30, i32 0, i32 1
  %32 = call %struct.sk_buff* @skb_dequeue(i32* %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %4, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i1 [ false, %25 ], [ %33, %29 ]
  br i1 %35, label %36, label %56

36:                                               ; preds = %34
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, %struct.sk_buff*, ...) @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %37, i32 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call i32 @hci_send_frame(%struct.sk_buff* %42)
  %44 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %45 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %49 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %55

52:                                               ; preds = %36
  %53 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %54 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %53, i32 0, i32 0
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %36
  br label %25

56:                                               ; preds = %34
  br label %12

57:                                               ; preds = %22
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.sk_buff*, ...) #1

declare dso_local %struct.hci_conn* @hci_low_sent(%struct.hci_dev*, i32, i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @hci_send_frame(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

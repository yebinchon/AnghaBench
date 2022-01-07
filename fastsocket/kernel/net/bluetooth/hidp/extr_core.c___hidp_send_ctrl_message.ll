; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c___hidp_send_ctrl_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c___hidp_send_ctrl_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_session = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"session %p data %p size %d\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Can't allocate memory for new frame\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidp_session*, i8, i8*, i32)* @__hidp_send_ctrl_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hidp_send_ctrl_message(%struct.hidp_session* %0, i8 zeroext %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hidp_session*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.hidp_session* %0, %struct.hidp_session** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.hidp_session*, %struct.hidp_session** %6, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @BT_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.hidp_session* %11, i8* %12, i32 %13)
  %15 = load i32, i32* %9, align 4
  %16 = add nsw i32 %15, 1
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.sk_buff* @alloc_skb(i32 %16, i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %10, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = call i32 @BT_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %45

24:                                               ; preds = %4
  %25 = load i8, i8* %7, align 1
  %26 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %27 = call i8* @skb_put(%struct.sk_buff* %26, i32 1)
  store i8 %25, i8* %27, align 1
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i8* @skb_put(%struct.sk_buff* %34, i32 %35)
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @memcpy(i8* %36, i8* %37, i32 %38)
  br label %40

40:                                               ; preds = %33, %30, %24
  %41 = load %struct.hidp_session*, %struct.hidp_session** %6, align 8
  %42 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %41, i32 0, i32 0
  %43 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %44 = call i32 @skb_queue_tail(i32* %42, %struct.sk_buff* %43)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %40, %20
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @BT_DBG(i8*, %struct.hidp_session*, i8*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

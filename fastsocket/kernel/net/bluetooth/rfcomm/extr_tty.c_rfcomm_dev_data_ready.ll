; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_dev_data_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_dev_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dlc = type { %struct.rfcomm_dev* }
%struct.rfcomm_dev = type { i32, %struct.tty_struct* }
%struct.tty_struct = type { i32 }
%struct.sk_buff = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"dlc %p tty %p len %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfcomm_dlc*, %struct.sk_buff*)* @rfcomm_dev_data_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcomm_dev_data_ready(%struct.rfcomm_dlc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.rfcomm_dlc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rfcomm_dev*, align 8
  %6 = alloca %struct.tty_struct*, align 8
  store %struct.rfcomm_dlc* %0, %struct.rfcomm_dlc** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %8 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %7, i32 0, i32 0
  %9 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %8, align 8
  store %struct.rfcomm_dev* %9, %struct.rfcomm_dev** %5, align 8
  %10 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %11 = icmp ne %struct.rfcomm_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i32 @kfree_skb(%struct.sk_buff* %13)
  br label %49

15:                                               ; preds = %2
  %16 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %17 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %16, i32 0, i32 1
  %18 = load %struct.tty_struct*, %struct.tty_struct** %17, align 8
  store %struct.tty_struct* %18, %struct.tty_struct** %6, align 8
  %19 = icmp ne %struct.tty_struct* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %22 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %21, i32 0, i32 0
  %23 = call i32 @skb_queue_empty(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %27 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %26, i32 0, i32 0
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call i32 @skb_queue_tail(i32* %27, %struct.sk_buff* %28)
  br label %49

30:                                               ; preds = %20
  %31 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %32 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @BT_DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dlc* %31, %struct.tty_struct* %32, i32 %35)
  %37 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @tty_insert_flip_string(%struct.tty_struct* %37, i32 %40, i32 %43)
  %45 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %46 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call i32 @kfree_skb(%struct.sk_buff* %47)
  br label %49

49:                                               ; preds = %30, %25, %12
  ret void
}

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dlc*, %struct.tty_struct*, i32) #1

declare dso_local i32 @tty_insert_flip_string(%struct.tty_struct*, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

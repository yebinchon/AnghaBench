; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_copy_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_copy_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dev = type { i32, i32, %struct.tty_struct* }
%struct.tty_struct = type { i32 }
%struct.sk_buff = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"dev %p tty %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfcomm_dev*)* @rfcomm_tty_copy_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcomm_tty_copy_pending(%struct.rfcomm_dev* %0) #0 {
  %2 = alloca %struct.rfcomm_dev*, align 8
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.rfcomm_dev* %0, %struct.rfcomm_dev** %2, align 8
  %6 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %2, align 8
  %7 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %6, i32 0, i32 2
  %8 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  store %struct.tty_struct* %8, %struct.tty_struct** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %10 = icmp ne %struct.tty_struct* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %50

12:                                               ; preds = %1
  %13 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %2, align 8
  %14 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dev* %13, %struct.tty_struct* %14)
  %16 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %2, align 8
  %17 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @rfcomm_dlc_lock(i32 %18)
  br label %20

20:                                               ; preds = %25, %12
  %21 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %2, align 8
  %22 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %21, i32 0, i32 1
  %23 = call %struct.sk_buff* @skb_dequeue(i32* %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %4, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @tty_insert_flip_string(%struct.tty_struct* %26, i32 %29, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %5, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i32 @kfree_skb(%struct.sk_buff* %38)
  br label %20

40:                                               ; preds = %20
  %41 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %2, align 8
  %42 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @rfcomm_dlc_unlock(i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %49 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %48)
  br label %50

50:                                               ; preds = %11, %47, %40
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dev*, %struct.tty_struct*) #1

declare dso_local i32 @rfcomm_dlc_lock(i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i64 @tty_insert_flip_string(%struct.tty_struct*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rfcomm_dlc_unlock(i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

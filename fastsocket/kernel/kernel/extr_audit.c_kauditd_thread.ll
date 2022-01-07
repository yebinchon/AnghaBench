; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit.c_kauditd_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit.c_kauditd_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@audit_default = common dso_local global i64 0, align 8
@audit_pid = common dso_local global i64 0, align 8
@audit_skb_hold_queue = common dso_local global i32 0, align 4
@audit_skb_queue = common dso_local global i32 0, align 4
@audit_backlog_wait = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@kauditd_wait = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @kauditd_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kauditd_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i32 (...) @set_freezable()
  br label %5

5:                                                ; preds = %66, %1
  %6 = call i32 (...) @kthread_should_stop()
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  br i1 %8, label %9, label %67

9:                                                ; preds = %5
  %10 = load i64, i64* @audit_default, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %9
  %13 = load i64, i64* @audit_pid, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %12
  %16 = call %struct.sk_buff* @skb_dequeue(i32* @audit_skb_hold_queue)
  store %struct.sk_buff* %16, %struct.sk_buff** %3, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = call i64 @unlikely(%struct.sk_buff* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %29, %20
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i64, i64* @audit_pid, align 8
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i1 [ false, %21 ], [ %26, %24 ]
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = call i32 @kauditd_send_skb(%struct.sk_buff* %30)
  %32 = call %struct.sk_buff* @skb_dequeue(i32* @audit_skb_hold_queue)
  store %struct.sk_buff* %32, %struct.sk_buff** %3, align 8
  br label %21

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %15
  br label %35

35:                                               ; preds = %34, %12, %9
  %36 = call %struct.sk_buff* @skb_dequeue(i32* @audit_skb_queue)
  store %struct.sk_buff* %36, %struct.sk_buff** %3, align 8
  %37 = call i32 @wake_up(i32* @audit_backlog_wait)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load i64, i64* @audit_pid, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = call i32 @kauditd_send_skb(%struct.sk_buff* %44)
  br label %49

46:                                               ; preds = %40
  %47 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %48 = call i32 @audit_printk_skb(%struct.sk_buff* %47)
  br label %49

49:                                               ; preds = %46, %43
  br label %66

50:                                               ; preds = %35
  %51 = load i32, i32* @wait, align 4
  %52 = load i32, i32* @current, align 4
  %53 = call i32 @DECLARE_WAITQUEUE(i32 %51, i32 %52)
  %54 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %55 = call i32 @set_current_state(i32 %54)
  %56 = call i32 @add_wait_queue(i32* @kauditd_wait, i32* @wait)
  %57 = call i32 @skb_queue_len(i32* @audit_skb_queue)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %50
  %60 = call i32 (...) @try_to_freeze()
  %61 = call i32 (...) @schedule()
  br label %62

62:                                               ; preds = %59, %50
  %63 = load i32, i32* @TASK_RUNNING, align 4
  %64 = call i32 @__set_current_state(i32 %63)
  %65 = call i32 @remove_wait_queue(i32* @kauditd_wait, i32* @wait)
  br label %66

66:                                               ; preds = %62, %49
  br label %5

67:                                               ; preds = %5
  ret i32 0
}

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i64 @unlikely(%struct.sk_buff*) #1

declare dso_local i32 @kauditd_send_skb(%struct.sk_buff*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @audit_printk_skb(%struct.sk_buff*) #1

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

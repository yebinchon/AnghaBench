; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit.c_audit_log_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit.c_audit_log_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.nlmsghdr = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"rate limit exceeded\00", align 1
@audit_pid = common dso_local global i64 0, align 8
@audit_skb_queue = common dso_local global i32 0, align 4
@kauditd_wait = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_log_end(%struct.audit_buffer* %0) #0 {
  %2 = alloca %struct.audit_buffer*, align 8
  %3 = alloca %struct.nlmsghdr*, align 8
  store %struct.audit_buffer* %0, %struct.audit_buffer** %2, align 8
  %4 = load %struct.audit_buffer*, %struct.audit_buffer** %2, align 8
  %5 = icmp ne %struct.audit_buffer* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %45

7:                                                ; preds = %1
  %8 = call i32 (...) @audit_rate_check()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = call i32 @audit_log_lost(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %42

12:                                               ; preds = %7
  %13 = load %struct.audit_buffer*, %struct.audit_buffer** %2, align 8
  %14 = getelementptr inbounds %struct.audit_buffer, %struct.audit_buffer* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = call %struct.nlmsghdr* @nlmsg_hdr(%struct.TYPE_4__* %15)
  store %struct.nlmsghdr* %16, %struct.nlmsghdr** %3, align 8
  %17 = load %struct.audit_buffer*, %struct.audit_buffer** %2, align 8
  %18 = getelementptr inbounds %struct.audit_buffer, %struct.audit_buffer* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @NLMSG_SPACE(i32 0)
  %23 = sub nsw i64 %21, %22
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  %25 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* @audit_pid, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %12
  %29 = load %struct.audit_buffer*, %struct.audit_buffer** %2, align 8
  %30 = getelementptr inbounds %struct.audit_buffer, %struct.audit_buffer* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = call i32 @skb_queue_tail(i32* @audit_skb_queue, %struct.TYPE_4__* %31)
  %33 = call i32 @wake_up_interruptible(i32* @kauditd_wait)
  br label %39

34:                                               ; preds = %12
  %35 = load %struct.audit_buffer*, %struct.audit_buffer** %2, align 8
  %36 = getelementptr inbounds %struct.audit_buffer, %struct.audit_buffer* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = call i32 @audit_printk_skb(%struct.TYPE_4__* %37)
  br label %39

39:                                               ; preds = %34, %28
  %40 = load %struct.audit_buffer*, %struct.audit_buffer** %2, align 8
  %41 = getelementptr inbounds %struct.audit_buffer, %struct.audit_buffer* %40, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %41, align 8
  br label %42

42:                                               ; preds = %39, %10
  %43 = load %struct.audit_buffer*, %struct.audit_buffer** %2, align 8
  %44 = call i32 @audit_buffer_free(%struct.audit_buffer* %43)
  br label %45

45:                                               ; preds = %42, %6
  ret void
}

declare dso_local i32 @audit_rate_check(...) #1

declare dso_local i32 @audit_log_lost(i8*) #1

declare dso_local %struct.nlmsghdr* @nlmsg_hdr(%struct.TYPE_4__*) #1

declare dso_local i64 @NLMSG_SPACE(i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @audit_printk_skb(%struct.TYPE_4__*) #1

declare dso_local i32 @audit_buffer_free(%struct.audit_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

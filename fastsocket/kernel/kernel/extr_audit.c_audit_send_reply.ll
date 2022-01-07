; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit.c_audit_send_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit.c_audit_send_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.task_struct = type { i32 }
%struct.audit_reply = type { i32, %struct.sk_buff* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@audit_send_reply_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"audit_send_reply\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_send_reply(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca %struct.task_struct*, align 8
  %17 = alloca %struct.audit_reply*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.audit_reply* @kmalloc(i32 16, i32 %18)
  store %struct.audit_reply* %19, %struct.audit_reply** %17, align 8
  %20 = load %struct.audit_reply*, %struct.audit_reply** %17, align 8
  %21 = icmp ne %struct.audit_reply* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %7
  br label %55

23:                                               ; preds = %7
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i8*, i8** %13, align 8
  %30 = load i32, i32* %14, align 4
  %31 = call %struct.sk_buff* @audit_make_reply(i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i8* %29, i32 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %15, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  br label %52

35:                                               ; preds = %23
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.audit_reply*, %struct.audit_reply** %17, align 8
  %38 = getelementptr inbounds %struct.audit_reply, %struct.audit_reply* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %40 = load %struct.audit_reply*, %struct.audit_reply** %17, align 8
  %41 = getelementptr inbounds %struct.audit_reply, %struct.audit_reply* %40, i32 0, i32 1
  store %struct.sk_buff* %39, %struct.sk_buff** %41, align 8
  %42 = load i32, i32* @audit_send_reply_thread, align 4
  %43 = load %struct.audit_reply*, %struct.audit_reply** %17, align 8
  %44 = call %struct.task_struct* @kthread_run(i32 %42, %struct.audit_reply* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store %struct.task_struct* %44, %struct.task_struct** %16, align 8
  %45 = load %struct.task_struct*, %struct.task_struct** %16, align 8
  %46 = call i32 @IS_ERR(%struct.task_struct* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %35
  br label %55

49:                                               ; preds = %35
  %50 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %51 = call i32 @kfree_skb(%struct.sk_buff* %50)
  br label %52

52:                                               ; preds = %49, %34
  %53 = load %struct.audit_reply*, %struct.audit_reply** %17, align 8
  %54 = call i32 @kfree(%struct.audit_reply* %53)
  br label %55

55:                                               ; preds = %52, %48, %22
  ret void
}

declare dso_local %struct.audit_reply* @kmalloc(i32, i32) #1

declare dso_local %struct.sk_buff* @audit_make_reply(i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local %struct.task_struct* @kthread_run(i32, %struct.audit_reply*, i8*) #1

declare dso_local i32 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree(%struct.audit_reply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

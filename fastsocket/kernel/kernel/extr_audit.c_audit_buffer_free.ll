; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit.c_audit_buffer_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit.c_audit_buffer_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32, i64 }

@audit_freelist_lock = common dso_local global i32 0, align 4
@audit_freelist_count = common dso_local global i64 0, align 8
@AUDIT_MAXFREE = common dso_local global i64 0, align 8
@audit_freelist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_buffer*)* @audit_buffer_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_buffer_free(%struct.audit_buffer* %0) #0 {
  %2 = alloca %struct.audit_buffer*, align 8
  %3 = alloca i64, align 8
  store %struct.audit_buffer* %0, %struct.audit_buffer** %2, align 8
  %4 = load %struct.audit_buffer*, %struct.audit_buffer** %2, align 8
  %5 = icmp ne %struct.audit_buffer* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %35

7:                                                ; preds = %1
  %8 = load %struct.audit_buffer*, %struct.audit_buffer** %2, align 8
  %9 = getelementptr inbounds %struct.audit_buffer, %struct.audit_buffer* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.audit_buffer*, %struct.audit_buffer** %2, align 8
  %14 = getelementptr inbounds %struct.audit_buffer, %struct.audit_buffer* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @kfree_skb(i64 %15)
  br label %17

17:                                               ; preds = %12, %7
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @spin_lock_irqsave(i32* @audit_freelist_lock, i64 %18)
  %20 = load i64, i64* @audit_freelist_count, align 8
  %21 = load i64, i64* @AUDIT_MAXFREE, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.audit_buffer*, %struct.audit_buffer** %2, align 8
  %25 = call i32 @kfree(%struct.audit_buffer* %24)
  br label %32

26:                                               ; preds = %17
  %27 = load i64, i64* @audit_freelist_count, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* @audit_freelist_count, align 8
  %29 = load %struct.audit_buffer*, %struct.audit_buffer** %2, align 8
  %30 = getelementptr inbounds %struct.audit_buffer, %struct.audit_buffer* %29, i32 0, i32 0
  %31 = call i32 @list_add(i32* %30, i32* @audit_freelist)
  br label %32

32:                                               ; preds = %26, %23
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* @audit_freelist_lock, i64 %33)
  br label %35

35:                                               ; preds = %32, %6
  ret void
}

declare dso_local i32 @kfree_skb(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @kfree(%struct.audit_buffer*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

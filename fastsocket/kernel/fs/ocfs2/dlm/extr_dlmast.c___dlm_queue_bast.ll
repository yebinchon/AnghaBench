; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmast.c___dlm_queue_bast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmast.c___dlm_queue_bast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32 }
%struct.dlm_lock = type { i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"lock has a bast getting flushed right now\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ctxt*, %struct.dlm_lock*)* @__dlm_queue_bast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dlm_queue_bast(%struct.dlm_ctxt* %0, %struct.dlm_lock* %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca %struct.dlm_lock*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store %struct.dlm_lock* %1, %struct.dlm_lock** %4, align 8
  %5 = call i32 (...) @mlog_entry_void()
  %6 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %7 = icmp ne %struct.dlm_ctxt* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %12 = icmp ne %struct.dlm_lock* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %17 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %16, i32 0, i32 1
  %18 = call i32 @assert_spin_locked(i32* %17)
  %19 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %20 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %19, i32 0, i32 2
  %21 = call i32 @list_empty(i32* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %27 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %2
  %33 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %34 = call i32 @dlm_lock_get(%struct.dlm_lock* %33)
  %35 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %36 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %35, i32 0, i32 1
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %39 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %38, i32 0, i32 2
  %40 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %41 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %40, i32 0, i32 0
  %42 = call i32 @list_add_tail(i32* %39, i32* %41)
  %43 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %44 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  %45 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %46 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %45, i32 0, i32 1
  %47 = call i32 @spin_unlock(i32* %46)
  ret void
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i32 @dlm_lock_get(%struct.dlm_lock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

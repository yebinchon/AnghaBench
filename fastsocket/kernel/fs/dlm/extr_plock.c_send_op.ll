; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_plock.c_send_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_plock.c_send_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plock_op = type { i32, i32 }

@ops_lock = common dso_local global i32 0, align 4
@send_list = common dso_local global i32 0, align 4
@send_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.plock_op*)* @send_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_op(%struct.plock_op* %0) #0 {
  %2 = alloca %struct.plock_op*, align 8
  store %struct.plock_op* %0, %struct.plock_op** %2, align 8
  %3 = load %struct.plock_op*, %struct.plock_op** %2, align 8
  %4 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %3, i32 0, i32 1
  %5 = call i32 @set_version(i32* %4)
  %6 = load %struct.plock_op*, %struct.plock_op** %2, align 8
  %7 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %6, i32 0, i32 0
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = call i32 @spin_lock(i32* @ops_lock)
  %10 = load %struct.plock_op*, %struct.plock_op** %2, align 8
  %11 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %10, i32 0, i32 0
  %12 = call i32 @list_add_tail(i32* %11, i32* @send_list)
  %13 = call i32 @spin_unlock(i32* @ops_lock)
  %14 = call i32 @wake_up(i32* @send_wq)
  ret void
}

declare dso_local i32 @set_version(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

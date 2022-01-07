; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_dlm_user_purge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_dlm_user_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dlm_ls = type { i32 }
%struct.dlm_user_proc = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_user_purge(%struct.dlm_ls* %0, %struct.dlm_user_proc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dlm_ls*, align 8
  %6 = alloca %struct.dlm_user_proc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %5, align 8
  store %struct.dlm_user_proc* %1, %struct.dlm_user_proc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 (...) @dlm_our_nodeid()
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @send_purge(%struct.dlm_ls* %14, i32 %15, i32 %16)
  store i32 %17, i32* %9, align 4
  br label %38

18:                                               ; preds = %4
  %19 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %20 = call i32 @dlm_lock_recovery(%struct.dlm_ls* %19)
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %28 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %6, align 8
  %29 = call i32 @purge_proc_locks(%struct.dlm_ls* %27, %struct.dlm_user_proc* %28)
  br label %35

30:                                               ; preds = %18
  %31 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @do_purge(%struct.dlm_ls* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %26
  %36 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %37 = call i32 @dlm_unlock_recovery(%struct.dlm_ls* %36)
  br label %38

38:                                               ; preds = %35, %13
  %39 = load i32, i32* %9, align 4
  ret i32 %39
}

declare dso_local i32 @dlm_our_nodeid(...) #1

declare dso_local i32 @send_purge(%struct.dlm_ls*, i32, i32) #1

declare dso_local i32 @dlm_lock_recovery(%struct.dlm_ls*) #1

declare dso_local i32 @purge_proc_locks(%struct.dlm_ls*, %struct.dlm_user_proc*) #1

declare dso_local i32 @do_purge(%struct.dlm_ls*, i32, i32) #1

declare dso_local i32 @dlm_unlock_recovery(%struct.dlm_ls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

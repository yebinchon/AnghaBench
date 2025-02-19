; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_callback.c_nfs_callback_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_callback.c_nfs_callback_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_callback_data = type { i64, i32*, i32*, i32* }

@nfs_callback_info = common dso_local global %struct.nfs_callback_data* null, align 8
@nfs_callback_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_callback_down(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs_callback_data*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** @nfs_callback_info, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %4, i64 %6
  store %struct.nfs_callback_data* %7, %struct.nfs_callback_data** %3, align 8
  %8 = call i32 @mutex_lock(i32* @nfs_callback_mutex)
  %9 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** %3, align 8
  %10 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* %10, align 8
  %13 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** %3, align 8
  %14 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %1
  %18 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** %3, align 8
  %19 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** %3, align 8
  %24 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @kthread_stop(i32* %25)
  %27 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** %3, align 8
  %28 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @svc_exit_thread(i32* %29)
  %31 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** %3, align 8
  %32 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %31, i32 0, i32 3
  store i32* null, i32** %32, align 8
  %33 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** %3, align 8
  %34 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** %3, align 8
  %36 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %22, %17, %1
  %38 = call i32 @mutex_unlock(i32* @nfs_callback_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @svc_exit_thread(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

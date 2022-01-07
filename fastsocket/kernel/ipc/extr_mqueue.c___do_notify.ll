; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_mqueue.c___do_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_mqueue.c___do_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqueue_inode_info = type { i32, i32*, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.siginfo = type { i32, i32, i32, i32, i32, i32 }

@SI_MESGQ = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@NOTIFY_WOKENUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mqueue_inode_info*)* @__do_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__do_notify(%struct.mqueue_inode_info* %0) #0 {
  %2 = alloca %struct.mqueue_inode_info*, align 8
  %3 = alloca %struct.siginfo, align 4
  store %struct.mqueue_inode_info* %0, %struct.mqueue_inode_info** %2, align 8
  %4 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %2, align 8
  %5 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %71

8:                                                ; preds = %1
  %9 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %2, align 8
  %10 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %71

14:                                               ; preds = %8
  %15 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %2, align 8
  %16 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %64 [
    i32 130, label %19
    i32 129, label %20
    i32 128, label %51
  ]

19:                                               ; preds = %14
  br label %64

20:                                               ; preds = %14
  %21 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %2, align 8
  %22 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %3, i32 0, i32 5
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %3, i32 0, i32 4
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* @SI_MESGQ, align 4
  %28 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %3, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %2, align 8
  %30 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %3, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @current, align 4
  %35 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %2, align 8
  %36 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @ns_of_pid(i32* %37)
  %39 = call i32 @task_tgid_nr_ns(i32 %34, i32 %38)
  %40 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %3, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = call i32 (...) @current_uid()
  %42 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %3, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %2, align 8
  %44 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %2, align 8
  %48 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @kill_pid_info(i32 %46, %struct.siginfo* %3, i32* %49)
  br label %64

51:                                               ; preds = %14
  %52 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %2, align 8
  %53 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @NOTIFY_WOKENUP, align 4
  %56 = call i32 @set_cookie(i32 %54, i32 %55)
  %57 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %2, align 8
  %58 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %2, align 8
  %61 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @netlink_sendskb(i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %14, %51, %20, %19
  %65 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %2, align 8
  %66 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @put_pid(i32* %67)
  %69 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %2, align 8
  %70 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %69, i32 0, i32 1
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %64, %8, %1
  %72 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %2, align 8
  %73 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %72, i32 0, i32 0
  %74 = call i32 @wake_up(i32* %73)
  ret void
}

declare dso_local i32 @task_tgid_nr_ns(i32, i32) #1

declare dso_local i32 @ns_of_pid(i32*) #1

declare dso_local i32 @current_uid(...) #1

declare dso_local i32 @kill_pid_info(i32, %struct.siginfo*, i32*) #1

declare dso_local i32 @set_cookie(i32, i32) #1

declare dso_local i32 @netlink_sendskb(i32, i32) #1

declare dso_local i32 @put_pid(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_mqueue.c_remove_notification.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_mqueue.c_remove_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqueue_inode_info = type { i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SIGEV_THREAD = common dso_local global i64 0, align 8
@NOTIFY_REMOVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mqueue_inode_info*)* @remove_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_notification(%struct.mqueue_inode_info* %0) #0 {
  %2 = alloca %struct.mqueue_inode_info*, align 8
  store %struct.mqueue_inode_info* %0, %struct.mqueue_inode_info** %2, align 8
  %3 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %2, align 8
  %4 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %2, align 8
  %9 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SIGEV_THREAD, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %7
  %15 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %2, align 8
  %16 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @NOTIFY_REMOVED, align 4
  %19 = call i32 @set_cookie(i32 %17, i32 %18)
  %20 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %2, align 8
  %21 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %2, align 8
  %24 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @netlink_sendskb(i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %14, %7, %1
  %28 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %2, align 8
  %29 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @put_pid(i32* %30)
  %32 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %2, align 8
  %33 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  ret void
}

declare dso_local i32 @set_cookie(i32, i32) #1

declare dso_local i32 @netlink_sendskb(i32, i32) #1

declare dso_local i32 @put_pid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_find_and_lock_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_find_and_lock_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32 }
%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs_page* (%struct.page*, i32)* @nfs_find_and_lock_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs_page* @nfs_find_and_lock_request(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs_page*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.nfs_page*, align 8
  %8 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = getelementptr inbounds %struct.page, %struct.page* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  br label %17

17:                                               ; preds = %48, %2
  %18 = load %struct.page*, %struct.page** %4, align 8
  %19 = call %struct.nfs_page* @nfs_page_find_request_locked(%struct.page* %18)
  store %struct.nfs_page* %19, %struct.nfs_page** %7, align 8
  %20 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %21 = icmp eq %struct.nfs_page* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %52

23:                                               ; preds = %17
  %24 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %25 = call i64 @nfs_lock_request(%struct.nfs_page* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %52

28:                                               ; preds = %23
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %36 = call i32 @nfs_wait_on_request(%struct.nfs_page* %35)
  store i32 %36, i32* %8, align 4
  br label %40

37:                                               ; preds = %28
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %42 = call i32 @nfs_release_request(%struct.nfs_page* %41)
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  %47 = call %struct.nfs_page* @ERR_PTR(i32 %46)
  store %struct.nfs_page* %47, %struct.nfs_page** %3, align 8
  br label %57

48:                                               ; preds = %40
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = call i32 @spin_lock(i32* %50)
  br label %17

52:                                               ; preds = %27, %22
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock(i32* %54)
  %56 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  store %struct.nfs_page* %56, %struct.nfs_page** %3, align 8
  br label %57

57:                                               ; preds = %52, %45
  %58 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  ret %struct.nfs_page* %58
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs_page* @nfs_page_find_request_locked(%struct.page*) #1

declare dso_local i64 @nfs_lock_request(%struct.nfs_page*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfs_wait_on_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_release_request(%struct.nfs_page*) #1

declare dso_local %struct.nfs_page* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

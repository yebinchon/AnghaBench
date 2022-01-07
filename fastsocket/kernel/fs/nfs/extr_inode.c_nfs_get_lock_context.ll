; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_get_lock_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_get_lock_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_lock_context = type { %struct.nfs_open_context*, i32 }
%struct.nfs_open_context = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs_lock_context* @nfs_get_lock_context(%struct.nfs_open_context* %0) #0 {
  %2 = alloca %struct.nfs_lock_context*, align 8
  %3 = alloca %struct.nfs_open_context*, align 8
  %4 = alloca %struct.nfs_lock_context*, align 8
  %5 = alloca %struct.nfs_lock_context*, align 8
  %6 = alloca %struct.inode*, align 8
  store %struct.nfs_open_context* %0, %struct.nfs_open_context** %3, align 8
  store %struct.nfs_lock_context* null, %struct.nfs_lock_context** %5, align 8
  %7 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %8 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %16 = call %struct.nfs_lock_context* @__nfs_find_lock_context(%struct.nfs_open_context* %15)
  store %struct.nfs_lock_context* %16, %struct.nfs_lock_context** %4, align 8
  %17 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %4, align 8
  %18 = icmp eq %struct.nfs_lock_context* %17, null
  br i1 %18, label %19, label %53

19:                                               ; preds = %1
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.nfs_lock_context* @kmalloc(i32 16, i32 %23)
  store %struct.nfs_lock_context* %24, %struct.nfs_lock_context** %5, align 8
  %25 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %5, align 8
  %26 = icmp eq %struct.nfs_lock_context* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.nfs_lock_context* @ERR_PTR(i32 %29)
  store %struct.nfs_lock_context* %30, %struct.nfs_lock_context** %2, align 8
  br label %60

31:                                               ; preds = %19
  %32 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %5, align 8
  %33 = call i32 @nfs_init_lock_context(%struct.nfs_lock_context* %32)
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %38 = call %struct.nfs_lock_context* @__nfs_find_lock_context(%struct.nfs_open_context* %37)
  store %struct.nfs_lock_context* %38, %struct.nfs_lock_context** %4, align 8
  %39 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %4, align 8
  %40 = icmp eq %struct.nfs_lock_context* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %31
  %42 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %5, align 8
  %43 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %42, i32 0, i32 1
  %44 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %45 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 @list_add_tail(i32* %43, i32* %46)
  %48 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %49 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %5, align 8
  %50 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %49, i32 0, i32 0
  store %struct.nfs_open_context* %48, %struct.nfs_open_context** %50, align 8
  %51 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %5, align 8
  store %struct.nfs_lock_context* %51, %struct.nfs_lock_context** %4, align 8
  store %struct.nfs_lock_context* null, %struct.nfs_lock_context** %5, align 8
  br label %52

52:                                               ; preds = %41, %31
  br label %53

53:                                               ; preds = %52, %1
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %5, align 8
  %58 = call i32 @kfree(%struct.nfs_lock_context* %57)
  %59 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %4, align 8
  store %struct.nfs_lock_context* %59, %struct.nfs_lock_context** %2, align 8
  br label %60

60:                                               ; preds = %53, %27
  %61 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %2, align 8
  ret %struct.nfs_lock_context* %61
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs_lock_context* @__nfs_find_lock_context(%struct.nfs_open_context*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.nfs_lock_context* @kmalloc(i32, i32) #1

declare dso_local %struct.nfs_lock_context* @ERR_PTR(i32) #1

declare dso_local i32 @nfs_init_lock_context(%struct.nfs_lock_context*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.nfs_lock_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

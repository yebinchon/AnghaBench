; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dcache.c___ocfs2_drop_dl_inodes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dcache.c___ocfs2_drop_dl_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.ocfs2_dentry_lock* }
%struct.ocfs2_dentry_lock = type { i32, %struct.ocfs2_dentry_lock* }

@dentry_list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_super*, i32)* @__ocfs2_drop_dl_inodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ocfs2_drop_dl_inodes(%struct.ocfs2_super* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_dentry_lock*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @spin_lock(i32* @dentry_list_lock)
  br label %7

7:                                                ; preds = %23, %2
  %8 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %9 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %8, i32 0, i32 0
  %10 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %9, align 8
  %11 = icmp ne %struct.ocfs2_dentry_lock* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %4, align 4
  %18 = icmp ne i32 %16, 0
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i1 [ true, %12 ], [ %18, %15 ]
  br label %21

21:                                               ; preds = %19, %7
  %22 = phi i1 [ false, %7 ], [ %20, %19 ]
  br i1 %22, label %23, label %40

23:                                               ; preds = %21
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %25 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %24, i32 0, i32 0
  %26 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %25, align 8
  store %struct.ocfs2_dentry_lock* %26, %struct.ocfs2_dentry_lock** %5, align 8
  %27 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %5, align 8
  %28 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %27, i32 0, i32 1
  %29 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %28, align 8
  %30 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %31 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %30, i32 0, i32 0
  store %struct.ocfs2_dentry_lock* %29, %struct.ocfs2_dentry_lock** %31, align 8
  %32 = call i32 @spin_unlock(i32* @dentry_list_lock)
  %33 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %5, align 8
  %34 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @iput(i32 %35)
  %37 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %5, align 8
  %38 = call i32 @kfree(%struct.ocfs2_dentry_lock* %37)
  %39 = call i32 @spin_lock(i32* @dentry_list_lock)
  br label %7

40:                                               ; preds = %21
  %41 = call i32 @spin_unlock(i32* @dentry_list_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iput(i32) #1

declare dso_local i32 @kfree(%struct.ocfs2_dentry_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_write.c_afs_put_writeback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_write.c_afs_put_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_writeback = type { i64, %struct.afs_vnode* }
%struct.afs_vnode = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"{%d}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @afs_put_writeback(%struct.afs_writeback* %0) #0 {
  %2 = alloca %struct.afs_writeback*, align 8
  %3 = alloca %struct.afs_vnode*, align 8
  store %struct.afs_writeback* %0, %struct.afs_writeback** %2, align 8
  %4 = load %struct.afs_writeback*, %struct.afs_writeback** %2, align 8
  %5 = getelementptr inbounds %struct.afs_writeback, %struct.afs_writeback* %4, i32 0, i32 1
  %6 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  store %struct.afs_vnode* %6, %struct.afs_vnode** %3, align 8
  %7 = load %struct.afs_writeback*, %struct.afs_writeback** %2, align 8
  %8 = getelementptr inbounds %struct.afs_writeback, %struct.afs_writeback* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @_enter(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %12 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.afs_writeback*, %struct.afs_writeback** %2, align 8
  %15 = getelementptr inbounds %struct.afs_writeback, %struct.afs_writeback* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.afs_writeback*, %struct.afs_writeback** %2, align 8
  %21 = call i32 @afs_unlink_writeback(%struct.afs_writeback* %20)
  br label %23

22:                                               ; preds = %1
  store %struct.afs_writeback* null, %struct.afs_writeback** %2, align 8
  br label %23

23:                                               ; preds = %22, %19
  %24 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %25 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load %struct.afs_writeback*, %struct.afs_writeback** %2, align 8
  %28 = icmp ne %struct.afs_writeback* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.afs_writeback*, %struct.afs_writeback** %2, align 8
  %31 = call i32 @afs_free_writeback(%struct.afs_writeback* %30)
  br label %32

32:                                               ; preds = %29, %23
  ret void
}

declare dso_local i32 @_enter(i8*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @afs_unlink_writeback(%struct.afs_writeback*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @afs_free_writeback(%struct.afs_writeback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

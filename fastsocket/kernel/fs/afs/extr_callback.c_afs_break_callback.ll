; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_callback.c_afs_break_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_callback.c_afs_break_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_server = type { i32, i32 }
%struct.afs_vnode = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AFS_VNODE_CB_BROKEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"break callback\00", align 1
@afs_callback_update_worker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.afs_server*, %struct.afs_vnode*)* @afs_break_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @afs_break_callback(%struct.afs_server* %0, %struct.afs_vnode* %1) #0 {
  %3 = alloca %struct.afs_server*, align 8
  %4 = alloca %struct.afs_vnode*, align 8
  store %struct.afs_server* %0, %struct.afs_server** %3, align 8
  store %struct.afs_vnode* %1, %struct.afs_vnode** %4, align 8
  %5 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @AFS_VNODE_CB_BROKEN, align 4
  %7 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %8 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %7, i32 0, i32 6
  %9 = call i32 @set_bit(i32 %6, i32* %8)
  %10 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %11 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %58

14:                                               ; preds = %2
  %15 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %16 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %15, i32 0, i32 1
  %17 = call i32 @spin_lock(i32* %16)
  %18 = call i32 @_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.afs_server*, %struct.afs_server** %3, align 8
  %20 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %23 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %14
  %27 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %28 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %27, i32 0, i32 5
  %29 = load %struct.afs_server*, %struct.afs_server** %3, align 8
  %30 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %29, i32 0, i32 1
  %31 = call i32 @rb_erase(i32* %28, i32* %30)
  %32 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %33 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  br label %34

34:                                               ; preds = %26, %14
  %35 = load %struct.afs_server*, %struct.afs_server** %3, align 8
  %36 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load i32, i32* @afs_callback_update_worker, align 4
  %39 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %40 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %39, i32 0, i32 4
  %41 = call i32 @queue_work(i32 %38, i32* %40)
  %42 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %43 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %42, i32 0, i32 3
  %44 = call i64 @list_empty(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %34
  %47 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %48 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %47, i32 0, i32 2
  %49 = call i64 @list_empty(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %53 = call i32 @afs_lock_may_be_available(%struct.afs_vnode* %52)
  br label %54

54:                                               ; preds = %51, %46, %34
  %55 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %56 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %55, i32 0, i32 1
  %57 = call i32 @spin_unlock(i32* %56)
  br label %58

58:                                               ; preds = %54, %2
  ret void
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @_debug(i8*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @afs_lock_may_be_available(%struct.afs_vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

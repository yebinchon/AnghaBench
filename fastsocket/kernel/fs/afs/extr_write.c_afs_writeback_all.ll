; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_write.c_afs_writeback_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_write.c_afs_writeback_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.address_space* }
%struct.address_space = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.address_space*, %struct.writeback_control*)* }
%struct.writeback_control = type { i32, i32, i32 }

@LONG_MAX = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@I_DIRTY_PAGES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_writeback_all(%struct.afs_vnode* %0) #0 {
  %2 = alloca %struct.afs_vnode*, align 8
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.writeback_control, align 4
  %5 = alloca i32, align 4
  store %struct.afs_vnode* %0, %struct.afs_vnode** %2, align 8
  %6 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %7 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.address_space*, %struct.address_space** %8, align 8
  store %struct.address_space* %9, %struct.address_space** %3, align 8
  %10 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %4, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %4, i32 0, i32 1
  %12 = load i32, i32* @LONG_MAX, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %4, i32 0, i32 2
  %14 = load i32, i32* @WB_SYNC_ALL, align 4
  store i32 %14, i32* %13, align 4
  %15 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.address_space*, %struct.address_space** %3, align 8
  %17 = getelementptr inbounds %struct.address_space, %struct.address_space* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.address_space*, %struct.writeback_control*)** %19, align 8
  %21 = load %struct.address_space*, %struct.address_space** %3, align 8
  %22 = call i32 %20(%struct.address_space* %21, %struct.writeback_control* %4)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.address_space*, %struct.address_space** %3, align 8
  %24 = getelementptr inbounds %struct.address_space, %struct.address_space* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @I_DIRTY_PAGES, align 4
  %27 = call i32 @__mark_inode_dirty(i32 %25, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @__mark_inode_dirty(i32, i32) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

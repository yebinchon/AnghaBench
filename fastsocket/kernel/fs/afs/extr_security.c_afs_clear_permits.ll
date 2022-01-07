; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_security.c_afs_clear_permits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_security.c_afs_clear_permits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { i32, %struct.afs_permits*, %struct.TYPE_2__ }
%struct.afs_permits = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"{%x:%u}\00", align 1
@afs_zap_permits = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @afs_clear_permits(%struct.afs_vnode* %0) #0 {
  %2 = alloca %struct.afs_vnode*, align 8
  %3 = alloca %struct.afs_permits*, align 8
  store %struct.afs_vnode* %0, %struct.afs_vnode** %2, align 8
  %4 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %5 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %9 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @_enter(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %11)
  %13 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %14 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %17 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %16, i32 0, i32 1
  %18 = load %struct.afs_permits*, %struct.afs_permits** %17, align 8
  store %struct.afs_permits* %18, %struct.afs_permits** %3, align 8
  %19 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %20 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %19, i32 0, i32 1
  %21 = load %struct.afs_permits*, %struct.afs_permits** %20, align 8
  %22 = call i32 @rcu_assign_pointer(%struct.afs_permits* %21, i32* null)
  %23 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %24 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load %struct.afs_permits*, %struct.afs_permits** %3, align 8
  %27 = icmp ne %struct.afs_permits* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.afs_permits*, %struct.afs_permits** %3, align 8
  %30 = getelementptr inbounds %struct.afs_permits, %struct.afs_permits* %29, i32 0, i32 0
  %31 = load i32, i32* @afs_zap_permits, align 4
  %32 = call i32 @call_rcu(i32* %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %1
  %34 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.afs_permits*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

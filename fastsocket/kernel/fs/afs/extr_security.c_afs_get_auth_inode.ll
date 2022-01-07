; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_security.c_afs_get_auth_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_security.c_afs_get_auth_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.key = type { i32 }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" = {%x}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.afs_vnode* (%struct.afs_vnode*, %struct.key*)* @afs_get_auth_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.afs_vnode* @afs_get_auth_inode(%struct.afs_vnode* %0, %struct.key* %1) #0 {
  %3 = alloca %struct.afs_vnode*, align 8
  %4 = alloca %struct.afs_vnode*, align 8
  %5 = alloca %struct.key*, align 8
  %6 = alloca %struct.afs_vnode*, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.afs_vnode* %0, %struct.afs_vnode** %4, align 8
  store %struct.key* %1, %struct.key** %5, align 8
  %8 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %10 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @S_ISDIR(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %17 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %16, i32 0, i32 2
  %18 = call %struct.inode* @igrab(%struct.TYPE_6__* %17)
  store %struct.inode* %18, %struct.inode** %7, align 8
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = icmp ne %struct.inode* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  br label %40

23:                                               ; preds = %2
  %24 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %25 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.key*, %struct.key** %5, align 8
  %29 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %30 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call %struct.inode* @afs_iget(i32 %27, %struct.key* %28, i32* %31, i32* null, i32* null)
  store %struct.inode* %32, %struct.inode** %7, align 8
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = call i64 @IS_ERR(%struct.inode* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = call %struct.afs_vnode* @ERR_CAST(%struct.inode* %37)
  store %struct.afs_vnode* %38, %struct.afs_vnode** %3, align 8
  br label %49

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39, %15
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = call %struct.afs_vnode* @AFS_FS_I(%struct.inode* %41)
  store %struct.afs_vnode* %42, %struct.afs_vnode** %6, align 8
  %43 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %44 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @_leave(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  store %struct.afs_vnode* %48, %struct.afs_vnode** %3, align 8
  br label %49

49:                                               ; preds = %40, %36
  %50 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  ret %struct.afs_vnode* %50
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.inode* @igrab(%struct.TYPE_6__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.inode* @afs_iget(i32, %struct.key*, i32*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.afs_vnode* @ERR_CAST(%struct.inode*) #1

declare dso_local %struct.afs_vnode* @AFS_FS_I(%struct.inode*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

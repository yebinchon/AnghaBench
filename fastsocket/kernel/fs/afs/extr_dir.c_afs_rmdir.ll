; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_dir.c_afs_rmdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_dir.c_afs_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.inode*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.afs_vnode = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.key = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"{%x:%u},{%s}\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@AFSNAMEMAX = common dso_local global i64 0, align 8
@AFS_VNODE_DELETED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @afs_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.afs_vnode*, align 8
  %7 = alloca %struct.afs_vnode*, align 8
  %8 = alloca %struct.key*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.afs_vnode* @AFS_FS_I(%struct.inode* %10)
  store %struct.afs_vnode* %11, %struct.afs_vnode** %6, align 8
  %12 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %13 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %17 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.dentry*, %struct.dentry** %5, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @_enter(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19, i32 %23)
  %25 = load i32, i32* @ENAMETOOLONG, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  %27 = load %struct.dentry*, %struct.dentry** %5, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AFSNAMEMAX, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %84

34:                                               ; preds = %2
  %35 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %36 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.key* @afs_request_key(i32 %39)
  store %struct.key* %40, %struct.key** %8, align 8
  %41 = load %struct.key*, %struct.key** %8, align 8
  %42 = call i64 @IS_ERR(%struct.key* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load %struct.key*, %struct.key** %8, align 8
  %46 = call i32 @PTR_ERR(%struct.key* %45)
  store i32 %46, i32* %9, align 4
  br label %84

47:                                               ; preds = %34
  %48 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %49 = load %struct.key*, %struct.key** %8, align 8
  %50 = load %struct.dentry*, %struct.dentry** %5, align 8
  %51 = getelementptr inbounds %struct.dentry, %struct.dentry* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @afs_vnode_remove(%struct.afs_vnode* %48, %struct.key* %49, i32 %53, i32 1)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %81

58:                                               ; preds = %47
  %59 = load %struct.dentry*, %struct.dentry** %5, align 8
  %60 = getelementptr inbounds %struct.dentry, %struct.dentry* %59, i32 0, i32 0
  %61 = load %struct.inode*, %struct.inode** %60, align 8
  %62 = icmp ne %struct.inode* %61, null
  br i1 %62, label %63, label %77

63:                                               ; preds = %58
  %64 = load %struct.dentry*, %struct.dentry** %5, align 8
  %65 = getelementptr inbounds %struct.dentry, %struct.dentry* %64, i32 0, i32 0
  %66 = load %struct.inode*, %struct.inode** %65, align 8
  %67 = call %struct.afs_vnode* @AFS_FS_I(%struct.inode* %66)
  store %struct.afs_vnode* %67, %struct.afs_vnode** %7, align 8
  %68 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %69 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %68, i32 0, i32 1
  %70 = call i32 @clear_nlink(i32* %69)
  %71 = load i32, i32* @AFS_VNODE_DELETED, align 4
  %72 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %73 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %72, i32 0, i32 0
  %74 = call i32 @set_bit(i32 %71, i32* %73)
  %75 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %76 = call i32 @afs_discard_callback_on_delete(%struct.afs_vnode* %75)
  br label %77

77:                                               ; preds = %63, %58
  %78 = load %struct.key*, %struct.key** %8, align 8
  %79 = call i32 @key_put(%struct.key* %78)
  %80 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %88

81:                                               ; preds = %57
  %82 = load %struct.key*, %struct.key** %8, align 8
  %83 = call i32 @key_put(%struct.key* %82)
  br label %84

84:                                               ; preds = %81, %44, %33
  %85 = load i32, i32* %9, align 4
  %86 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %84, %77
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.afs_vnode* @AFS_FS_I(%struct.inode*) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local %struct.key* @afs_request_key(i32) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @afs_vnode_remove(%struct.afs_vnode*, %struct.key*, i32, i32) #1

declare dso_local i32 @clear_nlink(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @afs_discard_callback_on_delete(%struct.afs_vnode*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @_leave(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

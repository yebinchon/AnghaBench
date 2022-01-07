; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_dir.c_afs_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_dir.c_afs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_6__, %struct.inode* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.afs_vnode = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.key = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"{%x:%u},{%x:%u},{%x:%u},{%s}\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@AFSNAMEMAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)* @afs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.afs_vnode*, align 8
  %11 = alloca %struct.afs_vnode*, align 8
  %12 = alloca %struct.afs_vnode*, align 8
  %13 = alloca %struct.key*, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  %15 = load %struct.dentry*, %struct.dentry** %7, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 1
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  %18 = call %struct.afs_vnode* @AFS_FS_I(%struct.inode* %17)
  store %struct.afs_vnode* %18, %struct.afs_vnode** %12, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call %struct.afs_vnode* @AFS_FS_I(%struct.inode* %19)
  store %struct.afs_vnode* %20, %struct.afs_vnode** %10, align 8
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = call %struct.afs_vnode* @AFS_FS_I(%struct.inode* %21)
  store %struct.afs_vnode* %22, %struct.afs_vnode** %11, align 8
  %23 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %24 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %28 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.afs_vnode*, %struct.afs_vnode** %12, align 8
  %32 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.afs_vnode*, %struct.afs_vnode** %12, align 8
  %36 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.afs_vnode*, %struct.afs_vnode** %11, align 8
  %40 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.afs_vnode*, %struct.afs_vnode** %11, align 8
  %44 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.dentry*, %struct.dentry** %9, align 8
  %48 = getelementptr inbounds %struct.dentry, %struct.dentry* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @_enter(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %30, i32 %34, i32 %38, i32 %42, i32 %46, i32 %50)
  %52 = load i32, i32* @ENAMETOOLONG, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %14, align 4
  %54 = load %struct.dentry*, %struct.dentry** %9, align 8
  %55 = getelementptr inbounds %struct.dentry, %struct.dentry* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AFSNAMEMAX, align 8
  %59 = icmp sge i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %4
  br label %97

61:                                               ; preds = %4
  %62 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %63 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.key* @afs_request_key(i32 %66)
  store %struct.key* %67, %struct.key** %13, align 8
  %68 = load %struct.key*, %struct.key** %13, align 8
  %69 = call i64 @IS_ERR(%struct.key* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load %struct.key*, %struct.key** %13, align 8
  %73 = call i32 @PTR_ERR(%struct.key* %72)
  store i32 %73, i32* %14, align 4
  br label %97

74:                                               ; preds = %61
  %75 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %76 = load %struct.afs_vnode*, %struct.afs_vnode** %11, align 8
  %77 = load %struct.key*, %struct.key** %13, align 8
  %78 = load %struct.dentry*, %struct.dentry** %7, align 8
  %79 = getelementptr inbounds %struct.dentry, %struct.dentry* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.dentry*, %struct.dentry** %9, align 8
  %83 = getelementptr inbounds %struct.dentry, %struct.dentry* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @afs_vnode_rename(%struct.afs_vnode* %75, %struct.afs_vnode* %76, %struct.key* %77, i32 %81, i32 %85)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %74
  br label %94

90:                                               ; preds = %74
  %91 = load %struct.key*, %struct.key** %13, align 8
  %92 = call i32 @key_put(%struct.key* %91)
  %93 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %103

94:                                               ; preds = %89
  %95 = load %struct.key*, %struct.key** %13, align 8
  %96 = call i32 @key_put(%struct.key* %95)
  br label %97

97:                                               ; preds = %94, %71, %60
  %98 = load %struct.dentry*, %struct.dentry** %9, align 8
  %99 = call i32 @d_drop(%struct.dentry* %98)
  %100 = load i32, i32* %14, align 4
  %101 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %14, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %97, %90
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local %struct.afs_vnode* @AFS_FS_I(%struct.inode*) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.key* @afs_request_key(i32) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @afs_vnode_rename(%struct.afs_vnode*, %struct.afs_vnode*, %struct.key*, i32, i32) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

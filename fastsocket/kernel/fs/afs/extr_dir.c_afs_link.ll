; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_dir.c_afs_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_dir.c_afs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_7__, %struct.inode* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.afs_vnode = type { %struct.TYPE_8__, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.key = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"{%x:%u},{%x:%u},{%s}\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@AFSNAMEMAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @afs_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.afs_vnode*, align 8
  %9 = alloca %struct.afs_vnode*, align 8
  %10 = alloca %struct.key*, align 8
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 1
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  %15 = call %struct.afs_vnode* @AFS_FS_I(%struct.inode* %14)
  store %struct.afs_vnode* %15, %struct.afs_vnode** %9, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = call %struct.afs_vnode* @AFS_FS_I(%struct.inode* %16)
  store %struct.afs_vnode* %17, %struct.afs_vnode** %8, align 8
  %18 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %19 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %23 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %27 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %31 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.dentry*, %struct.dentry** %7, align 8
  %35 = getelementptr inbounds %struct.dentry, %struct.dentry* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @_enter(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25, i32 %29, i32 %33, i32 %37)
  %39 = load i32, i32* @ENAMETOOLONG, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %11, align 4
  %41 = load %struct.dentry*, %struct.dentry** %7, align 8
  %42 = getelementptr inbounds %struct.dentry, %struct.dentry* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AFSNAMEMAX, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %3
  br label %88

48:                                               ; preds = %3
  %49 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %50 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.key* @afs_request_key(i32 %53)
  store %struct.key* %54, %struct.key** %10, align 8
  %55 = load %struct.key*, %struct.key** %10, align 8
  %56 = call i64 @IS_ERR(%struct.key* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load %struct.key*, %struct.key** %10, align 8
  %60 = call i32 @PTR_ERR(%struct.key* %59)
  store i32 %60, i32* %11, align 4
  br label %88

61:                                               ; preds = %48
  %62 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %63 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %64 = load %struct.key*, %struct.key** %10, align 8
  %65 = load %struct.dentry*, %struct.dentry** %7, align 8
  %66 = getelementptr inbounds %struct.dentry, %struct.dentry* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @afs_vnode_link(%struct.afs_vnode* %62, %struct.afs_vnode* %63, %struct.key* %64, i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %85

73:                                               ; preds = %61
  %74 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %75 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = call i32 @atomic_inc(i32* %76)
  %78 = load %struct.dentry*, %struct.dentry** %7, align 8
  %79 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %80 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %79, i32 0, i32 0
  %81 = call i32 @d_instantiate(%struct.dentry* %78, %struct.TYPE_8__* %80)
  %82 = load %struct.key*, %struct.key** %10, align 8
  %83 = call i32 @key_put(%struct.key* %82)
  %84 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %94

85:                                               ; preds = %72
  %86 = load %struct.key*, %struct.key** %10, align 8
  %87 = call i32 @key_put(%struct.key* %86)
  br label %88

88:                                               ; preds = %85, %58, %47
  %89 = load %struct.dentry*, %struct.dentry** %7, align 8
  %90 = call i32 @d_drop(%struct.dentry* %89)
  %91 = load i32, i32* %11, align 4
  %92 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %88, %73
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.afs_vnode* @AFS_FS_I(%struct.inode*) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.key* @afs_request_key(i32) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @afs_vnode_link(%struct.afs_vnode*, %struct.afs_vnode*, %struct.key*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.TYPE_8__*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

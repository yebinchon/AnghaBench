; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_inode.c_afs_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_inode.c_afs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.iattr = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.key* }
%struct.key = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_10__*, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"{%x:%u},{n=%s},%x\00", align 1
@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c" = 0 [unsupported]\00", align 1
@ATTR_FILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.afs_vnode*, align 8
  %7 = alloca %struct.key*, align 8
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.afs_vnode* @AFS_FS_I(i32 %11)
  store %struct.afs_vnode* %12, %struct.afs_vnode** %6, align 8
  %13 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %14 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %18 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.iattr*, %struct.iattr** %5, align 8
  %26 = getelementptr inbounds %struct.iattr, %struct.iattr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @_enter(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %20, i32 %24, i32 %27)
  %29 = load %struct.iattr*, %struct.iattr** %5, align 8
  %30 = getelementptr inbounds %struct.iattr, %struct.iattr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ATTR_SIZE, align 4
  %33 = load i32, i32* @ATTR_MODE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @ATTR_UID, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @ATTR_GID, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @ATTR_MTIME, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %31, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %2
  %44 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %106

45:                                               ; preds = %2
  %46 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %47 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @S_ISREG(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %54 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @filemap_write_and_wait(i32 %56)
  %58 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %59 = call i32 @afs_writeback_all(%struct.afs_vnode* %58)
  br label %60

60:                                               ; preds = %52, %45
  %61 = load %struct.iattr*, %struct.iattr** %5, align 8
  %62 = getelementptr inbounds %struct.iattr, %struct.iattr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ATTR_FILE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load %struct.iattr*, %struct.iattr** %5, align 8
  %69 = getelementptr inbounds %struct.iattr, %struct.iattr* %68, i32 0, i32 1
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load %struct.key*, %struct.key** %71, align 8
  store %struct.key* %72, %struct.key** %7, align 8
  br label %87

73:                                               ; preds = %60
  %74 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %75 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call %struct.key* @afs_request_key(i32 %78)
  store %struct.key* %79, %struct.key** %7, align 8
  %80 = load %struct.key*, %struct.key** %7, align 8
  %81 = call i64 @IS_ERR(%struct.key* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %73
  %84 = load %struct.key*, %struct.key** %7, align 8
  %85 = call i32 @PTR_ERR(%struct.key* %84)
  store i32 %85, i32* %8, align 4
  br label %102

86:                                               ; preds = %73
  br label %87

87:                                               ; preds = %86, %67
  %88 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %89 = load %struct.key*, %struct.key** %7, align 8
  %90 = load %struct.iattr*, %struct.iattr** %5, align 8
  %91 = call i32 @afs_vnode_setattr(%struct.afs_vnode* %88, %struct.key* %89, %struct.iattr* %90)
  store i32 %91, i32* %8, align 4
  %92 = load %struct.iattr*, %struct.iattr** %5, align 8
  %93 = getelementptr inbounds %struct.iattr, %struct.iattr* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @ATTR_FILE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %87
  %99 = load %struct.key*, %struct.key** %7, align 8
  %100 = call i32 @key_put(%struct.key* %99)
  br label %101

101:                                              ; preds = %98, %87
  br label %102

102:                                              ; preds = %101, %83
  %103 = load i32, i32* %8, align 4
  %104 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %102, %43
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.afs_vnode* @AFS_FS_I(i32) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i32 @afs_writeback_all(%struct.afs_vnode*) #1

declare dso_local %struct.key* @afs_request_key(i32) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @afs_vnode_setattr(%struct.afs_vnode*, %struct.key*, %struct.iattr*) #1

declare dso_local i32 @key_put(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

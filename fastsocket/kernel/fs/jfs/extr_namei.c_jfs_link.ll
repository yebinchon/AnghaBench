; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_namei.c_jfs_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_namei.c_jfs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i8*, i8*, i32, i32 }
%struct.dentry = type { %struct.TYPE_3__, %struct.inode* }
%struct.TYPE_3__ = type { i32 }
%struct.component_name = type { i32 }
%struct.btstack = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"jfs_link: %s %s\00", align 1
@JFS_LINK_MAX = common dso_local global i64 0, align 8
@EMLINK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@COMMIT_MUTEX_PARENT = common dso_local global i32 0, align 4
@COMMIT_MUTEX_CHILD = common dso_local global i32 0, align 4
@JFS_CREATE = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"jfs_link: rc:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @jfs_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.component_name, align 4
  %13 = alloca %struct.btstack, align 4
  %14 = alloca [2 x %struct.inode*], align 16
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %15 = load %struct.dentry*, %struct.dentry** %5, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 1
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %10, align 8
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.dentry*, %struct.dentry** %7, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i8*, i32, ...) @jfs_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25)
  %27 = load %struct.inode*, %struct.inode** %10, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @JFS_LINK_MAX, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @EMLINK, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %130

35:                                               ; preds = %3
  %36 = load %struct.inode*, %struct.inode** %10, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %130

43:                                               ; preds = %35
  %44 = load %struct.inode*, %struct.inode** %10, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @txBegin(i32 %46, i32 0)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = call %struct.TYPE_4__* @JFS_IP(%struct.inode* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* @COMMIT_MUTEX_PARENT, align 4
  %52 = call i32 @mutex_lock_nested(i32* %50, i32 %51)
  %53 = load %struct.inode*, %struct.inode** %10, align 8
  %54 = call %struct.TYPE_4__* @JFS_IP(%struct.inode* %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* @COMMIT_MUTEX_CHILD, align 4
  %57 = call i32 @mutex_lock_nested(i32* %55, i32 %56)
  %58 = load %struct.dentry*, %struct.dentry** %7, align 8
  %59 = call i32 @get_UCSname(%struct.component_name* %12, %struct.dentry* %58)
  store i32 %59, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %43
  br label %116

62:                                               ; preds = %43
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = load i32, i32* @JFS_CREATE, align 4
  %65 = call i32 @dtSearch(%struct.inode* %63, %struct.component_name* %12, i32* %11, %struct.btstack* %13, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %114

68:                                               ; preds = %62
  %69 = load %struct.inode*, %struct.inode** %10, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.inode*, %struct.inode** %6, align 8
  %74 = call i32 @dtInsert(i32 %72, %struct.inode* %73, %struct.component_name* %12, i32* %11, %struct.btstack* %13)
  store i32 %74, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %114

77:                                               ; preds = %68
  %78 = load %struct.inode*, %struct.inode** %10, align 8
  %79 = call i32 @inc_nlink(%struct.inode* %78)
  %80 = load i8*, i8** @CURRENT_TIME, align 8
  %81 = load %struct.inode*, %struct.inode** %10, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** @CURRENT_TIME, align 8
  %84 = load %struct.inode*, %struct.inode** %6, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load %struct.inode*, %struct.inode** %6, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 3
  store i8* %83, i8** %87, align 8
  %88 = load %struct.inode*, %struct.inode** %6, align 8
  %89 = call i32 @mark_inode_dirty(%struct.inode* %88)
  %90 = load %struct.inode*, %struct.inode** %10, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 1
  %92 = call i32 @atomic_inc(i32* %91)
  %93 = load %struct.inode*, %struct.inode** %10, align 8
  %94 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %14, i64 0, i64 0
  store %struct.inode* %93, %struct.inode** %94, align 16
  %95 = load %struct.inode*, %struct.inode** %6, align 8
  %96 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %14, i64 0, i64 1
  store %struct.inode* %95, %struct.inode** %96, align 8
  %97 = load i32, i32* %9, align 4
  %98 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %14, i64 0, i64 0
  %99 = call i32 @txCommit(i32 %97, i32 2, %struct.inode** %98, i32 0)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %77
  %103 = load %struct.inode*, %struct.inode** %10, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, -1
  store i64 %106, i64* %104, align 8
  %107 = load %struct.inode*, %struct.inode** %10, align 8
  %108 = call i32 @iput(%struct.inode* %107)
  br label %113

109:                                              ; preds = %77
  %110 = load %struct.dentry*, %struct.dentry** %7, align 8
  %111 = load %struct.inode*, %struct.inode** %10, align 8
  %112 = call i32 @d_instantiate(%struct.dentry* %110, %struct.inode* %111)
  br label %113

113:                                              ; preds = %109, %102
  br label %114

114:                                              ; preds = %113, %76, %67
  %115 = call i32 @free_UCSname(%struct.component_name* %12)
  br label %116

116:                                              ; preds = %114, %61
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @txEnd(i32 %117)
  %119 = load %struct.inode*, %struct.inode** %10, align 8
  %120 = call %struct.TYPE_4__* @JFS_IP(%struct.inode* %119)
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = call i32 @mutex_unlock(i32* %121)
  %123 = load %struct.inode*, %struct.inode** %6, align 8
  %124 = call %struct.TYPE_4__* @JFS_IP(%struct.inode* %123)
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load i32, i32* %8, align 4
  %128 = call i32 (i8*, i32, ...) @jfs_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %116, %40, %32
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @jfs_info(i8*, i32, ...) #1

declare dso_local i32 @txBegin(i32, i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @get_UCSname(%struct.component_name*, %struct.dentry*) #1

declare dso_local i32 @dtSearch(%struct.inode*, %struct.component_name*, i32*, %struct.btstack*, i32) #1

declare dso_local i32 @dtInsert(i32, %struct.inode*, %struct.component_name*, i32*, %struct.btstack*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @txCommit(i32, i32, %struct.inode**, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @free_UCSname(%struct.component_name*) #1

declare dso_local i32 @txEnd(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_namei.c_jfs_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_namei.c_jfs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32*, i32*, i32, i32 }
%struct.dentry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.component_name = type { i32 }
%struct.btstack = type { i32 }
%struct.tblock = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"jfs_mkdir: dip:0x%p name:%s\00", align 1
@JFS_LINK_MAX = common dso_local global i64 0, align 8
@EMLINK = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@COMMIT_MUTEX_PARENT = common dso_local global i32 0, align 4
@COMMIT_MUTEX_CHILD = common dso_local global i32 0, align 4
@JFS_CREATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"jfs_mkdir: dtSearch returned %d\00", align 1
@COMMIT_CREATE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"jfs_mkdir: dtInsert returned -EIO\00", align 1
@jfs_dir_inode_operations = common dso_local global i32 0, align 4
@jfs_dir_operations = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"jfs_mkdir: rc:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @jfs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.component_name, align 4
  %12 = alloca %struct.btstack, align 4
  %13 = alloca [2 x %struct.inode*], align 16
  %14 = alloca %struct.tblock*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store %struct.inode* null, %struct.inode** %9, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.inode* %15, i32 %19)
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @JFS_LINK_MAX, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EMLINK, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %190

29:                                               ; preds = %3
  %30 = load %struct.dentry*, %struct.dentry** %5, align 8
  %31 = call i32 @get_UCSname(%struct.component_name* %11, %struct.dentry* %30)
  store i32 %31, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %190

34:                                               ; preds = %29
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = load i32, i32* @S_IFDIR, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %36, %37
  %39 = call %struct.inode* @ialloc(%struct.inode* %35, i32 %38)
  store %struct.inode* %39, %struct.inode** %9, align 8
  %40 = load %struct.inode*, %struct.inode** %9, align 8
  %41 = call i64 @IS_ERR(%struct.inode* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load %struct.inode*, %struct.inode** %9, align 8
  %45 = call i32 @PTR_ERR(%struct.inode* %44)
  store i32 %45, i32* %7, align 4
  br label %188

46:                                               ; preds = %34
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @txBegin(i32 %49, i32 0)
  store i32 %50, i32* %8, align 4
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %51)
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* @COMMIT_MUTEX_PARENT, align 4
  %55 = call i32 @mutex_lock_nested(i32* %53, i32 %54)
  %56 = load %struct.inode*, %struct.inode** %9, align 8
  %57 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %56)
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* @COMMIT_MUTEX_CHILD, align 4
  %60 = call i32 @mutex_lock_nested(i32* %58, i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.inode*, %struct.inode** %9, align 8
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  %64 = call i32 @jfs_init_acl(i32 %61, %struct.inode* %62, %struct.inode* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %46
  br label %159

68:                                               ; preds = %46
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.inode*, %struct.inode** %9, align 8
  %71 = load %struct.inode*, %struct.inode** %4, align 8
  %72 = call i32 @jfs_init_security(i32 %69, %struct.inode* %70, %struct.inode* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @txAbort(i32 %76, i32 0)
  br label %159

78:                                               ; preds = %68
  %79 = load %struct.inode*, %struct.inode** %4, align 8
  %80 = load i32, i32* @JFS_CREATE, align 4
  %81 = call i32 @dtSearch(%struct.inode* %79, %struct.component_name* %11, i32* %10, %struct.btstack* %12, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i32, i32* %7, align 4
  %85 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @txAbort(i32 %86, i32 0)
  br label %159

88:                                               ; preds = %78
  %89 = load i32, i32* %8, align 4
  %90 = call %struct.tblock* @tid_to_tblock(i32 %89)
  store %struct.tblock* %90, %struct.tblock** %14, align 8
  %91 = load i32, i32* @COMMIT_CREATE, align 4
  %92 = load %struct.tblock*, %struct.tblock** %14, align 8
  %93 = getelementptr inbounds %struct.tblock, %struct.tblock* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load %struct.inode*, %struct.inode** %9, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.tblock*, %struct.tblock** %14, align 8
  %100 = getelementptr inbounds %struct.tblock, %struct.tblock* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.inode*, %struct.inode** %9, align 8
  %102 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %101)
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.tblock*, %struct.tblock** %14, align 8
  %106 = getelementptr inbounds %struct.tblock, %struct.tblock* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 4
  %108 = load %struct.inode*, %struct.inode** %4, align 8
  %109 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %13, i64 0, i64 0
  store %struct.inode* %108, %struct.inode** %109, align 16
  %110 = load %struct.inode*, %struct.inode** %9, align 8
  %111 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %13, i64 0, i64 1
  store %struct.inode* %110, %struct.inode** %111, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.inode*, %struct.inode** %9, align 8
  %114 = load %struct.inode*, %struct.inode** %4, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @dtInitRoot(i32 %112, %struct.inode* %113, i32 %116)
  %118 = load %struct.inode*, %struct.inode** %9, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.inode*, %struct.inode** %4, align 8
  %123 = call i32 @dtInsert(i32 %121, %struct.inode* %122, %struct.component_name* %11, i32* %10, %struct.btstack* %12)
  store i32 %123, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %88
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @EIO, align 4
  %128 = sub nsw i32 0, %127
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @txAbort(i32 %132, i32 1)
  br label %137

134:                                              ; preds = %125
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @txAbort(i32 %135, i32 0)
  br label %137

137:                                              ; preds = %134, %130
  br label %159

138:                                              ; preds = %88
  %139 = load %struct.inode*, %struct.inode** %9, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 0
  store i64 2, i64* %140, align 8
  %141 = load %struct.inode*, %struct.inode** %9, align 8
  %142 = getelementptr inbounds %struct.inode, %struct.inode* %141, i32 0, i32 4
  store i32* @jfs_dir_inode_operations, i32** %142, align 8
  %143 = load %struct.inode*, %struct.inode** %9, align 8
  %144 = getelementptr inbounds %struct.inode, %struct.inode* %143, i32 0, i32 3
  store i32* @jfs_dir_operations, i32** %144, align 8
  %145 = load %struct.inode*, %struct.inode** %9, align 8
  %146 = call i32 @mark_inode_dirty(%struct.inode* %145)
  %147 = load %struct.inode*, %struct.inode** %4, align 8
  %148 = call i32 @inc_nlink(%struct.inode* %147)
  %149 = load i32, i32* @CURRENT_TIME, align 4
  %150 = load %struct.inode*, %struct.inode** %4, align 8
  %151 = getelementptr inbounds %struct.inode, %struct.inode* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 8
  %152 = load %struct.inode*, %struct.inode** %4, align 8
  %153 = getelementptr inbounds %struct.inode, %struct.inode* %152, i32 0, i32 2
  store i32 %149, i32* %153, align 4
  %154 = load %struct.inode*, %struct.inode** %4, align 8
  %155 = call i32 @mark_inode_dirty(%struct.inode* %154)
  %156 = load i32, i32* %8, align 4
  %157 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %13, i64 0, i64 0
  %158 = call i32 @txCommit(i32 %156, i32 2, %struct.inode** %157, i32 0)
  store i32 %158, i32* %7, align 4
  br label %159

159:                                              ; preds = %138, %137, %83, %75, %67
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @txEnd(i32 %160)
  %162 = load %struct.inode*, %struct.inode** %9, align 8
  %163 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %162)
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = call i32 @mutex_unlock(i32* %164)
  %166 = load %struct.inode*, %struct.inode** %4, align 8
  %167 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %166)
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = call i32 @mutex_unlock(i32* %168)
  %170 = load i32, i32* %7, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %159
  %173 = load %struct.inode*, %struct.inode** %9, align 8
  %174 = call i32 @free_ea_wmap(%struct.inode* %173)
  %175 = load %struct.inode*, %struct.inode** %9, align 8
  %176 = getelementptr inbounds %struct.inode, %struct.inode* %175, i32 0, i32 0
  store i64 0, i64* %176, align 8
  %177 = load %struct.inode*, %struct.inode** %9, align 8
  %178 = call i32 @unlock_new_inode(%struct.inode* %177)
  %179 = load %struct.inode*, %struct.inode** %9, align 8
  %180 = call i32 @iput(%struct.inode* %179)
  br label %187

181:                                              ; preds = %159
  %182 = load %struct.dentry*, %struct.dentry** %5, align 8
  %183 = load %struct.inode*, %struct.inode** %9, align 8
  %184 = call i32 @d_instantiate(%struct.dentry* %182, %struct.inode* %183)
  %185 = load %struct.inode*, %struct.inode** %9, align 8
  %186 = call i32 @unlock_new_inode(%struct.inode* %185)
  br label %187

187:                                              ; preds = %181, %172
  br label %188

188:                                              ; preds = %187, %43
  %189 = call i32 @free_UCSname(%struct.component_name* %11)
  br label %190

190:                                              ; preds = %188, %33, %26
  %191 = load i32, i32* %7, align 4
  %192 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* %7, align 4
  ret i32 %193
}

declare dso_local i32 @jfs_info(i8*, ...) #1

declare dso_local i32 @get_UCSname(%struct.component_name*, %struct.dentry*) #1

declare dso_local %struct.inode* @ialloc(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @txBegin(i32, i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @jfs_init_acl(i32, %struct.inode*, %struct.inode*) #1

declare dso_local i32 @jfs_init_security(i32, %struct.inode*, %struct.inode*) #1

declare dso_local i32 @txAbort(i32, i32) #1

declare dso_local i32 @dtSearch(%struct.inode*, %struct.component_name*, i32*, %struct.btstack*, i32) #1

declare dso_local i32 @jfs_err(i8*, ...) #1

declare dso_local %struct.tblock* @tid_to_tblock(i32) #1

declare dso_local i32 @dtInitRoot(i32, %struct.inode*, i32) #1

declare dso_local i32 @dtInsert(i32, %struct.inode*, %struct.component_name*, i32*, %struct.btstack*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @txCommit(i32, i32, %struct.inode**, i32) #1

declare dso_local i32 @txEnd(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @free_ea_wmap(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @free_UCSname(%struct.component_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

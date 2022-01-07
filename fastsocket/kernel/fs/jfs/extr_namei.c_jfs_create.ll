; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_namei.c_jfs_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_namei.c_jfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, %struct.TYPE_7__*, i32*, i32*, i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.dentry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nameidata = type { i32 }
%struct.component_name = type { i32 }
%struct.btstack = type { i32 }
%struct.tblock = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"jfs_create: dip:0x%p name:%s\00", align 1
@COMMIT_MUTEX_PARENT = common dso_local global i32 0, align 4
@COMMIT_MUTEX_CHILD = common dso_local global i32 0, align 4
@JFS_CREATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"jfs_create: dtSearch returned %d\00", align 1
@COMMIT_CREATE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"jfs_create: dtInsert returned -EIO\00", align 1
@jfs_file_inode_operations = common dso_local global i32 0, align 4
@jfs_file_operations = common dso_local global i32 0, align 4
@jfs_aops = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"jfs_create: rc:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, %struct.nameidata*)* @jfs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.nameidata* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nameidata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.component_name, align 4
  %14 = alloca %struct.btstack, align 4
  %15 = alloca [2 x %struct.inode*], align 16
  %16 = alloca %struct.tblock*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nameidata* %3, %struct.nameidata** %8, align 8
  store i32 0, i32* %9, align 4
  store %struct.inode* null, %struct.inode** %11, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.inode* %17, i32 %21)
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = call i32 @get_UCSname(%struct.component_name* %13, %struct.dentry* %23)
  store i32 %24, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %178

27:                                               ; preds = %4
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.inode* @ialloc(%struct.inode* %28, i32 %29)
  store %struct.inode* %30, %struct.inode** %11, align 8
  %31 = load %struct.inode*, %struct.inode** %11, align 8
  %32 = call i64 @IS_ERR(%struct.inode* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.inode*, %struct.inode** %11, align 8
  %36 = call i32 @PTR_ERR(%struct.inode* %35)
  store i32 %36, i32* %9, align 4
  br label %176

37:                                               ; preds = %27
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @txBegin(i32 %40, i32 0)
  store i32 %41, i32* %10, align 4
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* @COMMIT_MUTEX_PARENT, align 4
  %46 = call i32 @mutex_lock_nested(i32* %44, i32 %45)
  %47 = load %struct.inode*, %struct.inode** %11, align 8
  %48 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %47)
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* @COMMIT_MUTEX_CHILD, align 4
  %51 = call i32 @mutex_lock_nested(i32* %49, i32 %50)
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.inode*, %struct.inode** %11, align 8
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = call i32 @jfs_init_acl(i32 %52, %struct.inode* %53, %struct.inode* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %37
  br label %147

59:                                               ; preds = %37
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.inode*, %struct.inode** %11, align 8
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = call i32 @jfs_init_security(i32 %60, %struct.inode* %61, %struct.inode* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @txAbort(i32 %67, i32 0)
  br label %147

69:                                               ; preds = %59
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = load i32, i32* @JFS_CREATE, align 4
  %72 = call i32 @dtSearch(%struct.inode* %70, %struct.component_name* %13, i32* %12, %struct.btstack* %14, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i32, i32* %9, align 4
  %76 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @txAbort(i32 %77, i32 0)
  br label %147

79:                                               ; preds = %69
  %80 = load i32, i32* %10, align 4
  %81 = call %struct.tblock* @tid_to_tblock(i32 %80)
  store %struct.tblock* %81, %struct.tblock** %16, align 8
  %82 = load i32, i32* @COMMIT_CREATE, align 4
  %83 = load %struct.tblock*, %struct.tblock** %16, align 8
  %84 = getelementptr inbounds %struct.tblock, %struct.tblock* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load %struct.inode*, %struct.inode** %11, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.tblock*, %struct.tblock** %16, align 8
  %91 = getelementptr inbounds %struct.tblock, %struct.tblock* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.inode*, %struct.inode** %11, align 8
  %93 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %92)
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.tblock*, %struct.tblock** %16, align 8
  %97 = getelementptr inbounds %struct.tblock, %struct.tblock* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 4
  %99 = load %struct.inode*, %struct.inode** %5, align 8
  %100 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %15, i64 0, i64 0
  store %struct.inode* %99, %struct.inode** %100, align 16
  %101 = load %struct.inode*, %struct.inode** %11, align 8
  %102 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %15, i64 0, i64 1
  store %struct.inode* %101, %struct.inode** %102, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.inode*, %struct.inode** %11, align 8
  %105 = call i32 @xtInitRoot(i32 %103, %struct.inode* %104)
  %106 = load %struct.inode*, %struct.inode** %11, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.inode*, %struct.inode** %5, align 8
  %111 = call i32 @dtInsert(i32 %109, %struct.inode* %110, %struct.component_name* %13, i32* %12, %struct.btstack* %14)
  store i32 %111, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %79
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @EIO, align 4
  %116 = sub nsw i32 0, %115
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @txAbort(i32 %120, i32 1)
  br label %125

122:                                              ; preds = %113
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @txAbort(i32 %123, i32 0)
  br label %125

125:                                              ; preds = %122, %118
  br label %147

126:                                              ; preds = %79
  %127 = load %struct.inode*, %struct.inode** %11, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 5
  store i32* @jfs_file_inode_operations, i32** %128, align 8
  %129 = load %struct.inode*, %struct.inode** %11, align 8
  %130 = getelementptr inbounds %struct.inode, %struct.inode* %129, i32 0, i32 4
  store i32* @jfs_file_operations, i32** %130, align 8
  %131 = load %struct.inode*, %struct.inode** %11, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 3
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  store i32* @jfs_aops, i32** %134, align 8
  %135 = load %struct.inode*, %struct.inode** %11, align 8
  %136 = call i32 @mark_inode_dirty(%struct.inode* %135)
  %137 = load i32, i32* @CURRENT_TIME, align 4
  %138 = load %struct.inode*, %struct.inode** %5, align 8
  %139 = getelementptr inbounds %struct.inode, %struct.inode* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 8
  %140 = load %struct.inode*, %struct.inode** %5, align 8
  %141 = getelementptr inbounds %struct.inode, %struct.inode* %140, i32 0, i32 2
  store i32 %137, i32* %141, align 4
  %142 = load %struct.inode*, %struct.inode** %5, align 8
  %143 = call i32 @mark_inode_dirty(%struct.inode* %142)
  %144 = load i32, i32* %10, align 4
  %145 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %15, i64 0, i64 0
  %146 = call i32 @txCommit(i32 %144, i32 2, %struct.inode** %145, i32 0)
  store i32 %146, i32* %9, align 4
  br label %147

147:                                              ; preds = %126, %125, %74, %66, %58
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @txEnd(i32 %148)
  %150 = load %struct.inode*, %struct.inode** %11, align 8
  %151 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %150)
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = call i32 @mutex_unlock(i32* %152)
  %154 = load %struct.inode*, %struct.inode** %5, align 8
  %155 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %154)
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = call i32 @mutex_unlock(i32* %156)
  %158 = load i32, i32* %9, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %147
  %161 = load %struct.inode*, %struct.inode** %11, align 8
  %162 = call i32 @free_ea_wmap(%struct.inode* %161)
  %163 = load %struct.inode*, %struct.inode** %11, align 8
  %164 = getelementptr inbounds %struct.inode, %struct.inode* %163, i32 0, i32 0
  store i64 0, i64* %164, align 8
  %165 = load %struct.inode*, %struct.inode** %11, align 8
  %166 = call i32 @unlock_new_inode(%struct.inode* %165)
  %167 = load %struct.inode*, %struct.inode** %11, align 8
  %168 = call i32 @iput(%struct.inode* %167)
  br label %175

169:                                              ; preds = %147
  %170 = load %struct.dentry*, %struct.dentry** %6, align 8
  %171 = load %struct.inode*, %struct.inode** %11, align 8
  %172 = call i32 @d_instantiate(%struct.dentry* %170, %struct.inode* %171)
  %173 = load %struct.inode*, %struct.inode** %11, align 8
  %174 = call i32 @unlock_new_inode(%struct.inode* %173)
  br label %175

175:                                              ; preds = %169, %160
  br label %176

176:                                              ; preds = %175, %34
  %177 = call i32 @free_UCSname(%struct.component_name* %13)
  br label %178

178:                                              ; preds = %176, %26
  %179 = load i32, i32* %9, align 4
  %180 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %179)
  %181 = load i32, i32* %9, align 4
  ret i32 %181
}

declare dso_local i32 @jfs_info(i8*, ...) #1

declare dso_local i32 @get_UCSname(%struct.component_name*, %struct.dentry*) #1

declare dso_local %struct.inode* @ialloc(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @txBegin(i32, i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @jfs_init_acl(i32, %struct.inode*, %struct.inode*) #1

declare dso_local i32 @jfs_init_security(i32, %struct.inode*, %struct.inode*) #1

declare dso_local i32 @txAbort(i32, i32) #1

declare dso_local i32 @dtSearch(%struct.inode*, %struct.component_name*, i32*, %struct.btstack*, i32) #1

declare dso_local i32 @jfs_err(i8*, ...) #1

declare dso_local %struct.tblock* @tid_to_tblock(i32) #1

declare dso_local i32 @xtInitRoot(i32, %struct.inode*) #1

declare dso_local i32 @dtInsert(i32, %struct.inode*, %struct.component_name*, i32*, %struct.btstack*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

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

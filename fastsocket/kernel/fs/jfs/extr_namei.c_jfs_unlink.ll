; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_namei.c_jfs_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_namei.c_jfs_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32, i32, i32 }
%struct.dentry = type { %struct.TYPE_4__, %struct.inode* }
%struct.TYPE_4__ = type { i32 }
%struct.component_name = type { i32 }
%struct.tblock = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"jfs_unlink: dip:0x%p name:%s\00", align 1
@RDWRLOCK_NORMAL = common dso_local global i32 0, align 4
@COMMIT_MUTEX_PARENT = common dso_local global i32 0, align 4
@COMMIT_MUTEX_CHILD = common dso_local global i32 0, align 4
@JFS_REMOVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"jfs_unlink: dtDelete returned %d\00", align 1
@EIO = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@COMMIT_Nolink = common dso_local global i32 0, align 4
@COMMIT_DELETE = common dso_local global i32 0, align 4
@COMMIT_SYNC = common dso_local global i32 0, align 4
@COMMIT_Stale = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"jfs_unlink: rc:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @jfs_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.component_name, align 4
  %10 = alloca [2 x %struct.inode*], align 16
  %11 = alloca %struct.tblock*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 1
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %7, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = load %struct.dentry*, %struct.dentry** %4, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.inode* %17, i32 %21)
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = call i32 @vfs_dq_init(%struct.inode* %23)
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  %26 = call i32 @get_UCSname(%struct.component_name* %9, %struct.dentry* %25)
  store i32 %26, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %233

29:                                               ; preds = %2
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  %31 = load i32, i32* @RDWRLOCK_NORMAL, align 4
  %32 = call i32 @IWRITE_LOCK(%struct.inode* %30, i32 %31)
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @txBegin(i32 %35, i32 0)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %37)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* @COMMIT_MUTEX_PARENT, align 4
  %41 = call i32 @mutex_lock_nested(i32* %39, i32 %40)
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* @COMMIT_MUTEX_CHILD, align 4
  %46 = call i32 @mutex_lock_nested(i32* %44, i32 %45)
  %47 = load %struct.inode*, %struct.inode** %3, align 8
  %48 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %10, i64 0, i64 0
  store %struct.inode* %47, %struct.inode** %48, align 16
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %10, i64 0, i64 1
  store %struct.inode* %49, %struct.inode** %50, align 8
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.inode*, %struct.inode** %3, align 8
  %56 = load i32, i32* @JFS_REMOVE, align 4
  %57 = call i32 @dtDelete(i32 %54, %struct.inode* %55, %struct.component_name* %9, i32* %8, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %82

59:                                               ; preds = %29
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @jfs_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @txAbort(i32 %67, i32 1)
  br label %69

69:                                               ; preds = %66, %59
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @txEnd(i32 %70)
  %72 = load %struct.inode*, %struct.inode** %7, align 8
  %73 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %72)
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load %struct.inode*, %struct.inode** %3, align 8
  %77 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %76)
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load %struct.inode*, %struct.inode** %7, align 8
  %81 = call i32 @IWRITE_UNLOCK(%struct.inode* %80)
  br label %231

82:                                               ; preds = %29
  %83 = load %struct.inode*, %struct.inode** %7, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @ASSERT(i64 %85)
  %87 = load i32, i32* @CURRENT_TIME, align 4
  %88 = load %struct.inode*, %struct.inode** %3, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load %struct.inode*, %struct.inode** %3, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 4
  store i32 %87, i32* %91, align 4
  %92 = load %struct.inode*, %struct.inode** %7, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 4
  store i32 %87, i32* %93, align 4
  %94 = load %struct.inode*, %struct.inode** %3, align 8
  %95 = call i32 @mark_inode_dirty(%struct.inode* %94)
  %96 = load %struct.inode*, %struct.inode** %7, align 8
  %97 = call i32 @inode_dec_link_count(%struct.inode* %96)
  %98 = load %struct.inode*, %struct.inode** %7, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %142

102:                                              ; preds = %82
  %103 = load i32, i32* @COMMIT_Nolink, align 4
  %104 = load %struct.inode*, %struct.inode** %7, align 8
  %105 = call i64 @test_cflag(i32 %103, %struct.inode* %104)
  %106 = icmp ne i64 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.inode*, %struct.inode** %7, align 8
  %112 = call i32 @commitZeroLink(i32 %110, %struct.inode* %111)
  store i32 %112, i32* %12, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %102
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @txAbort(i32 %115, i32 1)
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @txEnd(i32 %117)
  %119 = load %struct.inode*, %struct.inode** %7, align 8
  %120 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %119)
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = call i32 @mutex_unlock(i32* %121)
  %123 = load %struct.inode*, %struct.inode** %3, align 8
  %124 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %123)
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load %struct.inode*, %struct.inode** %7, align 8
  %128 = call i32 @IWRITE_UNLOCK(%struct.inode* %127)
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %5, align 4
  br label %231

130:                                              ; preds = %102
  %131 = load i32, i32* %6, align 4
  %132 = call %struct.tblock* @tid_to_tblock(i32 %131)
  store %struct.tblock* %132, %struct.tblock** %11, align 8
  %133 = load i32, i32* @COMMIT_DELETE, align 4
  %134 = load %struct.tblock*, %struct.tblock** %11, align 8
  %135 = getelementptr inbounds %struct.tblock, %struct.tblock* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 8
  %138 = load %struct.inode*, %struct.inode** %7, align 8
  %139 = load %struct.tblock*, %struct.tblock** %11, align 8
  %140 = getelementptr inbounds %struct.tblock, %struct.tblock* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  store %struct.inode* %138, %struct.inode** %141, align 8
  br label %142

142:                                              ; preds = %130, %82
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = load i32, i32* @COMMIT_SYNC, align 4
  store i32 %146, i32* %13, align 4
  br label %148

147:                                              ; preds = %142
  store i32 0, i32* %13, align 4
  br label %148

148:                                              ; preds = %147, %145
  %149 = load i32, i32* %6, align 4
  %150 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %10, i64 0, i64 0
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @txCommit(i32 %149, i32 2, %struct.inode** %150, i32 %151)
  store i32 %152, i32* %5, align 4
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @txEnd(i32 %153)
  %155 = load %struct.inode*, %struct.inode** %7, align 8
  %156 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %155)
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = call i32 @mutex_unlock(i32* %157)
  %159 = load %struct.inode*, %struct.inode** %3, align 8
  %160 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %159)
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = call i32 @mutex_unlock(i32* %161)
  br label %163

163:                                              ; preds = %195, %148
  %164 = load i32, i32* %12, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32, i32* %5, align 4
  %168 = icmp eq i32 %167, 0
  br label %169

169:                                              ; preds = %166, %163
  %170 = phi i1 [ false, %163 ], [ %168, %166 ]
  br i1 %170, label %171, label %202

171:                                              ; preds = %169
  %172 = load %struct.inode*, %struct.inode** %3, align 8
  %173 = getelementptr inbounds %struct.inode, %struct.inode* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @txBegin(i32 %174, i32 0)
  store i32 %175, i32* %6, align 4
  %176 = load %struct.inode*, %struct.inode** %7, align 8
  %177 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %176)
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = call i32 @mutex_lock(i32* %178)
  %180 = load i32, i32* %6, align 4
  %181 = load %struct.inode*, %struct.inode** %7, align 8
  %182 = load i32, i32* %12, align 4
  %183 = call i32 @xtTruncate_pmap(i32 %180, %struct.inode* %181, i32 %182)
  store i32 %183, i32* %12, align 4
  %184 = load i32, i32* %12, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %171
  %187 = load i32, i32* %6, align 4
  %188 = call i32 @txAbort(i32 %187, i32 1)
  %189 = load i32, i32* %12, align 4
  store i32 %189, i32* %5, align 4
  br label %195

190:                                              ; preds = %171
  %191 = load i32, i32* %6, align 4
  %192 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %10, i64 0, i64 0
  %193 = load i32, i32* @COMMIT_SYNC, align 4
  %194 = call i32 @txCommit(i32 %191, i32 2, %struct.inode** %192, i32 %193)
  store i32 %194, i32* %5, align 4
  br label %195

195:                                              ; preds = %190, %186
  %196 = load i32, i32* %6, align 4
  %197 = call i32 @txEnd(i32 %196)
  %198 = load %struct.inode*, %struct.inode** %7, align 8
  %199 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %198)
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = call i32 @mutex_unlock(i32* %200)
  br label %163

202:                                              ; preds = %169
  %203 = load %struct.inode*, %struct.inode** %7, align 8
  %204 = getelementptr inbounds %struct.inode, %struct.inode* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %202
  %208 = load i32, i32* @COMMIT_Nolink, align 4
  %209 = load %struct.inode*, %struct.inode** %7, align 8
  %210 = call i32 @set_cflag(i32 %208, %struct.inode* %209)
  br label %211

211:                                              ; preds = %207, %202
  %212 = load %struct.inode*, %struct.inode** %7, align 8
  %213 = call i32 @IWRITE_UNLOCK(%struct.inode* %212)
  %214 = load i32, i32* @COMMIT_Stale, align 4
  %215 = load %struct.inode*, %struct.inode** %3, align 8
  %216 = call i64 @test_cflag(i32 %214, %struct.inode* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %230

218:                                              ; preds = %211
  %219 = load %struct.inode*, %struct.inode** %3, align 8
  %220 = getelementptr inbounds %struct.inode, %struct.inode* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = icmp sgt i32 %221, 1
  br i1 %222, label %223, label %226

223:                                              ; preds = %218
  %224 = load %struct.inode*, %struct.inode** %3, align 8
  %225 = call i32 @jfs_truncate_nolock(%struct.inode* %224, i32 0)
  br label %226

226:                                              ; preds = %223, %218
  %227 = load i32, i32* @COMMIT_Stale, align 4
  %228 = load %struct.inode*, %struct.inode** %3, align 8
  %229 = call i32 @clear_cflag(i32 %227, %struct.inode* %228)
  br label %230

230:                                              ; preds = %226, %211
  br label %231

231:                                              ; preds = %230, %114, %69
  %232 = call i32 @free_UCSname(%struct.component_name* %9)
  br label %233

233:                                              ; preds = %231, %28
  %234 = load i32, i32* %5, align 4
  %235 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %234)
  %236 = load i32, i32* %5, align 4
  ret i32 %236
}

declare dso_local i32 @jfs_info(i8*, ...) #1

declare dso_local i32 @vfs_dq_init(%struct.inode*) #1

declare dso_local i32 @get_UCSname(%struct.component_name*, %struct.dentry*) #1

declare dso_local i32 @IWRITE_LOCK(%struct.inode*, i32) #1

declare dso_local i32 @txBegin(i32, i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @dtDelete(i32, %struct.inode*, %struct.component_name*, i32*, i32) #1

declare dso_local i32 @jfs_err(i8*, i32) #1

declare dso_local i32 @txAbort(i32, i32) #1

declare dso_local i32 @txEnd(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @IWRITE_UNLOCK(%struct.inode*) #1

declare dso_local i32 @ASSERT(i64) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @test_cflag(i32, %struct.inode*) #1

declare dso_local i32 @commitZeroLink(i32, %struct.inode*) #1

declare dso_local %struct.tblock* @tid_to_tblock(i32) #1

declare dso_local i32 @txCommit(i32, i32, %struct.inode**, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @xtTruncate_pmap(i32, %struct.inode*, i32) #1

declare dso_local i32 @set_cflag(i32, %struct.inode*) #1

declare dso_local i32 @jfs_truncate_nolock(%struct.inode*, i32) #1

declare dso_local i32 @clear_cflag(i32, %struct.inode*) #1

declare dso_local i32 @free_UCSname(%struct.component_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

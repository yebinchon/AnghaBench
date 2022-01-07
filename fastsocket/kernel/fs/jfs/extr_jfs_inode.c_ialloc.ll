; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_inode.c_ialloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_inode.c_ialloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i32, i64, i32, i64, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, i64, i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.jfs_inode_info = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"ialloc: new_inode returned NULL!\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"ialloc: diAlloc returned %d!\00", align 1
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@JFS_FL_INHERIT = common dso_local global i32 0, align 4
@IDIRECTORY = common dso_local global i32 0, align 4
@JFS_DIRSYNC_FL = common dso_local global i32 0, align 4
@INLINEEA = common dso_local global i32 0, align 4
@ISPARSE = common dso_local global i32 0, align 4
@JFS_IMMUTABLE_FL = common dso_local global i32 0, align 4
@JFS_APPEND_FL = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"ialloc returns inode = 0x%p\0A\00", align 1
@S_NOQUOTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ialloc(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.jfs_inode_info*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 10
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %6, align 8
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = call %struct.inode* @new_inode(%struct.super_block* %13)
  store %struct.inode* %14, %struct.inode** %7, align 8
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = icmp ne %struct.inode* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = call i32 (i8*, ...) @jfs_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %9, align 4
  br label %222

21:                                               ; preds = %2
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %22)
  store %struct.jfs_inode_info* %23, %struct.jfs_inode_info** %8, align 8
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @S_ISDIR(i32 %25)
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = call i32 @diAlloc(%struct.inode* %24, i64 %26, %struct.inode* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %21
  %32 = load i32, i32* %9, align 4
  %33 = call i32 (i8*, ...) @jfs_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = call i32 @make_bad_inode(%struct.inode* %39)
  br label %41

41:                                               ; preds = %38, %31
  br label %219

42:                                               ; preds = %21
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = call i64 @insert_inode_locked(%struct.inode* %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %9, align 4
  br label %214

49:                                               ; preds = %42
  %50 = call i32 (...) @current_fsuid()
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 9
  store i32 %50, i32* %52, align 4
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @S_ISGID, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %49
  %60 = load %struct.inode*, %struct.inode** %4, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.inode*, %struct.inode** %7, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 8
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i64 @S_ISDIR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load i32, i32* @S_ISGID, align 4
  %70 = load i32, i32* %5, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %68, %59
  br label %77

73:                                               ; preds = %49
  %74 = call i32 (...) @current_fsgid()
  %75 = load %struct.inode*, %struct.inode** %7, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 8
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %73, %72
  %78 = load %struct.inode*, %struct.inode** %7, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 9
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %82 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %81, i32 0, i32 15
  store i32 %80, i32* %82, align 8
  %83 = load %struct.inode*, %struct.inode** %7, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %87 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %86, i32 0, i32 14
  store i32 %85, i32* %87, align 4
  %88 = load %struct.inode*, %struct.inode** %7, align 8
  %89 = call i64 @vfs_dq_alloc_inode(%struct.inode* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %77
  %92 = load i32, i32* @EDQUOT, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %9, align 4
  br label %206

94:                                               ; preds = %77
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.inode*, %struct.inode** %7, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.inode*, %struct.inode** %4, align 8
  %99 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %98)
  %100 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @JFS_FL_INHERIT, align 4
  %103 = and i32 %101, %102
  %104 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %105 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i64 @S_ISDIR(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %94
  %110 = load i32, i32* @IDIRECTORY, align 4
  %111 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %112 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load i32, i32* @JFS_DIRSYNC_FL, align 4
  %116 = xor i32 %115, -1
  %117 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %118 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %142

121:                                              ; preds = %94
  %122 = load i32, i32* @INLINEEA, align 4
  %123 = load i32, i32* @ISPARSE, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %126 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i64 @S_ISLNK(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %121
  %133 = load i32, i32* @JFS_IMMUTABLE_FL, align 4
  %134 = load i32, i32* @JFS_APPEND_FL, align 4
  %135 = or i32 %133, %134
  %136 = xor i32 %135, -1
  %137 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %138 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %139, %136
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %132, %121
  br label %142

142:                                              ; preds = %141, %109
  %143 = load i32, i32* %5, align 4
  %144 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %145 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  %148 = load %struct.inode*, %struct.inode** %7, align 8
  %149 = getelementptr inbounds %struct.inode, %struct.inode* %148, i32 0, i32 7
  store i64 0, i64* %149, align 8
  %150 = load %struct.inode*, %struct.inode** %7, align 8
  %151 = getelementptr inbounds %struct.inode, %struct.inode* %150, i32 0, i32 6
  %152 = load %struct.inode*, %struct.inode** %7, align 8
  %153 = getelementptr inbounds %struct.inode, %struct.inode* %152, i32 0, i32 5
  %154 = load %struct.inode*, %struct.inode** %7, align 8
  %155 = getelementptr inbounds %struct.inode, %struct.inode* %154, i32 0, i32 4
  %156 = bitcast %struct.TYPE_4__* %155 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %156, i8* align 4 bitcast (%struct.TYPE_4__* @CURRENT_TIME to i8*), i64 4, i1 false)
  %157 = bitcast %struct.TYPE_4__* %153 to i8*
  %158 = bitcast %struct.TYPE_4__* %155 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %157, i8* align 8 %158, i64 4, i1 false)
  %159 = bitcast %struct.TYPE_4__* %151 to i8*
  %160 = bitcast %struct.TYPE_4__* %153 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %159, i8* align 4 %160, i64 4, i1 false)
  %161 = load %struct.inode*, %struct.inode** %7, align 8
  %162 = getelementptr inbounds %struct.inode, %struct.inode* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %166 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %165, i32 0, i32 13
  store i32 %164, i32* %166, align 8
  %167 = load %struct.super_block*, %struct.super_block** %6, align 8
  %168 = call %struct.TYPE_3__* @JFS_SBI(%struct.super_block* %167)
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 4
  %172 = sext i32 %170 to i64
  %173 = load %struct.inode*, %struct.inode** %7, align 8
  %174 = getelementptr inbounds %struct.inode, %struct.inode* %173, i32 0, i32 3
  store i64 %172, i64* %174, align 8
  %175 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %176 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %175, i32 0, i32 12
  store i64 0, i64* %176, align 8
  %177 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %178 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %177, i32 0, i32 11
  %179 = call i32 @memset(i32* %178, i32 0, i32 4)
  %180 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %181 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %180, i32 0, i32 10
  %182 = call i32 @memset(i32* %181, i32 0, i32 4)
  %183 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %184 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %183, i32 0, i32 9
  store i64 0, i64* %184, align 8
  %185 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %186 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %185, i32 0, i32 8
  store i64 0, i64* %186, align 8
  %187 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %188 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %187, i32 0, i32 7
  store i64 0, i64* %188, align 8
  %189 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %190 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %189, i32 0, i32 6
  store i64 0, i64* %190, align 8
  %191 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %192 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %191, i32 0, i32 5
  store i64 0, i64* %192, align 8
  %193 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %194 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %193, i32 0, i32 4
  store i64 0, i64* %194, align 8
  %195 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %196 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %195, i32 0, i32 3
  store i64 0, i64* %196, align 8
  %197 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %198 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %197, i32 0, i32 2
  store i64 0, i64* %198, align 8
  %199 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %8, align 8
  %200 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %199, i32 0, i32 1
  store i64 0, i64* %200, align 8
  %201 = load %struct.inode*, %struct.inode** %7, align 8
  %202 = call i32 @jfs_set_inode_flags(%struct.inode* %201)
  %203 = load %struct.inode*, %struct.inode** %7, align 8
  %204 = call i32 @jfs_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), %struct.inode* %203)
  %205 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %205, %struct.inode** %3, align 8
  br label %225

206:                                              ; preds = %91
  %207 = load %struct.inode*, %struct.inode** %7, align 8
  %208 = call i32 @vfs_dq_drop(%struct.inode* %207)
  %209 = load i32, i32* @S_NOQUOTA, align 4
  %210 = load %struct.inode*, %struct.inode** %7, align 8
  %211 = getelementptr inbounds %struct.inode, %struct.inode* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = or i32 %212, %209
  store i32 %213, i32* %211, align 8
  br label %214

214:                                              ; preds = %206, %46
  %215 = load %struct.inode*, %struct.inode** %7, align 8
  %216 = getelementptr inbounds %struct.inode, %struct.inode* %215, i32 0, i32 1
  store i64 0, i64* %216, align 8
  %217 = load %struct.inode*, %struct.inode** %7, align 8
  %218 = call i32 @unlock_new_inode(%struct.inode* %217)
  br label %219

219:                                              ; preds = %214, %41
  %220 = load %struct.inode*, %struct.inode** %7, align 8
  %221 = call i32 @iput(%struct.inode* %220)
  br label %222

222:                                              ; preds = %219, %17
  %223 = load i32, i32* %9, align 4
  %224 = call %struct.inode* @ERR_PTR(i32 %223)
  store %struct.inode* %224, %struct.inode** %3, align 8
  br label %225

225:                                              ; preds = %222, %142
  %226 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %226
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @jfs_warn(i8*, ...) #1

declare dso_local %struct.jfs_inode_info* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @diAlloc(%struct.inode*, i64, %struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i64 @insert_inode_locked(%struct.inode*) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i64 @vfs_dq_alloc_inode(%struct.inode*) #1

declare dso_local i64 @S_ISLNK(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_3__* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @jfs_set_inode_flags(%struct.inode*) #1

declare dso_local i32 @jfs_info(i8*, %struct.inode*) #1

declare dso_local i32 @vfs_dq_drop(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_inode.c_gfs2_create_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_inode.c_gfs2_create_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_8__*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.inode*)* }
%struct.dentry = type { %struct.qstr }
%struct.qstr = type { i64 }
%struct.gfs2_holder = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.gfs2_inode* }
%struct.gfs2_inode = type { i32, i32, %struct.gfs2_glock*, %struct.gfs2_holder, i32, i64, i64, i64, i64, i32, i32 }
%struct.gfs2_glock = type { %struct.gfs2_inode* }
%struct.gfs2_sbd = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.buffer_head = type { i32 }

@GFS2_FNAMESIZE = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GIF_INVALID = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@GFS2_DIF_TOPDIR = common dso_local global i32 0, align 4
@GFS2_AF_ORLOV = common dso_local global i32 0, align 4
@gfs2_inode_glops = common dso_local global i32 0, align 4
@CREATE = common dso_local global i32 0, align 4
@GL_SKIP = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i32 0, align 4
@gfs2_iopen_glops = common dso_local global i32 0, align 4
@LM_ST_SHARED = common dso_local global i32 0, align 4
@GL_EXACT = common dso_local global i32 0, align 4
@GIF_ALLOC_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_create_inode(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.qstr*, align 8
  %17 = alloca [2 x %struct.gfs2_holder], align 16
  %18 = alloca %struct.inode*, align 8
  %19 = alloca %struct.gfs2_inode*, align 8
  %20 = alloca %struct.gfs2_inode*, align 8
  %21 = alloca %struct.gfs2_sbd*, align 8
  %22 = alloca %struct.gfs2_glock*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.buffer_head*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %9, align 8
  store %struct.dentry* %1, %struct.dentry** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %27 = load %struct.dentry*, %struct.dentry** %10, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  store %struct.qstr* %28, %struct.qstr** %16, align 8
  store %struct.inode* null, %struct.inode** %18, align 8
  %29 = load %struct.inode*, %struct.inode** %9, align 8
  %30 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %29)
  store %struct.gfs2_inode* %30, %struct.gfs2_inode** %19, align 8
  %31 = load %struct.gfs2_inode*, %struct.gfs2_inode** %19, align 8
  %32 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %31, i32 0, i32 10
  %33 = call %struct.gfs2_sbd* @GFS2_SB(i32* %32)
  store %struct.gfs2_sbd* %33, %struct.gfs2_sbd** %21, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %24, align 8
  store i32 0, i32* %25, align 4
  %34 = load %struct.qstr*, %struct.qstr** %16, align 8
  %35 = getelementptr inbounds %struct.qstr, %struct.qstr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %7
  %39 = load %struct.qstr*, %struct.qstr** %16, align 8
  %40 = getelementptr inbounds %struct.qstr, %struct.qstr* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @GFS2_FNAMESIZE, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38, %7
  %45 = load i32, i32* @ENAMETOOLONG, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %402

47:                                               ; preds = %38
  %48 = load %struct.gfs2_inode*, %struct.gfs2_inode** %19, align 8
  %49 = call i32 @gfs2_rs_alloc(%struct.gfs2_inode* %48)
  store i32 %49, i32* %23, align 4
  %50 = load i32, i32* %23, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %23, align 4
  store i32 %53, i32* %8, align 4
  br label %402

54:                                               ; preds = %47
  %55 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %21, align 8
  %56 = call i32 @gfs2_rindex_update(%struct.gfs2_sbd* %55)
  store i32 %56, i32* %23, align 4
  %57 = load i32, i32* %23, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %23, align 4
  store i32 %60, i32* %8, align 4
  br label %402

61:                                               ; preds = %54
  %62 = load %struct.gfs2_inode*, %struct.gfs2_inode** %19, align 8
  %63 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %62, i32 0, i32 2
  %64 = load %struct.gfs2_glock*, %struct.gfs2_glock** %63, align 8
  %65 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %66 = getelementptr inbounds [2 x %struct.gfs2_holder], [2 x %struct.gfs2_holder]* %17, i64 0, i64 0
  %67 = call i32 @gfs2_glock_nq_init(%struct.gfs2_glock* %64, i32 %65, i32 0, %struct.gfs2_holder* %66)
  store i32 %67, i32* %23, align 4
  %68 = load i32, i32* %23, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %394

71:                                               ; preds = %61
  %72 = load %struct.gfs2_inode*, %struct.gfs2_inode** %19, align 8
  %73 = load %struct.qstr*, %struct.qstr** %16, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @create_ok(%struct.gfs2_inode* %72, %struct.qstr* %73, i32 %74)
  store i32 %75, i32* %23, align 4
  %76 = load i32, i32* %23, align 4
  %77 = load i32, i32* @EEXIST, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %115

80:                                               ; preds = %71
  %81 = load i32, i32* %11, align 4
  %82 = call i64 @S_ISREG(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %115

84:                                               ; preds = %80
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %115, label %87

87:                                               ; preds = %84
  %88 = load %struct.inode*, %struct.inode** %9, align 8
  %89 = load %struct.dentry*, %struct.dentry** %10, align 8
  %90 = getelementptr inbounds %struct.dentry, %struct.dentry* %89, i32 0, i32 0
  %91 = call %struct.inode* @gfs2_lookupi(%struct.inode* %88, %struct.qstr* %90, i32 0)
  store %struct.inode* %91, %struct.inode** %18, align 8
  %92 = load %struct.inode*, %struct.inode** %18, align 8
  %93 = icmp ne %struct.inode* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = getelementptr inbounds [2 x %struct.gfs2_holder], [2 x %struct.gfs2_holder]* %17, i64 0, i64 0
  %96 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %95)
  br label %97

97:                                               ; preds = %94, %87
  %98 = load %struct.inode*, %struct.inode** %18, align 8
  %99 = call i64 @IS_ERR(%struct.inode* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load %struct.dentry*, %struct.dentry** %10, align 8
  %103 = load %struct.inode*, %struct.inode** %18, align 8
  %104 = call i32 @d_instantiate(%struct.dentry* %102, %struct.inode* %103)
  br label %105

105:                                              ; preds = %101, %97
  %106 = load %struct.inode*, %struct.inode** %18, align 8
  %107 = call i64 @IS_ERR(%struct.inode* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load %struct.inode*, %struct.inode** %18, align 8
  %111 = call i32 @PTR_ERR(%struct.inode* %110)
  br label %113

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112, %109
  %114 = phi i32 [ %111, %109 ], [ 0, %112 ]
  store i32 %114, i32* %8, align 4
  br label %402

115:                                              ; preds = %84, %80, %71
  %116 = load i32, i32* %23, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  br label %376

119:                                              ; preds = %115
  %120 = load %struct.inode*, %struct.inode** %9, align 8
  %121 = load %struct.qstr*, %struct.qstr** %16, align 8
  %122 = call i32 @gfs2_diradd_alloc_required(%struct.inode* %120, %struct.qstr* %121)
  store i32 %122, i32* %23, align 4
  store i32 %122, i32* %26, align 4
  %123 = load i32, i32* %23, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %376

126:                                              ; preds = %119
  %127 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %21, align 8
  %128 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call %struct.inode* @new_inode(i32 %129)
  store %struct.inode* %130, %struct.inode** %18, align 8
  %131 = load %struct.inode*, %struct.inode** %18, align 8
  %132 = icmp ne %struct.inode* %131, null
  br i1 %132, label %138, label %133

133:                                              ; preds = %126
  %134 = getelementptr inbounds [2 x %struct.gfs2_holder], [2 x %struct.gfs2_holder]* %17, i64 0, i64 0
  %135 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %134)
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %8, align 4
  br label %402

138:                                              ; preds = %126
  %139 = load %struct.inode*, %struct.inode** %18, align 8
  %140 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %139)
  store %struct.gfs2_inode* %140, %struct.gfs2_inode** %20, align 8
  %141 = load %struct.gfs2_inode*, %struct.gfs2_inode** %20, align 8
  %142 = call i32 @gfs2_rs_alloc(%struct.gfs2_inode* %141)
  store i32 %142, i32* %23, align 4
  %143 = load i32, i32* %23, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  br label %354

146:                                              ; preds = %138
  %147 = load i32, i32* @GIF_INVALID, align 4
  %148 = load %struct.gfs2_inode*, %struct.gfs2_inode** %20, align 8
  %149 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %148, i32 0, i32 1
  %150 = call i32 @set_bit(i32 %147, i32* %149)
  %151 = load i32, i32* %11, align 4
  %152 = load %struct.inode*, %struct.inode** %18, align 8
  %153 = getelementptr inbounds %struct.inode, %struct.inode* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load i32, i32* %12, align 4
  %155 = load %struct.inode*, %struct.inode** %18, align 8
  %156 = getelementptr inbounds %struct.inode, %struct.inode* %155, i32 0, i32 6
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* %14, align 4
  %158 = load %struct.inode*, %struct.inode** %18, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* @CURRENT_TIME, align 4
  %161 = load %struct.inode*, %struct.inode** %18, align 8
  %162 = getelementptr inbounds %struct.inode, %struct.inode* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 8
  %163 = load %struct.inode*, %struct.inode** %18, align 8
  %164 = getelementptr inbounds %struct.inode, %struct.inode* %163, i32 0, i32 4
  store i32 %160, i32* %164, align 4
  %165 = load %struct.inode*, %struct.inode** %18, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 5
  store i32 %160, i32* %166, align 8
  %167 = load %struct.inode*, %struct.inode** %18, align 8
  %168 = call i32 @gfs2_set_inode_blocks(%struct.inode* %167, i32 1)
  %169 = load %struct.gfs2_inode*, %struct.gfs2_inode** %19, align 8
  %170 = load %struct.inode*, %struct.inode** %18, align 8
  %171 = call i32 @munge_mode_uid_gid(%struct.gfs2_inode* %169, %struct.inode* %170)
  %172 = load %struct.gfs2_inode*, %struct.gfs2_inode** %19, align 8
  %173 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %172, i32 0, i32 9
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.gfs2_inode*, %struct.gfs2_inode** %20, align 8
  %176 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %175, i32 0, i32 9
  store i32 %174, i32* %176, align 8
  %177 = load %struct.gfs2_inode*, %struct.gfs2_inode** %20, align 8
  %178 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %177, i32 0, i32 0
  store i32 0, i32* %178, align 8
  %179 = load %struct.gfs2_inode*, %struct.gfs2_inode** %20, align 8
  %180 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %179, i32 0, i32 8
  store i64 0, i64* %180, align 8
  %181 = load %struct.gfs2_inode*, %struct.gfs2_inode** %20, align 8
  %182 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %181, i32 0, i32 7
  store i64 0, i64* %182, align 8
  %183 = load %struct.gfs2_inode*, %struct.gfs2_inode** %20, align 8
  %184 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %183, i32 0, i32 6
  store i64 0, i64* %184, align 8
  %185 = load %struct.gfs2_inode*, %struct.gfs2_inode** %20, align 8
  %186 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %185, i32 0, i32 5
  store i64 0, i64* %186, align 8
  %187 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %21, align 8
  %188 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %187, i32 0, i32 0
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = load %struct.inode*, %struct.inode** %190, align 8
  %192 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %191)
  %193 = load %struct.gfs2_inode*, %struct.gfs2_inode** %19, align 8
  %194 = icmp eq %struct.gfs2_inode* %192, %193
  br i1 %194, label %202, label %195

195:                                              ; preds = %146
  %196 = load %struct.gfs2_inode*, %struct.gfs2_inode** %19, align 8
  %197 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @GFS2_DIF_TOPDIR, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %195, %146
  %203 = load i32, i32* @GFS2_AF_ORLOV, align 4
  %204 = load i32, i32* %25, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %25, align 4
  br label %206

206:                                              ; preds = %202, %195
  %207 = load %struct.gfs2_inode*, %struct.gfs2_inode** %20, align 8
  %208 = load i32, i32* %25, align 4
  %209 = call i32 @alloc_dinode(%struct.gfs2_inode* %207, i32 %208)
  store i32 %209, i32* %23, align 4
  %210 = load i32, i32* %23, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %206
  br label %354

213:                                              ; preds = %206
  %214 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %21, align 8
  %215 = load %struct.gfs2_inode*, %struct.gfs2_inode** %20, align 8
  %216 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @CREATE, align 4
  %219 = load %struct.gfs2_inode*, %struct.gfs2_inode** %20, align 8
  %220 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %219, i32 0, i32 2
  %221 = call i32 @gfs2_glock_get(%struct.gfs2_sbd* %214, i32 %217, i32* @gfs2_inode_glops, i32 %218, %struct.gfs2_glock** %220)
  store i32 %221, i32* %23, align 4
  %222 = load i32, i32* %23, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %213
  br label %354

225:                                              ; preds = %213
  %226 = load %struct.gfs2_inode*, %struct.gfs2_inode** %20, align 8
  %227 = load %struct.gfs2_inode*, %struct.gfs2_inode** %20, align 8
  %228 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %227, i32 0, i32 2
  %229 = load %struct.gfs2_glock*, %struct.gfs2_glock** %228, align 8
  %230 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %229, i32 0, i32 0
  store %struct.gfs2_inode* %226, %struct.gfs2_inode** %230, align 8
  %231 = load %struct.gfs2_inode*, %struct.gfs2_inode** %20, align 8
  %232 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %231, i32 0, i32 2
  %233 = load %struct.gfs2_glock*, %struct.gfs2_glock** %232, align 8
  %234 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %235 = load i32, i32* @GL_SKIP, align 4
  %236 = getelementptr inbounds [2 x %struct.gfs2_holder], [2 x %struct.gfs2_holder]* %17, i64 0, i64 0
  %237 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %236, i64 1
  %238 = call i32 @gfs2_glock_nq_init(%struct.gfs2_glock* %233, i32 %234, i32 %235, %struct.gfs2_holder* %237)
  store i32 %238, i32* %23, align 4
  %239 = load i32, i32* %23, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %225
  br label %354

242:                                              ; preds = %225
  %243 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %21, align 8
  %244 = load i32, i32* @RES_DINODE, align 4
  %245 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %243, i32 %244, i32 0)
  store i32 %245, i32* %23, align 4
  %246 = load i32, i32* %23, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %242
  br label %350

249:                                              ; preds = %242
  %250 = load %struct.gfs2_inode*, %struct.gfs2_inode** %19, align 8
  %251 = load %struct.gfs2_inode*, %struct.gfs2_inode** %20, align 8
  %252 = load i8*, i8** %13, align 8
  %253 = call i32 @init_dinode(%struct.gfs2_inode* %250, %struct.gfs2_inode* %251, i8* %252, %struct.buffer_head** %24)
  %254 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %21, align 8
  %255 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %254)
  %256 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %21, align 8
  %257 = load %struct.gfs2_inode*, %struct.gfs2_inode** %20, align 8
  %258 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @CREATE, align 4
  %261 = call i32 @gfs2_glock_get(%struct.gfs2_sbd* %256, i32 %259, i32* @gfs2_iopen_glops, i32 %260, %struct.gfs2_glock** %22)
  store i32 %261, i32* %23, align 4
  %262 = load i32, i32* %23, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %249
  br label %350

265:                                              ; preds = %249
  %266 = load %struct.gfs2_glock*, %struct.gfs2_glock** %22, align 8
  %267 = load i32, i32* @LM_ST_SHARED, align 4
  %268 = load i32, i32* @GL_EXACT, align 4
  %269 = load %struct.gfs2_inode*, %struct.gfs2_inode** %20, align 8
  %270 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %269, i32 0, i32 3
  %271 = call i32 @gfs2_glock_nq_init(%struct.gfs2_glock* %266, i32 %267, i32 %268, %struct.gfs2_holder* %270)
  store i32 %271, i32* %23, align 4
  %272 = load i32, i32* %23, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %265
  br label %350

275:                                              ; preds = %265
  %276 = load %struct.gfs2_inode*, %struct.gfs2_inode** %20, align 8
  %277 = load %struct.gfs2_inode*, %struct.gfs2_inode** %20, align 8
  %278 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %277, i32 0, i32 3
  %279 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %278, i32 0, i32 0
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 0
  store %struct.gfs2_inode* %276, %struct.gfs2_inode** %281, align 8
  %282 = load %struct.gfs2_glock*, %struct.gfs2_glock** %22, align 8
  %283 = call i32 @gfs2_glock_put(%struct.gfs2_glock* %282)
  %284 = load %struct.inode*, %struct.inode** %18, align 8
  %285 = call i32 @gfs2_set_iop(%struct.inode* %284)
  %286 = load %struct.inode*, %struct.inode** %18, align 8
  %287 = call i32 @insert_inode_hash(%struct.inode* %286)
  %288 = load %struct.gfs2_inode*, %struct.gfs2_inode** %20, align 8
  %289 = call i32 @gfs2_inode_refresh(%struct.gfs2_inode* %288)
  store i32 %289, i32* %23, align 4
  %290 = load i32, i32* %23, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %275
  br label %336

293:                                              ; preds = %275
  %294 = load %struct.gfs2_inode*, %struct.gfs2_inode** %19, align 8
  %295 = load %struct.inode*, %struct.inode** %18, align 8
  %296 = call i32 @gfs2_acl_create(%struct.gfs2_inode* %294, %struct.inode* %295)
  store i32 %296, i32* %23, align 4
  %297 = load i32, i32* %23, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %293
  br label %336

300:                                              ; preds = %293
  %301 = load %struct.gfs2_inode*, %struct.gfs2_inode** %19, align 8
  %302 = load %struct.gfs2_inode*, %struct.gfs2_inode** %20, align 8
  %303 = call i32 @gfs2_security_init(%struct.gfs2_inode* %301, %struct.gfs2_inode* %302)
  store i32 %303, i32* %23, align 4
  %304 = load i32, i32* %23, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %300
  br label %336

307:                                              ; preds = %300
  %308 = load %struct.gfs2_inode*, %struct.gfs2_inode** %19, align 8
  %309 = load %struct.qstr*, %struct.qstr** %16, align 8
  %310 = load %struct.gfs2_inode*, %struct.gfs2_inode** %20, align 8
  %311 = load i32, i32* %26, align 4
  %312 = call i32 @link_dinode(%struct.gfs2_inode* %308, %struct.qstr* %309, %struct.gfs2_inode* %310, i32 %311)
  store i32 %312, i32* %23, align 4
  %313 = load i32, i32* %23, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %307
  br label %336

316:                                              ; preds = %307
  %317 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  %318 = icmp ne %struct.buffer_head* %317, null
  br i1 %318, label %319, label %322

319:                                              ; preds = %316
  %320 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  %321 = call i32 @brelse(%struct.buffer_head* %320)
  br label %322

322:                                              ; preds = %319, %316
  %323 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %21, align 8
  %324 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %323)
  %325 = load %struct.gfs2_inode*, %struct.gfs2_inode** %19, align 8
  %326 = call i32 @gfs2_inplace_release(%struct.gfs2_inode* %325)
  %327 = load %struct.gfs2_inode*, %struct.gfs2_inode** %19, align 8
  %328 = call i32 @gfs2_quota_unlock(%struct.gfs2_inode* %327)
  %329 = load %struct.inode*, %struct.inode** %18, align 8
  %330 = call i32 @mark_inode_dirty(%struct.inode* %329)
  %331 = getelementptr inbounds [2 x %struct.gfs2_holder], [2 x %struct.gfs2_holder]* %17, i64 0, i64 0
  %332 = call i32 @gfs2_glock_dq_uninit_m(i32 2, %struct.gfs2_holder* %331)
  %333 = load %struct.dentry*, %struct.dentry** %10, align 8
  %334 = load %struct.inode*, %struct.inode** %18, align 8
  %335 = call i32 @d_instantiate(%struct.dentry* %333, %struct.inode* %334)
  store i32 0, i32* %8, align 4
  br label %402

336:                                              ; preds = %315, %306, %299, %292
  %337 = getelementptr inbounds [2 x %struct.gfs2_holder], [2 x %struct.gfs2_holder]* %17, i64 0, i64 0
  %338 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %337, i64 1
  %339 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %338)
  %340 = load %struct.gfs2_inode*, %struct.gfs2_inode** %20, align 8
  %341 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %340, i32 0, i32 2
  %342 = load %struct.gfs2_glock*, %struct.gfs2_glock** %341, align 8
  %343 = icmp ne %struct.gfs2_glock* %342, null
  br i1 %343, label %344, label %349

344:                                              ; preds = %336
  %345 = load %struct.gfs2_inode*, %struct.gfs2_inode** %20, align 8
  %346 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %345, i32 0, i32 2
  %347 = load %struct.gfs2_glock*, %struct.gfs2_glock** %346, align 8
  %348 = call i32 @gfs2_glock_put(%struct.gfs2_glock* %347)
  br label %349

349:                                              ; preds = %344, %336
  br label %376

350:                                              ; preds = %274, %264, %248
  %351 = getelementptr inbounds [2 x %struct.gfs2_holder], [2 x %struct.gfs2_holder]* %17, i64 0, i64 0
  %352 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %351, i64 1
  %353 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %352)
  br label %354

354:                                              ; preds = %350, %241, %224, %212, %145
  %355 = load %struct.gfs2_inode*, %struct.gfs2_inode** %20, align 8
  %356 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %355, i32 0, i32 2
  %357 = load %struct.gfs2_glock*, %struct.gfs2_glock** %356, align 8
  %358 = icmp ne %struct.gfs2_glock* %357, null
  br i1 %358, label %359, label %364

359:                                              ; preds = %354
  %360 = load %struct.gfs2_inode*, %struct.gfs2_inode** %20, align 8
  %361 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %360, i32 0, i32 2
  %362 = load %struct.gfs2_glock*, %struct.gfs2_glock** %361, align 8
  %363 = call i32 @gfs2_glock_put(%struct.gfs2_glock* %362)
  br label %364

364:                                              ; preds = %359, %354
  %365 = load %struct.gfs2_inode*, %struct.gfs2_inode** %20, align 8
  %366 = call i32 @gfs2_rs_delete(%struct.gfs2_inode* %365)
  %367 = load %struct.inode*, %struct.inode** %18, align 8
  %368 = getelementptr inbounds %struct.inode, %struct.inode* %367, i32 0, i32 2
  %369 = load %struct.TYPE_8__*, %struct.TYPE_8__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %369, i32 0, i32 0
  %371 = load %struct.TYPE_7__*, %struct.TYPE_7__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %371, i32 0, i32 0
  %373 = load i32 (%struct.inode*)*, i32 (%struct.inode*)** %372, align 8
  %374 = load %struct.inode*, %struct.inode** %18, align 8
  %375 = call i32 %373(%struct.inode* %374)
  store %struct.inode* null, %struct.inode** %18, align 8
  br label %376

376:                                              ; preds = %364, %349, %125, %118
  %377 = getelementptr inbounds [2 x %struct.gfs2_holder], [2 x %struct.gfs2_holder]* %17, i64 0, i64 0
  %378 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %377)
  %379 = load %struct.inode*, %struct.inode** %18, align 8
  %380 = icmp ne %struct.inode* %379, null
  br i1 %380, label %381, label %393

381:                                              ; preds = %376
  %382 = load %struct.inode*, %struct.inode** %18, align 8
  %383 = call i64 @IS_ERR(%struct.inode* %382)
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %393, label %385

385:                                              ; preds = %381
  %386 = load i32, i32* @GIF_ALLOC_FAILED, align 4
  %387 = load %struct.inode*, %struct.inode** %18, align 8
  %388 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %387)
  %389 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %388, i32 0, i32 1
  %390 = call i32 @set_bit(i32 %386, i32* %389)
  %391 = load %struct.inode*, %struct.inode** %18, align 8
  %392 = call i32 @iput(%struct.inode* %391)
  br label %393

393:                                              ; preds = %385, %381, %376
  br label %394

394:                                              ; preds = %393, %70
  %395 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  %396 = icmp ne %struct.buffer_head* %395, null
  br i1 %396, label %397, label %400

397:                                              ; preds = %394
  %398 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  %399 = call i32 @brelse(%struct.buffer_head* %398)
  br label %400

400:                                              ; preds = %397, %394
  %401 = load i32, i32* %23, align 4
  store i32 %401, i32* %8, align 4
  br label %402

402:                                              ; preds = %400, %322, %133, %113, %59, %52, %44
  %403 = load i32, i32* %8, align 4
  ret i32 %403
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i32 @gfs2_rs_alloc(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_rindex_update(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_glock_nq_init(%struct.gfs2_glock*, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @create_ok(%struct.gfs2_inode*, %struct.qstr*, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local %struct.inode* @gfs2_lookupi(%struct.inode*, %struct.qstr*, i32) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @gfs2_diradd_alloc_required(%struct.inode*, %struct.qstr*) #1

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @gfs2_set_inode_blocks(%struct.inode*, i32) #1

declare dso_local i32 @munge_mode_uid_gid(%struct.gfs2_inode*, %struct.inode*) #1

declare dso_local i32 @alloc_dinode(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @gfs2_glock_get(%struct.gfs2_sbd*, i32, i32*, i32, %struct.gfs2_glock**) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @init_dinode(%struct.gfs2_inode*, %struct.gfs2_inode*, i8*, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_glock_put(%struct.gfs2_glock*) #1

declare dso_local i32 @gfs2_set_iop(%struct.inode*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @gfs2_inode_refresh(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_acl_create(%struct.gfs2_inode*, %struct.inode*) #1

declare dso_local i32 @gfs2_security_init(%struct.gfs2_inode*, %struct.gfs2_inode*) #1

declare dso_local i32 @link_dinode(%struct.gfs2_inode*, %struct.qstr*, %struct.gfs2_inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_inplace_release(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_quota_unlock(%struct.gfs2_inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @gfs2_glock_dq_uninit_m(i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_rs_delete(%struct.gfs2_inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

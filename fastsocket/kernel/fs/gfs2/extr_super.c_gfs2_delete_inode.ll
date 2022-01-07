; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_delete_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_delete_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.inode = type { i32, i32, i32, %struct.super_block* }
%struct.super_block = type { i32, %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.gfs2_inode = type { i32, %struct.gfs2_holder, i32, %struct.TYPE_9__*, i64, i32, i32 }
%struct.gfs2_holder = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.buffer_head = type { i64 }
%struct.gfs2_dinode = type { i32, i32 }
%struct.timespec = type { i32, i32 }
%struct.address_space = type { i32 }

@MS_RDONLY = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@GL_SKIP = common dso_local global i32 0, align 4
@GL_NOCACHE = common dso_local global i32 0, align 4
@GIF_ALLOC_FAILED = common dso_local global i32 0, align 4
@GFS2_BLKST_UNLINKED = common dso_local global i32 0, align 4
@GIF_INVALID = common dso_local global i32 0, align 4
@LM_FLAG_TRY_1CB = common dso_local global i32 0, align 4
@GFS2_DIF_EXHASH = common dso_local global i32 0, align 4
@GLF_DIRTY = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_10__* null, align 8
@PF_MEMALLOC = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i32 0, align 4
@HIF_HOLDER = common dso_local global i32 0, align 4
@GLR_TRYFAILED = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"gfs2_delete_inode: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @gfs2_delete_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_delete_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.gfs2_holder, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.gfs2_dinode*, align 8
  %10 = alloca %struct.timespec, align 4
  %11 = alloca %struct.address_space*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 3
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %3, align 8
  %15 = load %struct.super_block*, %struct.super_block** %3, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 1
  %17 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %16, align 8
  store %struct.gfs2_sbd* %17, %struct.gfs2_sbd** %4, align 8
  %18 = load %struct.inode*, %struct.inode** %2, align 8
  %19 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %18)
  store %struct.gfs2_inode* %19, %struct.gfs2_inode** %5, align 8
  %20 = load %struct.super_block*, %struct.super_block** %3, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MS_RDONLY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %303

27:                                               ; preds = %1
  %28 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %29 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %28, i32 0, i32 3
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %32 = load i32, i32* @GL_SKIP, align 4
  %33 = call i32 @gfs2_glock_nq_init(%struct.TYPE_9__* %30, i32 %31, i32 %32, %struct.gfs2_holder* %6)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %27
  %38 = load i32, i32* @GL_NOCACHE, align 4
  %39 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %40 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %38
  store i32 %43, i32* %41, align 4
  %44 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %45 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %44, i32 0, i32 1
  %46 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %45)
  br label %303

47:                                               ; preds = %27
  %48 = load i32, i32* @GIF_ALLOC_FAILED, align 4
  %49 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %50 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %49, i32 0, i32 5
  %51 = call i64 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %47
  %54 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %55 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %56 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @GFS2_BLKST_UNLINKED, align 4
  %59 = call i32 @gfs2_check_blk_type(%struct.gfs2_sbd* %54, i32 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %146

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %47
  %65 = load i32, i32* @GIF_INVALID, align 4
  %66 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %67 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %66, i32 0, i32 5
  %68 = call i64 @test_bit(i32 %65, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %72 = call i32 @gfs2_inode_refresh(%struct.gfs2_inode* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %146

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %76, %64
  %78 = load i32, i32* @GL_NOCACHE, align 4
  %79 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %80 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %78
  store i32 %83, i32* %81, align 4
  %84 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %85 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %84, i32 0, i32 1
  %86 = call i32 @gfs2_glock_dq_wait(%struct.gfs2_holder* %85)
  %87 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %88 = load i32, i32* @LM_FLAG_TRY_1CB, align 4
  %89 = load i32, i32* @GL_NOCACHE, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %92 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %91, i32 0, i32 1
  %93 = call i32 @gfs2_holder_reinit(i32 %87, i32 %90, %struct.gfs2_holder* %92)
  %94 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %95 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %94, i32 0, i32 1
  %96 = call i32 @gfs2_glock_nq(%struct.gfs2_holder* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %77
  br label %146

100:                                              ; preds = %77
  %101 = load %struct.inode*, %struct.inode** %2, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @S_ISDIR(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %100
  %107 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %108 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @GFS2_DIF_EXHASH, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %106
  %114 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %115 = call i32 @gfs2_dir_exhash_dealloc(%struct.gfs2_inode* %114)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %254

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119, %106, %100
  %121 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %122 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %127 = call i32 @gfs2_ea_dealloc(%struct.gfs2_inode* %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %254

131:                                              ; preds = %125
  br label %132

132:                                              ; preds = %131, %120
  %133 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %134 = call i32 @gfs2_is_stuffed(%struct.gfs2_inode* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %132
  %137 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %138 = call i32 @gfs2_file_dealloc(%struct.gfs2_inode* %137)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %254

142:                                              ; preds = %136
  br label %143

143:                                              ; preds = %142, %132
  %144 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %145 = call i32 @gfs2_dinode_dealloc(%struct.gfs2_inode* %144)
  store i32 %145, i32* %7, align 4
  br label %254

146:                                              ; preds = %99, %75, %62
  %147 = load i32, i32* @GLF_DIRTY, align 4
  %148 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %149 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %148, i32 0, i32 3
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = call i64 @test_bit(i32 %147, i32* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %209

154:                                              ; preds = %146
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @PF_MEMALLOC, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %209, label %161

161:                                              ; preds = %154
  %162 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %163 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %162, %struct.buffer_head** %8)
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %208, label %166

166:                                              ; preds = %161
  %167 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %168 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = inttoptr i64 %169 to %struct.gfs2_dinode*
  store %struct.gfs2_dinode* %170, %struct.gfs2_dinode** %9, align 8
  %171 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %9, align 8
  %172 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @be64_to_cpu(i32 %173)
  %175 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 1
  store i32 %174, i32* %175, align 4
  %176 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %9, align 8
  %177 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @be32_to_cpu(i32 %178)
  %180 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0
  store i32 %179, i32* %180, align 4
  %181 = load %struct.inode*, %struct.inode** %2, align 8
  %182 = getelementptr inbounds %struct.inode, %struct.inode* %181, i32 0, i32 1
  %183 = call i64 @timespec_compare(i32* %182, %struct.timespec* %10)
  %184 = icmp sgt i64 %183, 0
  br i1 %184, label %185, label %205

185:                                              ; preds = %166
  %186 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %187 = load i32, i32* @RES_DINODE, align 4
  %188 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %186, i32 %187, i32 0)
  store i32 %188, i32* %7, align 4
  %189 = load i32, i32* %7, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %185
  %192 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %193 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %192, i32 0, i32 3
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %193, align 8
  %195 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %196 = call i32 @gfs2_trans_add_meta(%struct.TYPE_9__* %194, %struct.buffer_head* %195)
  %197 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %198 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %199 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %197, i64 %200)
  %202 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %203 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %202)
  br label %204

204:                                              ; preds = %191, %185
  br label %205

205:                                              ; preds = %204, %166
  %206 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %207 = call i32 @brelse(%struct.buffer_head* %206)
  br label %208

208:                                              ; preds = %205, %161
  br label %209

209:                                              ; preds = %208, %154, %146
  %210 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %211 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %212 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %211, i32 0, i32 3
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %212, align 8
  %214 = call i32 @gfs2_log_flush(%struct.gfs2_sbd* %210, %struct.TYPE_9__* %213)
  %215 = load i32, i32* @GLF_DIRTY, align 4
  %216 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %217 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %216, i32 0, i32 3
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 0
  %220 = call i64 @test_bit(i32 %215, i32* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %209
  %223 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %224 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %223, i32 0, i32 3
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %224, align 8
  %226 = call %struct.address_space* @gfs2_glock2aspace(%struct.TYPE_9__* %225)
  store %struct.address_space* %226, %struct.address_space** %11, align 8
  %227 = load %struct.address_space*, %struct.address_space** %11, align 8
  %228 = call i32 @filemap_fdatawrite(%struct.address_space* %227)
  %229 = load %struct.address_space*, %struct.address_space** %11, align 8
  %230 = call i32 @filemap_fdatawait(%struct.address_space* %229)
  br label %231

231:                                              ; preds = %222, %209
  %232 = load %struct.inode*, %struct.inode** %2, align 8
  %233 = call i32 @write_inode_now(%struct.inode* %232, i32 1)
  %234 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %235 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %234, i32 0, i32 3
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %235, align 8
  %237 = call i32 @gfs2_ail_flush(%struct.TYPE_9__* %236, i32 0)
  %238 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %239 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %240 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %239, i32 0, i32 0
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %238, i32 0, i32 %243)
  store i32 %244, i32* %7, align 4
  %245 = load i32, i32* %7, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %231
  br label %254

248:                                              ; preds = %231
  %249 = load %struct.inode*, %struct.inode** %2, align 8
  %250 = getelementptr inbounds %struct.inode, %struct.inode* %249, i32 0, i32 0
  %251 = call i32 @truncate_inode_pages(i32* %250, i32 0)
  %252 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %253 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %252)
  br label %254

254:                                              ; preds = %248, %247, %143, %141, %130, %118
  %255 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %256 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = call i64 @gfs2_rs_active(i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %254
  %261 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %262 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @gfs2_rs_deltree(i32 %263)
  br label %265

265:                                              ; preds = %260, %254
  %266 = load i32, i32* @HIF_HOLDER, align 4
  %267 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %268 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %268, i32 0, i32 1
  %270 = call i64 @test_bit(i32 %266, i32* %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %282

272:                                              ; preds = %265
  %273 = load i32, i32* @GL_NOCACHE, align 4
  %274 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %275 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = or i32 %277, %273
  store i32 %278, i32* %276, align 4
  %279 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %280 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %279, i32 0, i32 1
  %281 = call i32 @gfs2_glock_dq(%struct.gfs2_holder* %280)
  br label %282

282:                                              ; preds = %272, %265
  %283 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %284 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %283, i32 0, i32 1
  %285 = call i32 @gfs2_holder_uninit(%struct.gfs2_holder* %284)
  %286 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %6)
  %287 = load i32, i32* %7, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %302

289:                                              ; preds = %282
  %290 = load i32, i32* %7, align 4
  %291 = load i32, i32* @GLR_TRYFAILED, align 4
  %292 = icmp ne i32 %290, %291
  br i1 %292, label %293, label %302

293:                                              ; preds = %289
  %294 = load i32, i32* %7, align 4
  %295 = load i32, i32* @EROFS, align 4
  %296 = sub nsw i32 0, %295
  %297 = icmp ne i32 %294, %296
  br i1 %297, label %298, label %302

298:                                              ; preds = %293
  %299 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %300 = load i32, i32* %7, align 4
  %301 = call i32 @fs_warn(%struct.gfs2_sbd* %299, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %300)
  br label %302

302:                                              ; preds = %298, %293, %289, %282
  br label %303

303:                                              ; preds = %302, %37, %26
  %304 = load %struct.inode*, %struct.inode** %2, align 8
  %305 = getelementptr inbounds %struct.inode, %struct.inode* %304, i32 0, i32 0
  %306 = call i32 @truncate_inode_pages(i32* %305, i32 0)
  %307 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %308 = call i32 @gfs2_rs_delete(%struct.gfs2_inode* %307)
  %309 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %310 = call i32 @gfs2_ordered_del_inode(%struct.gfs2_inode* %309)
  %311 = load %struct.inode*, %struct.inode** %2, align 8
  %312 = call i32 @clear_inode(%struct.inode* %311)
  ret void
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @gfs2_glock_nq_init(%struct.TYPE_9__*, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @gfs2_check_blk_type(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @gfs2_inode_refresh(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_glock_dq_wait(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_holder_reinit(i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_glock_nq(%struct.gfs2_holder*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @gfs2_dir_exhash_dealloc(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_ea_dealloc(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_file_dealloc(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_dinode_dealloc(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @timespec_compare(i32*, %struct.timespec*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @gfs2_trans_add_meta(%struct.TYPE_9__*, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i64) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_log_flush(%struct.gfs2_sbd*, %struct.TYPE_9__*) #1

declare dso_local %struct.address_space* @gfs2_glock2aspace(%struct.TYPE_9__*) #1

declare dso_local i32 @filemap_fdatawrite(%struct.address_space*) #1

declare dso_local i32 @filemap_fdatawait(%struct.address_space*) #1

declare dso_local i32 @write_inode_now(%struct.inode*, i32) #1

declare dso_local i32 @gfs2_ail_flush(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @truncate_inode_pages(i32*, i32) #1

declare dso_local i64 @gfs2_rs_active(i32) #1

declare dso_local i32 @gfs2_rs_deltree(i32) #1

declare dso_local i32 @gfs2_glock_dq(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_holder_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @fs_warn(%struct.gfs2_sbd*, i8*, i32) #1

declare dso_local i32 @gfs2_rs_delete(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_ordered_del_inode(%struct.gfs2_inode*) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

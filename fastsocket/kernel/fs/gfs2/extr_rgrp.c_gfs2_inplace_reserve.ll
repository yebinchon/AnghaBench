; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_inplace_reserve.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_inplace_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, %struct.gfs2_rgrpd*, %struct.TYPE_4__, i32, %struct.gfs2_blkreserv* }
%struct.gfs2_rgrpd = type { i32, i64, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.gfs2_blkreserv = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.gfs2_rgrpd* }
%struct.gfs2_alloc_parms = type { i32, i64 }
%struct.gfs2_sbd = type { i32, i32 }

@LM_FLAG_TRY = common dso_local global i32 0, align 4
@NO_BLOCK = common dso_local global i32 0, align 4
@GFS2_AF_ORLOV = common dso_local global i32 0, align 4
@EBADSLT = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@GLR_TRYFAILED = common dso_local global i32 0, align 4
@GFS2_RGF_NOALLOC = common dso_local global i32 0, align 4
@GFS2_RDF_ERROR = common dso_local global i32 0, align 4
@GFS2_RDF_CHECK = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_inplace_reserve(%struct.gfs2_inode* %0, %struct.gfs2_alloc_parms* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.gfs2_alloc_parms*, align 8
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca %struct.gfs2_rgrpd*, align 8
  %8 = alloca %struct.gfs2_blkreserv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %4, align 8
  store %struct.gfs2_alloc_parms* %1, %struct.gfs2_alloc_parms** %5, align 8
  %15 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %16 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %15, i32 0, i32 2
  %17 = call %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_4__* %16)
  store %struct.gfs2_sbd* %17, %struct.gfs2_sbd** %6, align 8
  store %struct.gfs2_rgrpd* null, %struct.gfs2_rgrpd** %7, align 8
  %18 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %19 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %18, i32 0, i32 4
  %20 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %19, align 8
  store %struct.gfs2_blkreserv* %20, %struct.gfs2_blkreserv** %8, align 8
  %21 = load i32, i32* @LM_FLAG_TRY, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* @NO_BLOCK, align 4
  store i32 %22, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  %23 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %24 = call i64 @gfs2_rs_active(%struct.gfs2_blkreserv* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %28 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %29, align 8
  store %struct.gfs2_rgrpd* %30, %struct.gfs2_rgrpd** %7, align 8
  br label %79

31:                                               ; preds = %2
  %32 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %33 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %32, i32 0, i32 1
  %34 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %33, align 8
  %35 = icmp ne %struct.gfs2_rgrpd* %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %38 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %37, i32 0, i32 1
  %39 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %38, align 8
  %40 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %41 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @rgrp_contains_block(%struct.gfs2_rgrpd* %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %47 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %46, i32 0, i32 1
  %48 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %47, align 8
  store %struct.gfs2_rgrpd* %48, %struct.gfs2_rgrpd** %7, align 8
  %49 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %50 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store %struct.gfs2_rgrpd* %48, %struct.gfs2_rgrpd** %51, align 8
  br label %61

52:                                               ; preds = %36, %31
  %53 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %54 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %55 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd* %53, i32 %56, i32 1)
  store %struct.gfs2_rgrpd* %57, %struct.gfs2_rgrpd** %7, align 8
  %58 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %59 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store %struct.gfs2_rgrpd* %57, %struct.gfs2_rgrpd** %60, align 8
  br label %61

61:                                               ; preds = %52, %45
  %62 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %63 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @S_ISDIR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %61
  %69 = load %struct.gfs2_alloc_parms*, %struct.gfs2_alloc_parms** %5, align 8
  %70 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @GFS2_AF_ORLOV, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %77 = call i64 @gfs2_orlov_skip(%struct.gfs2_inode* %76)
  store i64 %77, i64* %14, align 8
  br label %78

78:                                               ; preds = %75, %68, %61
  br label %79

79:                                               ; preds = %78, %26
  %80 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %81 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %82, align 8
  %84 = icmp eq %struct.gfs2_rgrpd* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* @EBADSLT, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %288

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %284, %251, %247, %88
  %90 = load i32, i32* %13, align 4
  %91 = icmp slt i32 %90, 3
  br i1 %91, label %92, label %285

92:                                               ; preds = %89
  store i32 1, i32* %10, align 4
  %93 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %94 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %95, align 8
  %97 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @gfs2_glock_is_locked_by_me(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %139, label %101

101:                                              ; preds = %92
  store i32 0, i32* %10, align 4
  %102 = load i64, i64* %14, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i64, i64* %14, align 8
  %106 = add nsw i64 %105, -1
  store i64 %106, i64* %14, align 8
  %107 = icmp ne i64 %105, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %240

109:                                              ; preds = %104, %101
  %110 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %111 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %112, align 8
  %114 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %117 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %118 = call i64 @gfs2_rs_active(%struct.gfs2_blkreserv* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %109
  br label %123

121:                                              ; preds = %109
  %122 = load i32, i32* %11, align 4
  br label %123

123:                                              ; preds = %121, %120
  %124 = phi i32 [ 0, %120 ], [ %122, %121 ]
  %125 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %126 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %125, i32 0, i32 1
  %127 = call i32 @gfs2_glock_nq_init(i32 %115, i32 %116, i32 %124, i32* %126)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @GLR_TRYFAILED, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  br label %240

132:                                              ; preds = %123
  %133 = load i32, i32* %9, align 4
  %134 = call i64 @unlikely(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %3, align 4
  br label %288

138:                                              ; preds = %132
  br label %139

139:                                              ; preds = %138, %92
  %140 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %141 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %142, align 8
  %144 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @GFS2_RGF_NOALLOC, align 4
  %147 = load i32, i32* @GFS2_RDF_ERROR, align 4
  %148 = or i32 %146, %147
  %149 = and i32 %145, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %165, label %151

151:                                              ; preds = %139
  %152 = load %struct.gfs2_alloc_parms*, %struct.gfs2_alloc_parms** %5, align 8
  %153 = icmp ne %struct.gfs2_alloc_parms* %152, null
  br i1 %153, label %154, label %166

154:                                              ; preds = %151
  %155 = load %struct.gfs2_alloc_parms*, %struct.gfs2_alloc_parms** %5, align 8
  %156 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %159 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %160, align 8
  %162 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp sgt i64 %157, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %154, %139
  br label %225

166:                                              ; preds = %154, %151
  %167 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %168 = call i64 @gfs2_rs_active(%struct.gfs2_blkreserv* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %178, label %170

170:                                              ; preds = %166
  %171 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %172 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %173, align 8
  %175 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %176 = load %struct.gfs2_alloc_parms*, %struct.gfs2_alloc_parms** %5, align 8
  %177 = call i32 @rg_mblk_search(%struct.gfs2_rgrpd* %174, %struct.gfs2_inode* %175, %struct.gfs2_alloc_parms* %176)
  br label %178

178:                                              ; preds = %170, %166
  %179 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %180 = call i64 @gfs2_rs_active(%struct.gfs2_blkreserv* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %178
  %183 = load i32, i32* %13, align 4
  %184 = icmp slt i32 %183, 1
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  br label %205

186:                                              ; preds = %182, %178
  %187 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %188 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  %190 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %189, align 8
  %191 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.gfs2_alloc_parms*, %struct.gfs2_alloc_parms** %5, align 8
  %194 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp sge i64 %192, %195
  br i1 %196, label %197, label %204

197:                                              ; preds = %186
  %198 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %199 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 0
  %201 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %200, align 8
  %202 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %203 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %202, i32 0, i32 1
  store %struct.gfs2_rgrpd* %201, %struct.gfs2_rgrpd** %203, align 8
  store i32 0, i32* %3, align 4
  br label %288

204:                                              ; preds = %186
  br label %205

205:                                              ; preds = %204, %185
  %206 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %207 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  %209 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %208, align 8
  %210 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @GFS2_RDF_CHECK, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %205
  %216 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %217 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  %219 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %218, align 8
  %220 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %221 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @try_rgrp_unlink(%struct.gfs2_rgrpd* %219, i32* %12, i32 %222)
  br label %224

224:                                              ; preds = %215, %205
  br label %225

225:                                              ; preds = %224, %165
  %226 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %227 = call i64 @gfs2_rs_active(%struct.gfs2_blkreserv* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %225
  %230 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %231 = call i32 @gfs2_rs_deltree(%struct.gfs2_blkreserv* %230)
  br label %232

232:                                              ; preds = %229, %225
  %233 = load i32, i32* %10, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %239, label %235

235:                                              ; preds = %232
  %236 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %237 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %236, i32 0, i32 1
  %238 = call i32 @gfs2_glock_dq_uninit(i32* %237)
  br label %239

239:                                              ; preds = %235, %232
  br label %240

240:                                              ; preds = %239, %131, %108
  %241 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %8, align 8
  %242 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 0
  %244 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %7, align 8
  %245 = call i64 @gfs2_select_rgrp(%struct.gfs2_rgrpd** %243, %struct.gfs2_rgrpd* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %240
  br label %89

248:                                              ; preds = %240
  %249 = load i64, i64* %14, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %248
  br label %89

252:                                              ; preds = %248
  %253 = load i32, i32* @LM_FLAG_TRY, align 4
  %254 = xor i32 %253, -1
  %255 = load i32, i32* %11, align 4
  %256 = and i32 %255, %254
  store i32 %256, i32* %11, align 4
  %257 = load i32, i32* %13, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %13, align 4
  %259 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %260 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %261 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call %struct.gfs2_inode* @GFS2_I(i32 %262)
  %264 = icmp eq %struct.gfs2_inode* %259, %263
  br i1 %264, label %265, label %278

265:                                              ; preds = %252
  %266 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %267 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %278, label %270

270:                                              ; preds = %265
  %271 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %272 = call i32 @gfs2_ri_update(%struct.gfs2_inode* %271)
  store i32 %272, i32* %9, align 4
  %273 = load i32, i32* %9, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %270
  %276 = load i32, i32* %9, align 4
  store i32 %276, i32* %3, align 4
  br label %288

277:                                              ; preds = %270
  br label %278

278:                                              ; preds = %277, %265, %252
  %279 = load i32, i32* %13, align 4
  %280 = icmp eq i32 %279, 2
  br i1 %280, label %281, label %284

281:                                              ; preds = %278
  %282 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %283 = call i32 @gfs2_log_flush(%struct.gfs2_sbd* %282, i32* null)
  br label %284

284:                                              ; preds = %281, %278
  br label %89

285:                                              ; preds = %89
  %286 = load i32, i32* @ENOSPC, align 4
  %287 = sub nsw i32 0, %286
  store i32 %287, i32* %3, align 4
  br label %288

288:                                              ; preds = %285, %275, %197, %136, %85
  %289 = load i32, i32* %3, align 4
  ret i32 %289
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_4__*) #1

declare dso_local i64 @gfs2_rs_active(%struct.gfs2_blkreserv*) #1

declare dso_local i64 @rgrp_contains_block(%struct.gfs2_rgrpd*, i32) #1

declare dso_local %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @gfs2_orlov_skip(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_glock_is_locked_by_me(i32) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rg_mblk_search(%struct.gfs2_rgrpd*, %struct.gfs2_inode*, %struct.gfs2_alloc_parms*) #1

declare dso_local i32 @try_rgrp_unlink(%struct.gfs2_rgrpd*, i32*, i32) #1

declare dso_local i32 @gfs2_rs_deltree(%struct.gfs2_blkreserv*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(i32*) #1

declare dso_local i64 @gfs2_select_rgrp(%struct.gfs2_rgrpd**, %struct.gfs2_rgrpd*) #1

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @gfs2_ri_update(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_log_flush(%struct.gfs2_sbd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

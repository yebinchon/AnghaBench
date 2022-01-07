; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_fsops.c_xfs_growfs_data_private.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_fsops.c_xfs_growfs_data_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_52__ = type { i32, %struct.TYPE_48__, i32, i64 }
%struct.TYPE_48__ = type { i64, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_53__ = type { i64, i32 }
%struct.xfs_btree_block = type { i8*, i8*, %struct.TYPE_50__, i8*, i64, i8*, i8**, i8*, i8*, i64, i8*, i8*, i64, i8*, i8*, i8*, i8*, i8*, i64, i8*, i64, i8**, i8**, i8*, i8*, i8* }
%struct.TYPE_50__ = type { %struct.TYPE_49__ }
%struct.TYPE_49__ = type { i8*, i8* }
%struct.TYPE_54__ = type { i8*, i8* }
%struct.TYPE_51__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@XFS_MIN_AG_BLOCKS = common dso_local global i64 0, align 8
@XFS_TRANS_GROWFS = common dso_local global i32 0, align 4
@XFS_TRANS_RESERVE = common dso_local global i32 0, align 4
@XBF_LOCK = common dso_local global i32 0, align 4
@XBF_MAPPED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XFS_AGF_MAGIC = common dso_local global i64 0, align 8
@XFS_AGF_VERSION = common dso_local global i64 0, align 8
@XFS_BTNUM_BNOi = common dso_local global i64 0, align 8
@XFS_BTNUM_CNTi = common dso_local global i64 0, align 8
@XFS_AGI_MAGIC = common dso_local global i64 0, align 8
@XFS_AGI_VERSION = common dso_local global i64 0, align 8
@NULLAGINO = common dso_local global i64 0, align 8
@XFS_AGI_UNLINKED_BUCKETS = common dso_local global i32 0, align 4
@XFS_ABTB_MAGIC = common dso_local global i64 0, align 8
@NULLAGBLOCK = common dso_local global i64 0, align 8
@XFS_ABTC_MAGIC = common dso_local global i64 0, align 8
@XFS_IBT_MAGIC = common dso_local global i64 0, align 8
@XFS_AGI_LENGTH = common dso_local global i32 0, align 4
@XFS_AGF_LENGTH = common dso_local global i32 0, align 4
@XFS_TRANS_SB_AGCOUNT = common dso_local global i32 0, align 4
@XFS_TRANS_SB_DBLOCKS = common dso_local global i32 0, align 4
@XFS_TRANS_SB_FDBLOCKS = common dso_local global i32 0, align 4
@XFS_TRANS_SB_IMAXPCT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"error %d reading secondary superblock for ag %d\00", align 1
@XFS_SB_ALL_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"write error %d updating secondary superblock for ag %d\00", align 1
@XFS_TRANS_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_52__*, %struct.TYPE_53__*)* @xfs_growfs_data_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_growfs_data_private(%struct.TYPE_52__* %0, %struct.TYPE_53__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_52__*, align 8
  %5 = alloca %struct.TYPE_53__*, align 8
  %6 = alloca %struct.xfs_btree_block*, align 8
  %7 = alloca %struct.xfs_btree_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_54__*, align 8
  %12 = alloca %struct.xfs_btree_block*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_51__*, align 8
  %26 = alloca i64, align 8
  store %struct.TYPE_52__* %0, %struct.TYPE_52__** %4, align 8
  store %struct.TYPE_53__* %1, %struct.TYPE_53__** %5, align 8
  store i32 0, i32* %18, align 4
  %27 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %19, align 8
  %30 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %24, align 4
  %33 = load i64, i64* %19, align 8
  %34 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %33, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %2
  %40 = load i32, i32* %24, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %24, align 4
  %44 = icmp sgt i32 %43, 100
  br i1 %44, label %45, label %48

45:                                               ; preds = %42, %39, %2
  %46 = load i32, i32* @EINVAL, align 4
  %47 = call i32 @XFS_ERROR(i32 %46)
  store i32 %47, i32* %3, align 4
  br label %844

48:                                               ; preds = %42
  %49 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %49, i32 0, i32 1
  %51 = load i64, i64* %19, align 8
  %52 = call i32 @xfs_sb_validate_fsb_count(%struct.TYPE_48__* %50, i64 %51)
  store i32 %52, i32* %16, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %16, align 4
  store i32 %55, i32* %3, align 4
  br label %844

56:                                               ; preds = %48
  %57 = load i32, i32* %24, align 4
  %58 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %57, %61
  store i32 %62, i32* %15, align 4
  %63 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %64 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %68 = load i64, i64* %19, align 8
  %69 = call i64 @XFS_FSB_TO_BB(%struct.TYPE_52__* %67, i64 %68)
  %70 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %71 = call i64 @XFS_FSS_TO_BB(%struct.TYPE_52__* %70, i32 1)
  %72 = sub nsw i64 %69, %71
  %73 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %74 = call i64 @XFS_FSS_TO_BB(%struct.TYPE_52__* %73, i32 1)
  %75 = call i32 @BBTOB(i64 %74)
  %76 = call i32* @xfs_buf_read_uncached(%struct.TYPE_52__* %63, i32 %66, i64 %72, i32 %75, i32 0)
  store i32* %76, i32** %13, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %56
  %80 = load i32, i32* @EIO, align 4
  store i32 %80, i32* %3, align 4
  br label %844

81:                                               ; preds = %56
  %82 = load i32*, i32** %13, align 8
  %83 = call i32 @xfs_buf_relse(i32* %82)
  %84 = load i64, i64* %19, align 8
  store i64 %84, i64* %21, align 8
  %85 = load i64, i64* %21, align 8
  %86 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @do_div(i64 %85, i32 %89)
  store i64 %90, i64* %20, align 8
  %91 = load i64, i64* %21, align 8
  %92 = load i64, i64* %20, align 8
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i32
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %91, %95
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %17, align 4
  %98 = load i64, i64* %20, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %125

100:                                              ; preds = %81
  %101 = load i64, i64* %20, align 8
  %102 = load i64, i64* @XFS_MIN_AG_BLOCKS, align 8
  %103 = icmp slt i64 %101, %102
  br i1 %103, label %104, label %125

104:                                              ; preds = %100
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %17, align 4
  %107 = load i32, i32* %17, align 4
  %108 = sext i32 %107 to i64
  %109 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = mul nsw i64 %108, %113
  store i64 %114, i64* %19, align 8
  %115 = load i64, i64* %19, align 8
  %116 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp slt i64 %115, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %104
  %122 = load i32, i32* @EINVAL, align 4
  %123 = call i32 @XFS_ERROR(i32 %122)
  store i32 %123, i32* %3, align 4
  br label %844

124:                                              ; preds = %104
  br label %125

125:                                              ; preds = %124, %100, %81
  %126 = load i64, i64* %19, align 8
  %127 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 %126, %130
  store i64 %131, i64* %21, align 8
  %132 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* %23, align 4
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* %23, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %125
  %140 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %141 = load i32, i32* %17, align 4
  %142 = call i32 @xfs_initialize_perag(%struct.TYPE_52__* %140, i32 %141, i32* %18)
  store i32 %142, i32* %16, align 4
  %143 = load i32, i32* %16, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = load i32, i32* %16, align 4
  store i32 %146, i32* %3, align 4
  br label %844

147:                                              ; preds = %139
  br label %148

148:                                              ; preds = %147, %125
  %149 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %150 = load i32, i32* @XFS_TRANS_GROWFS, align 4
  %151 = call %struct.TYPE_51__* @xfs_trans_alloc(%struct.TYPE_52__* %149, i32 %150)
  store %struct.TYPE_51__* %151, %struct.TYPE_51__** %25, align 8
  %152 = load i32, i32* @XFS_TRANS_RESERVE, align 4
  %153 = load %struct.TYPE_51__*, %struct.TYPE_51__** %25, align 8
  %154 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 4
  %157 = load %struct.TYPE_51__*, %struct.TYPE_51__** %25, align 8
  %158 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %159 = call i32 @XFS_GROWFS_SPACE_RES(%struct.TYPE_52__* %158)
  %160 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %161 = call i32 @XFS_GROWDATA_LOG_RES(%struct.TYPE_52__* %160)
  %162 = call i32 @xfs_trans_reserve(%struct.TYPE_51__* %157, i32 %159, i32 %161, i32 0, i32 0, i32 0)
  store i32 %162, i32* %16, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %148
  %165 = load %struct.TYPE_51__*, %struct.TYPE_51__** %25, align 8
  %166 = call i32 @xfs_trans_cancel(%struct.TYPE_51__* %165, i32 0)
  %167 = load i32, i32* %16, align 4
  store i32 %167, i32* %3, align 4
  br label %844

168:                                              ; preds = %148
  store i64 0, i64* %22, align 8
  %169 = load i32, i32* %17, align 4
  %170 = sub nsw i32 %169, 1
  store i32 %170, i32* %8, align 4
  br label %171

171:                                              ; preds = %601, %168
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* %23, align 4
  %174 = icmp sge i32 %172, %173
  br i1 %174, label %175, label %607

175:                                              ; preds = %171
  %176 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %180 = load i32, i32* %8, align 4
  %181 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %182 = call i32 @XFS_AGF_DADDR(%struct.TYPE_52__* %181)
  %183 = call i32 @XFS_AG_DADDR(%struct.TYPE_52__* %179, i32 %180, i32 %182)
  %184 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %185 = call i64 @XFS_FSS_TO_BB(%struct.TYPE_52__* %184, i32 1)
  %186 = load i32, i32* @XBF_LOCK, align 4
  %187 = load i32, i32* @XBF_MAPPED, align 4
  %188 = or i32 %186, %187
  %189 = call i32* @xfs_buf_get(i32 %178, i32 %183, i64 %185, i32 %188)
  store i32* %189, i32** %13, align 8
  %190 = load i32*, i32** %13, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %194, label %192

192:                                              ; preds = %175
  %193 = load i32, i32* @ENOMEM, align 4
  store i32 %193, i32* %16, align 4
  br label %839

194:                                              ; preds = %175
  %195 = load i32*, i32** %13, align 8
  %196 = call %struct.xfs_btree_block* @XFS_BUF_TO_AGF(i32* %195)
  store %struct.xfs_btree_block* %196, %struct.xfs_btree_block** %6, align 8
  %197 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %6, align 8
  %198 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @memset(%struct.xfs_btree_block* %197, i32 0, i32 %201)
  %203 = load i64, i64* @XFS_AGF_MAGIC, align 8
  %204 = call i8* @cpu_to_be32(i64 %203)
  %205 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %6, align 8
  %206 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %205, i32 0, i32 25
  store i8* %204, i8** %206, align 8
  %207 = load i64, i64* @XFS_AGF_VERSION, align 8
  %208 = call i8* @cpu_to_be32(i64 %207)
  %209 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %6, align 8
  %210 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %209, i32 0, i32 24
  store i8* %208, i8** %210, align 8
  %211 = load i32, i32* %8, align 4
  %212 = sext i32 %211 to i64
  %213 = call i8* @cpu_to_be32(i64 %212)
  %214 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %6, align 8
  %215 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %214, i32 0, i32 23
  store i8* %213, i8** %215, align 8
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* %17, align 4
  %218 = sub nsw i32 %217, 1
  %219 = icmp eq i32 %216, %218
  br i1 %219, label %220, label %231

220:                                              ; preds = %194
  %221 = load i64, i64* %19, align 8
  %222 = load i32, i32* %8, align 4
  %223 = sext i32 %222 to i64
  %224 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  %229 = mul nsw i64 %223, %228
  %230 = sub nsw i64 %221, %229
  store i64 %230, i64* %9, align 8
  br label %237

231:                                              ; preds = %194
  %232 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  store i64 %236, i64* %9, align 8
  br label %237

237:                                              ; preds = %231, %220
  %238 = load i64, i64* %9, align 8
  %239 = call i8* @cpu_to_be32(i64 %238)
  %240 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %6, align 8
  %241 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %240, i32 0, i32 0
  store i8* %239, i8** %241, align 8
  %242 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %243 = call i64 @XFS_BNO_BLOCK(%struct.TYPE_52__* %242)
  %244 = call i8* @cpu_to_be32(i64 %243)
  %245 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %6, align 8
  %246 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %245, i32 0, i32 22
  %247 = load i8**, i8*** %246, align 8
  %248 = load i64, i64* @XFS_BTNUM_BNOi, align 8
  %249 = getelementptr inbounds i8*, i8** %247, i64 %248
  store i8* %244, i8** %249, align 8
  %250 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %251 = call i64 @XFS_CNT_BLOCK(%struct.TYPE_52__* %250)
  %252 = call i8* @cpu_to_be32(i64 %251)
  %253 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %6, align 8
  %254 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %253, i32 0, i32 22
  %255 = load i8**, i8*** %254, align 8
  %256 = load i64, i64* @XFS_BTNUM_CNTi, align 8
  %257 = getelementptr inbounds i8*, i8** %255, i64 %256
  store i8* %252, i8** %257, align 8
  %258 = call i8* @cpu_to_be32(i64 1)
  %259 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %6, align 8
  %260 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %259, i32 0, i32 21
  %261 = load i8**, i8*** %260, align 8
  %262 = load i64, i64* @XFS_BTNUM_BNOi, align 8
  %263 = getelementptr inbounds i8*, i8** %261, i64 %262
  store i8* %258, i8** %263, align 8
  %264 = call i8* @cpu_to_be32(i64 1)
  %265 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %6, align 8
  %266 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %265, i32 0, i32 21
  %267 = load i8**, i8*** %266, align 8
  %268 = load i64, i64* @XFS_BTNUM_CNTi, align 8
  %269 = getelementptr inbounds i8*, i8** %267, i64 %268
  store i8* %264, i8** %269, align 8
  %270 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %6, align 8
  %271 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %270, i32 0, i32 20
  store i64 0, i64* %271, align 8
  %272 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %273 = call i32 @XFS_AGFL_SIZE(%struct.TYPE_52__* %272)
  %274 = sub nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = call i8* @cpu_to_be32(i64 %275)
  %277 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %6, align 8
  %278 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %277, i32 0, i32 19
  store i8* %276, i8** %278, align 8
  %279 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %6, align 8
  %280 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %279, i32 0, i32 18
  store i64 0, i64* %280, align 8
  %281 = load i64, i64* %9, align 8
  %282 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %283 = call i64 @XFS_PREALLOC_BLOCKS(%struct.TYPE_52__* %282)
  %284 = sub nsw i64 %281, %283
  store i64 %284, i64* %10, align 8
  %285 = load i64, i64* %10, align 8
  %286 = call i8* @cpu_to_be32(i64 %285)
  %287 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %6, align 8
  %288 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %287, i32 0, i32 17
  store i8* %286, i8** %288, align 8
  %289 = load i64, i64* %10, align 8
  %290 = call i8* @cpu_to_be32(i64 %289)
  %291 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %6, align 8
  %292 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %291, i32 0, i32 16
  store i8* %290, i8** %292, align 8
  %293 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %294 = load i32*, i32** %13, align 8
  %295 = call i32 @xfs_bwrite(%struct.TYPE_52__* %293, i32* %294)
  store i32 %295, i32* %16, align 4
  %296 = load i32, i32* %16, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %237
  br label %839

299:                                              ; preds = %237
  %300 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %304 = load i32, i32* %8, align 4
  %305 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %306 = call i32 @XFS_AGI_DADDR(%struct.TYPE_52__* %305)
  %307 = call i32 @XFS_AG_DADDR(%struct.TYPE_52__* %303, i32 %304, i32 %306)
  %308 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %309 = call i64 @XFS_FSS_TO_BB(%struct.TYPE_52__* %308, i32 1)
  %310 = load i32, i32* @XBF_LOCK, align 4
  %311 = load i32, i32* @XBF_MAPPED, align 4
  %312 = or i32 %310, %311
  %313 = call i32* @xfs_buf_get(i32 %302, i32 %307, i64 %309, i32 %312)
  store i32* %313, i32** %13, align 8
  %314 = load i32*, i32** %13, align 8
  %315 = icmp ne i32* %314, null
  br i1 %315, label %318, label %316

316:                                              ; preds = %299
  %317 = load i32, i32* @ENOMEM, align 4
  store i32 %317, i32* %16, align 4
  br label %839

318:                                              ; preds = %299
  %319 = load i32*, i32** %13, align 8
  %320 = call %struct.xfs_btree_block* @XFS_BUF_TO_AGI(i32* %319)
  store %struct.xfs_btree_block* %320, %struct.xfs_btree_block** %7, align 8
  %321 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %322 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %323, i32 0, i32 6
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @memset(%struct.xfs_btree_block* %321, i32 0, i32 %325)
  %327 = load i64, i64* @XFS_AGI_MAGIC, align 8
  %328 = call i8* @cpu_to_be32(i64 %327)
  %329 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %330 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %329, i32 0, i32 15
  store i8* %328, i8** %330, align 8
  %331 = load i64, i64* @XFS_AGI_VERSION, align 8
  %332 = call i8* @cpu_to_be32(i64 %331)
  %333 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %334 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %333, i32 0, i32 14
  store i8* %332, i8** %334, align 8
  %335 = load i32, i32* %8, align 4
  %336 = sext i32 %335 to i64
  %337 = call i8* @cpu_to_be32(i64 %336)
  %338 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %339 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %338, i32 0, i32 13
  store i8* %337, i8** %339, align 8
  %340 = load i64, i64* %9, align 8
  %341 = call i8* @cpu_to_be32(i64 %340)
  %342 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %343 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %342, i32 0, i32 1
  store i8* %341, i8** %343, align 8
  %344 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %345 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %344, i32 0, i32 12
  store i64 0, i64* %345, align 8
  %346 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %347 = call i64 @XFS_IBT_BLOCK(%struct.TYPE_52__* %346)
  %348 = call i8* @cpu_to_be32(i64 %347)
  %349 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %350 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %349, i32 0, i32 11
  store i8* %348, i8** %350, align 8
  %351 = call i8* @cpu_to_be32(i64 1)
  %352 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %353 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %352, i32 0, i32 10
  store i8* %351, i8** %353, align 8
  %354 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %355 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %354, i32 0, i32 9
  store i64 0, i64* %355, align 8
  %356 = load i64, i64* @NULLAGINO, align 8
  %357 = call i8* @cpu_to_be32(i64 %356)
  %358 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %359 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %358, i32 0, i32 8
  store i8* %357, i8** %359, align 8
  %360 = load i64, i64* @NULLAGINO, align 8
  %361 = call i8* @cpu_to_be32(i64 %360)
  %362 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %363 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %362, i32 0, i32 7
  store i8* %361, i8** %363, align 8
  store i32 0, i32* %14, align 4
  br label %364

364:                                              ; preds = %377, %318
  %365 = load i32, i32* %14, align 4
  %366 = load i32, i32* @XFS_AGI_UNLINKED_BUCKETS, align 4
  %367 = icmp slt i32 %365, %366
  br i1 %367, label %368, label %380

368:                                              ; preds = %364
  %369 = load i64, i64* @NULLAGINO, align 8
  %370 = call i8* @cpu_to_be32(i64 %369)
  %371 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %372 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %371, i32 0, i32 6
  %373 = load i8**, i8*** %372, align 8
  %374 = load i32, i32* %14, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i8*, i8** %373, i64 %375
  store i8* %370, i8** %376, align 8
  br label %377

377:                                              ; preds = %368
  %378 = load i32, i32* %14, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %14, align 4
  br label %364

380:                                              ; preds = %364
  %381 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %382 = load i32*, i32** %13, align 8
  %383 = call i32 @xfs_bwrite(%struct.TYPE_52__* %381, i32* %382)
  store i32 %383, i32* %16, align 4
  %384 = load i32, i32* %16, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %387

386:                                              ; preds = %380
  br label %839

387:                                              ; preds = %380
  %388 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %389 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 8
  %391 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %392 = load i32, i32* %8, align 4
  %393 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %394 = call i64 @XFS_BNO_BLOCK(%struct.TYPE_52__* %393)
  %395 = call i32 @XFS_AGB_TO_DADDR(%struct.TYPE_52__* %391, i32 %392, i64 %394)
  %396 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %397 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %397, i32 0, i32 5
  %399 = load i32, i32* %398, align 8
  %400 = call i64 @BTOBB(i32 %399)
  %401 = load i32, i32* @XBF_LOCK, align 4
  %402 = load i32, i32* @XBF_MAPPED, align 4
  %403 = or i32 %401, %402
  %404 = call i32* @xfs_buf_get(i32 %390, i32 %395, i64 %400, i32 %403)
  store i32* %404, i32** %13, align 8
  %405 = load i32*, i32** %13, align 8
  %406 = icmp ne i32* %405, null
  br i1 %406, label %409, label %407

407:                                              ; preds = %387
  %408 = load i32, i32* @ENOMEM, align 4
  store i32 %408, i32* %16, align 4
  br label %839

409:                                              ; preds = %387
  %410 = load i32*, i32** %13, align 8
  %411 = call %struct.xfs_btree_block* @XFS_BUF_TO_BLOCK(i32* %410)
  store %struct.xfs_btree_block* %411, %struct.xfs_btree_block** %12, align 8
  %412 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %12, align 8
  %413 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %414 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %413, i32 0, i32 1
  %415 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %414, i32 0, i32 5
  %416 = load i32, i32* %415, align 8
  %417 = call i32 @memset(%struct.xfs_btree_block* %412, i32 0, i32 %416)
  %418 = load i64, i64* @XFS_ABTB_MAGIC, align 8
  %419 = call i8* @cpu_to_be32(i64 %418)
  %420 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %12, align 8
  %421 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %420, i32 0, i32 5
  store i8* %419, i8** %421, align 8
  %422 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %12, align 8
  %423 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %422, i32 0, i32 4
  store i64 0, i64* %423, align 8
  %424 = call i8* @cpu_to_be16(i32 1)
  %425 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %12, align 8
  %426 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %425, i32 0, i32 3
  store i8* %424, i8** %426, align 8
  %427 = load i64, i64* @NULLAGBLOCK, align 8
  %428 = call i8* @cpu_to_be32(i64 %427)
  %429 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %12, align 8
  %430 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %429, i32 0, i32 2
  %431 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %431, i32 0, i32 1
  store i8* %428, i8** %432, align 8
  %433 = load i64, i64* @NULLAGBLOCK, align 8
  %434 = call i8* @cpu_to_be32(i64 %433)
  %435 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %12, align 8
  %436 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %435, i32 0, i32 2
  %437 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %436, i32 0, i32 0
  %438 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %437, i32 0, i32 0
  store i8* %434, i8** %438, align 8
  %439 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %440 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %12, align 8
  %441 = call %struct.TYPE_54__* @XFS_ALLOC_REC_ADDR(%struct.TYPE_52__* %439, %struct.xfs_btree_block* %440, i32 1)
  store %struct.TYPE_54__* %441, %struct.TYPE_54__** %11, align 8
  %442 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %443 = call i64 @XFS_PREALLOC_BLOCKS(%struct.TYPE_52__* %442)
  %444 = call i8* @cpu_to_be32(i64 %443)
  %445 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %446 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %445, i32 0, i32 1
  store i8* %444, i8** %446, align 8
  %447 = load i64, i64* %9, align 8
  %448 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %449 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %448, i32 0, i32 1
  %450 = load i8*, i8** %449, align 8
  %451 = call i64 @be32_to_cpu(i8* %450)
  %452 = sub nsw i64 %447, %451
  %453 = call i8* @cpu_to_be32(i64 %452)
  %454 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %455 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %454, i32 0, i32 0
  store i8* %453, i8** %455, align 8
  %456 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %457 = load i32*, i32** %13, align 8
  %458 = call i32 @xfs_bwrite(%struct.TYPE_52__* %456, i32* %457)
  store i32 %458, i32* %16, align 4
  %459 = load i32, i32* %16, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %462

461:                                              ; preds = %409
  br label %839

462:                                              ; preds = %409
  %463 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %464 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %463, i32 0, i32 2
  %465 = load i32, i32* %464, align 8
  %466 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %467 = load i32, i32* %8, align 4
  %468 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %469 = call i64 @XFS_CNT_BLOCK(%struct.TYPE_52__* %468)
  %470 = call i32 @XFS_AGB_TO_DADDR(%struct.TYPE_52__* %466, i32 %467, i64 %469)
  %471 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %472 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %471, i32 0, i32 1
  %473 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %472, i32 0, i32 5
  %474 = load i32, i32* %473, align 8
  %475 = call i64 @BTOBB(i32 %474)
  %476 = load i32, i32* @XBF_LOCK, align 4
  %477 = load i32, i32* @XBF_MAPPED, align 4
  %478 = or i32 %476, %477
  %479 = call i32* @xfs_buf_get(i32 %465, i32 %470, i64 %475, i32 %478)
  store i32* %479, i32** %13, align 8
  %480 = load i32*, i32** %13, align 8
  %481 = icmp ne i32* %480, null
  br i1 %481, label %484, label %482

482:                                              ; preds = %462
  %483 = load i32, i32* @ENOMEM, align 4
  store i32 %483, i32* %16, align 4
  br label %839

484:                                              ; preds = %462
  %485 = load i32*, i32** %13, align 8
  %486 = call %struct.xfs_btree_block* @XFS_BUF_TO_BLOCK(i32* %485)
  store %struct.xfs_btree_block* %486, %struct.xfs_btree_block** %12, align 8
  %487 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %12, align 8
  %488 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %489 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %488, i32 0, i32 1
  %490 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %489, i32 0, i32 5
  %491 = load i32, i32* %490, align 8
  %492 = call i32 @memset(%struct.xfs_btree_block* %487, i32 0, i32 %491)
  %493 = load i64, i64* @XFS_ABTC_MAGIC, align 8
  %494 = call i8* @cpu_to_be32(i64 %493)
  %495 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %12, align 8
  %496 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %495, i32 0, i32 5
  store i8* %494, i8** %496, align 8
  %497 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %12, align 8
  %498 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %497, i32 0, i32 4
  store i64 0, i64* %498, align 8
  %499 = call i8* @cpu_to_be16(i32 1)
  %500 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %12, align 8
  %501 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %500, i32 0, i32 3
  store i8* %499, i8** %501, align 8
  %502 = load i64, i64* @NULLAGBLOCK, align 8
  %503 = call i8* @cpu_to_be32(i64 %502)
  %504 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %12, align 8
  %505 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %504, i32 0, i32 2
  %506 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %505, i32 0, i32 0
  %507 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %506, i32 0, i32 1
  store i8* %503, i8** %507, align 8
  %508 = load i64, i64* @NULLAGBLOCK, align 8
  %509 = call i8* @cpu_to_be32(i64 %508)
  %510 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %12, align 8
  %511 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %510, i32 0, i32 2
  %512 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %511, i32 0, i32 0
  %513 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %512, i32 0, i32 0
  store i8* %509, i8** %513, align 8
  %514 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %515 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %12, align 8
  %516 = call %struct.TYPE_54__* @XFS_ALLOC_REC_ADDR(%struct.TYPE_52__* %514, %struct.xfs_btree_block* %515, i32 1)
  store %struct.TYPE_54__* %516, %struct.TYPE_54__** %11, align 8
  %517 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %518 = call i64 @XFS_PREALLOC_BLOCKS(%struct.TYPE_52__* %517)
  %519 = call i8* @cpu_to_be32(i64 %518)
  %520 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %521 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %520, i32 0, i32 1
  store i8* %519, i8** %521, align 8
  %522 = load i64, i64* %9, align 8
  %523 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %524 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %523, i32 0, i32 1
  %525 = load i8*, i8** %524, align 8
  %526 = call i64 @be32_to_cpu(i8* %525)
  %527 = sub nsw i64 %522, %526
  %528 = call i8* @cpu_to_be32(i64 %527)
  %529 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %530 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %529, i32 0, i32 0
  store i8* %528, i8** %530, align 8
  %531 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %532 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %531, i32 0, i32 0
  %533 = load i8*, i8** %532, align 8
  %534 = call i64 @be32_to_cpu(i8* %533)
  %535 = load i64, i64* %22, align 8
  %536 = add nsw i64 %535, %534
  store i64 %536, i64* %22, align 8
  %537 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %538 = load i32*, i32** %13, align 8
  %539 = call i32 @xfs_bwrite(%struct.TYPE_52__* %537, i32* %538)
  store i32 %539, i32* %16, align 4
  %540 = load i32, i32* %16, align 4
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %542, label %543

542:                                              ; preds = %484
  br label %839

543:                                              ; preds = %484
  %544 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %545 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %544, i32 0, i32 2
  %546 = load i32, i32* %545, align 8
  %547 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %548 = load i32, i32* %8, align 4
  %549 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %550 = call i64 @XFS_IBT_BLOCK(%struct.TYPE_52__* %549)
  %551 = call i32 @XFS_AGB_TO_DADDR(%struct.TYPE_52__* %547, i32 %548, i64 %550)
  %552 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %553 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %552, i32 0, i32 1
  %554 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %553, i32 0, i32 5
  %555 = load i32, i32* %554, align 8
  %556 = call i64 @BTOBB(i32 %555)
  %557 = load i32, i32* @XBF_LOCK, align 4
  %558 = load i32, i32* @XBF_MAPPED, align 4
  %559 = or i32 %557, %558
  %560 = call i32* @xfs_buf_get(i32 %546, i32 %551, i64 %556, i32 %559)
  store i32* %560, i32** %13, align 8
  %561 = load i32*, i32** %13, align 8
  %562 = icmp ne i32* %561, null
  br i1 %562, label %565, label %563

563:                                              ; preds = %543
  %564 = load i32, i32* @ENOMEM, align 4
  store i32 %564, i32* %16, align 4
  br label %839

565:                                              ; preds = %543
  %566 = load i32*, i32** %13, align 8
  %567 = call %struct.xfs_btree_block* @XFS_BUF_TO_BLOCK(i32* %566)
  store %struct.xfs_btree_block* %567, %struct.xfs_btree_block** %12, align 8
  %568 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %12, align 8
  %569 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %570 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %569, i32 0, i32 1
  %571 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %570, i32 0, i32 5
  %572 = load i32, i32* %571, align 8
  %573 = call i32 @memset(%struct.xfs_btree_block* %568, i32 0, i32 %572)
  %574 = load i64, i64* @XFS_IBT_MAGIC, align 8
  %575 = call i8* @cpu_to_be32(i64 %574)
  %576 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %12, align 8
  %577 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %576, i32 0, i32 5
  store i8* %575, i8** %577, align 8
  %578 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %12, align 8
  %579 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %578, i32 0, i32 4
  store i64 0, i64* %579, align 8
  %580 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %12, align 8
  %581 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %580, i32 0, i32 3
  store i8* null, i8** %581, align 8
  %582 = load i64, i64* @NULLAGBLOCK, align 8
  %583 = call i8* @cpu_to_be32(i64 %582)
  %584 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %12, align 8
  %585 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %584, i32 0, i32 2
  %586 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %585, i32 0, i32 0
  %587 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %586, i32 0, i32 1
  store i8* %583, i8** %587, align 8
  %588 = load i64, i64* @NULLAGBLOCK, align 8
  %589 = call i8* @cpu_to_be32(i64 %588)
  %590 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %12, align 8
  %591 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %590, i32 0, i32 2
  %592 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %591, i32 0, i32 0
  %593 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %592, i32 0, i32 0
  store i8* %589, i8** %593, align 8
  %594 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %595 = load i32*, i32** %13, align 8
  %596 = call i32 @xfs_bwrite(%struct.TYPE_52__* %594, i32* %595)
  store i32 %596, i32* %16, align 4
  %597 = load i32, i32* %16, align 4
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %599, label %600

599:                                              ; preds = %565
  br label %839

600:                                              ; preds = %565
  br label %601

601:                                              ; preds = %600
  %602 = load i32, i32* %8, align 4
  %603 = add nsw i32 %602, -1
  store i32 %603, i32* %8, align 4
  %604 = load i64, i64* %9, align 8
  %605 = load i64, i64* %21, align 8
  %606 = sub nsw i64 %605, %604
  store i64 %606, i64* %21, align 8
  br label %171

607:                                              ; preds = %171
  %608 = load %struct.TYPE_51__*, %struct.TYPE_51__** %25, align 8
  %609 = load i64, i64* %22, align 8
  %610 = call i32 @xfs_trans_agblocks_delta(%struct.TYPE_51__* %608, i64 %609)
  %611 = load i64, i64* %21, align 8
  %612 = icmp ne i64 %611, 0
  br i1 %612, label %613, label %701

613:                                              ; preds = %607
  %614 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %615 = load %struct.TYPE_51__*, %struct.TYPE_51__** %25, align 8
  %616 = load i32, i32* %8, align 4
  %617 = call i32 @xfs_ialloc_read_agi(%struct.TYPE_52__* %614, %struct.TYPE_51__* %615, i32 %616, i32** %13)
  store i32 %617, i32* %16, align 4
  %618 = load i32, i32* %16, align 4
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %620, label %621

620:                                              ; preds = %613
  br label %839

621:                                              ; preds = %613
  %622 = load i32*, i32** %13, align 8
  %623 = ptrtoint i32* %622 to i32
  %624 = call i32 @ASSERT(i32 %623)
  %625 = load i32*, i32** %13, align 8
  %626 = call %struct.xfs_btree_block* @XFS_BUF_TO_AGI(i32* %625)
  store %struct.xfs_btree_block* %626, %struct.xfs_btree_block** %7, align 8
  %627 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %628 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %627, i32 0, i32 1
  %629 = load i64, i64* %21, align 8
  %630 = call i32 @be32_add_cpu(i8** %628, i64 %629)
  %631 = load i32, i32* %17, align 4
  %632 = load i32, i32* %23, align 4
  %633 = icmp eq i32 %631, %632
  br i1 %633, label %645, label %634

634:                                              ; preds = %621
  %635 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %636 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %635, i32 0, i32 1
  %637 = load i8*, i8** %636, align 8
  %638 = call i64 @be32_to_cpu(i8* %637)
  %639 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %640 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %639, i32 0, i32 1
  %641 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %640, i32 0, i32 2
  %642 = load i32, i32* %641, align 4
  %643 = sext i32 %642 to i64
  %644 = icmp eq i64 %638, %643
  br label %645

645:                                              ; preds = %634, %621
  %646 = phi i1 [ true, %621 ], [ %644, %634 ]
  %647 = zext i1 %646 to i32
  %648 = call i32 @ASSERT(i32 %647)
  %649 = load %struct.TYPE_51__*, %struct.TYPE_51__** %25, align 8
  %650 = load i32*, i32** %13, align 8
  %651 = load i32, i32* @XFS_AGI_LENGTH, align 4
  %652 = call i32 @xfs_ialloc_log_agi(%struct.TYPE_51__* %649, i32* %650, i32 %651)
  %653 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %654 = load %struct.TYPE_51__*, %struct.TYPE_51__** %25, align 8
  %655 = load i32, i32* %8, align 4
  %656 = call i32 @xfs_alloc_read_agf(%struct.TYPE_52__* %653, %struct.TYPE_51__* %654, i32 %655, i32 0, i32** %13)
  store i32 %656, i32* %16, align 4
  %657 = load i32, i32* %16, align 4
  %658 = icmp ne i32 %657, 0
  br i1 %658, label %659, label %660

659:                                              ; preds = %645
  br label %839

660:                                              ; preds = %645
  %661 = load i32*, i32** %13, align 8
  %662 = ptrtoint i32* %661 to i32
  %663 = call i32 @ASSERT(i32 %662)
  %664 = load i32*, i32** %13, align 8
  %665 = call %struct.xfs_btree_block* @XFS_BUF_TO_AGF(i32* %664)
  store %struct.xfs_btree_block* %665, %struct.xfs_btree_block** %6, align 8
  %666 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %6, align 8
  %667 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %666, i32 0, i32 0
  %668 = load i64, i64* %21, align 8
  %669 = call i32 @be32_add_cpu(i8** %667, i64 %668)
  %670 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %6, align 8
  %671 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %670, i32 0, i32 0
  %672 = load i8*, i8** %671, align 8
  %673 = call i64 @be32_to_cpu(i8* %672)
  %674 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %675 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %674, i32 0, i32 1
  %676 = load i8*, i8** %675, align 8
  %677 = call i64 @be32_to_cpu(i8* %676)
  %678 = icmp eq i64 %673, %677
  %679 = zext i1 %678 to i32
  %680 = call i32 @ASSERT(i32 %679)
  %681 = load %struct.TYPE_51__*, %struct.TYPE_51__** %25, align 8
  %682 = load i32*, i32** %13, align 8
  %683 = load i32, i32* @XFS_AGF_LENGTH, align 4
  %684 = call i32 @xfs_alloc_log_agf(%struct.TYPE_51__* %681, i32* %682, i32 %683)
  %685 = load %struct.TYPE_51__*, %struct.TYPE_51__** %25, align 8
  %686 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %687 = load i32, i32* %8, align 4
  %688 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %6, align 8
  %689 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %688, i32 0, i32 0
  %690 = load i8*, i8** %689, align 8
  %691 = call i64 @be32_to_cpu(i8* %690)
  %692 = load i64, i64* %21, align 8
  %693 = sub nsw i64 %691, %692
  %694 = call i32 @XFS_AGB_TO_FSB(%struct.TYPE_52__* %686, i32 %687, i64 %693)
  %695 = load i64, i64* %21, align 8
  %696 = call i32 @xfs_free_extent(%struct.TYPE_51__* %685, i32 %694, i64 %695)
  store i32 %696, i32* %16, align 4
  %697 = load i32, i32* %16, align 4
  %698 = icmp ne i32 %697, 0
  br i1 %698, label %699, label %700

699:                                              ; preds = %660
  br label %839

700:                                              ; preds = %660
  br label %701

701:                                              ; preds = %700, %607
  %702 = load i32, i32* %17, align 4
  %703 = load i32, i32* %23, align 4
  %704 = icmp sgt i32 %702, %703
  br i1 %704, label %705, label %712

705:                                              ; preds = %701
  %706 = load %struct.TYPE_51__*, %struct.TYPE_51__** %25, align 8
  %707 = load i32, i32* @XFS_TRANS_SB_AGCOUNT, align 4
  %708 = load i32, i32* %17, align 4
  %709 = load i32, i32* %23, align 4
  %710 = sub nsw i32 %708, %709
  %711 = call i32 @xfs_trans_mod_sb(%struct.TYPE_51__* %706, i32 %707, i32 %710)
  br label %712

712:                                              ; preds = %705, %701
  %713 = load i64, i64* %19, align 8
  %714 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %715 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %714, i32 0, i32 1
  %716 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %715, i32 0, i32 0
  %717 = load i64, i64* %716, align 8
  %718 = icmp sgt i64 %713, %717
  br i1 %718, label %719, label %730

719:                                              ; preds = %712
  %720 = load %struct.TYPE_51__*, %struct.TYPE_51__** %25, align 8
  %721 = load i32, i32* @XFS_TRANS_SB_DBLOCKS, align 4
  %722 = load i64, i64* %19, align 8
  %723 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %724 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %723, i32 0, i32 1
  %725 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %724, i32 0, i32 0
  %726 = load i64, i64* %725, align 8
  %727 = sub nsw i64 %722, %726
  %728 = trunc i64 %727 to i32
  %729 = call i32 @xfs_trans_mod_sb(%struct.TYPE_51__* %720, i32 %721, i32 %728)
  br label %730

730:                                              ; preds = %719, %712
  %731 = load i64, i64* %22, align 8
  %732 = icmp ne i64 %731, 0
  br i1 %732, label %733, label %739

733:                                              ; preds = %730
  %734 = load %struct.TYPE_51__*, %struct.TYPE_51__** %25, align 8
  %735 = load i32, i32* @XFS_TRANS_SB_FDBLOCKS, align 4
  %736 = load i64, i64* %22, align 8
  %737 = trunc i64 %736 to i32
  %738 = call i32 @xfs_trans_mod_sb(%struct.TYPE_51__* %734, i32 %735, i32 %737)
  br label %739

739:                                              ; preds = %733, %730
  %740 = load i32, i32* %15, align 4
  %741 = icmp ne i32 %740, 0
  br i1 %741, label %742, label %747

742:                                              ; preds = %739
  %743 = load %struct.TYPE_51__*, %struct.TYPE_51__** %25, align 8
  %744 = load i32, i32* @XFS_TRANS_SB_IMAXPCT, align 4
  %745 = load i32, i32* %15, align 4
  %746 = call i32 @xfs_trans_mod_sb(%struct.TYPE_51__* %743, i32 %744, i32 %745)
  br label %747

747:                                              ; preds = %742, %739
  %748 = load %struct.TYPE_51__*, %struct.TYPE_51__** %25, align 8
  %749 = call i32 @xfs_trans_commit(%struct.TYPE_51__* %748, i32 0)
  store i32 %749, i32* %16, align 4
  %750 = load i32, i32* %16, align 4
  %751 = icmp ne i32 %750, 0
  br i1 %751, label %752, label %754

752:                                              ; preds = %747
  %753 = load i32, i32* %16, align 4
  store i32 %753, i32* %3, align 4
  br label %844

754:                                              ; preds = %747
  %755 = load i32, i32* %18, align 4
  %756 = icmp ne i32 %755, 0
  br i1 %756, label %757, label %761

757:                                              ; preds = %754
  %758 = load i32, i32* %18, align 4
  %759 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %760 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %759, i32 0, i32 0
  store i32 %758, i32* %760, align 8
  br label %761

761:                                              ; preds = %757, %754
  %762 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %763 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %762, i32 0, i32 1
  %764 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %763, i32 0, i32 1
  %765 = load i32, i32* %764, align 8
  %766 = icmp ne i32 %765, 0
  br i1 %766, label %767, label %788

767:                                              ; preds = %761
  %768 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %769 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %768, i32 0, i32 1
  %770 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %769, i32 0, i32 0
  %771 = load i64, i64* %770, align 8
  %772 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %773 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %772, i32 0, i32 1
  %774 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %773, i32 0, i32 1
  %775 = load i32, i32* %774, align 8
  %776 = sext i32 %775 to i64
  %777 = mul nsw i64 %771, %776
  store i64 %777, i64* %26, align 8
  %778 = load i64, i64* %26, align 8
  %779 = call i64 @do_div(i64 %778, i32 100)
  %780 = load i64, i64* %26, align 8
  %781 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %782 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %781, i32 0, i32 1
  %783 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %782, i32 0, i32 4
  %784 = load i64, i64* %783, align 8
  %785 = shl i64 %780, %784
  %786 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %787 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %786, i32 0, i32 3
  store i64 %785, i64* %787, align 8
  br label %791

788:                                              ; preds = %761
  %789 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %790 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %789, i32 0, i32 3
  store i64 0, i64* %790, align 8
  br label %791

791:                                              ; preds = %788, %767
  %792 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %793 = call i32 @xfs_set_low_space_thresholds(%struct.TYPE_52__* %792)
  store i32 1, i32* %8, align 4
  br label %794

794:                                              ; preds = %835, %791
  %795 = load i32, i32* %8, align 4
  %796 = load i32, i32* %17, align 4
  %797 = icmp slt i32 %795, %796
  br i1 %797, label %798, label %838

798:                                              ; preds = %794
  %799 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %800 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %801 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %800, i32 0, i32 2
  %802 = load i32, i32* %801, align 8
  %803 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %804 = load i32, i32* %8, align 4
  %805 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %806 = call i64 @XFS_SB_BLOCK(%struct.TYPE_52__* %805)
  %807 = call i32 @XFS_AGB_TO_DADDR(%struct.TYPE_52__* %803, i32 %804, i64 %806)
  %808 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %809 = call i64 @XFS_FSS_TO_BB(%struct.TYPE_52__* %808, i32 1)
  %810 = call i32 @xfs_read_buf(%struct.TYPE_52__* %799, i32 %802, i32 %807, i64 %809, i32 0, i32** %13)
  store i32 %810, i32* %16, align 4
  %811 = load i32, i32* %16, align 4
  %812 = icmp ne i32 %811, 0
  br i1 %812, label %813, label %818

813:                                              ; preds = %798
  %814 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %815 = load i32, i32* %16, align 4
  %816 = load i32, i32* %8, align 4
  %817 = call i32 @xfs_warn(%struct.TYPE_52__* %814, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %815, i32 %816)
  br label %838

818:                                              ; preds = %798
  %819 = load i32*, i32** %13, align 8
  %820 = call i32 @XFS_BUF_TO_SBP(i32* %819)
  %821 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %822 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %821, i32 0, i32 1
  %823 = load i32, i32* @XFS_SB_ALL_BITS, align 4
  %824 = call i32 @xfs_sb_to_disk(i32 %820, %struct.TYPE_48__* %822, i32 %823)
  %825 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %826 = load i32*, i32** %13, align 8
  %827 = call i32 @xfs_bwrite(%struct.TYPE_52__* %825, i32* %826)
  store i32 %827, i32* %16, align 4
  %828 = icmp ne i32 %827, 0
  br i1 %828, label %830, label %829

829:                                              ; preds = %818
  br label %835

830:                                              ; preds = %818
  %831 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %832 = load i32, i32* %16, align 4
  %833 = load i32, i32* %8, align 4
  %834 = call i32 @xfs_warn(%struct.TYPE_52__* %831, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %832, i32 %833)
  br label %838

835:                                              ; preds = %829
  %836 = load i32, i32* %8, align 4
  %837 = add nsw i32 %836, 1
  store i32 %837, i32* %8, align 4
  br label %794

838:                                              ; preds = %830, %813, %794
  store i32 0, i32* %3, align 4
  br label %844

839:                                              ; preds = %699, %659, %620, %599, %563, %542, %482, %461, %407, %386, %316, %298, %192
  %840 = load %struct.TYPE_51__*, %struct.TYPE_51__** %25, align 8
  %841 = load i32, i32* @XFS_TRANS_ABORT, align 4
  %842 = call i32 @xfs_trans_cancel(%struct.TYPE_51__* %840, i32 %841)
  %843 = load i32, i32* %16, align 4
  store i32 %843, i32* %3, align 4
  br label %844

844:                                              ; preds = %839, %838, %752, %164, %145, %121, %79, %54, %45
  %845 = load i32, i32* %3, align 4
  ret i32 %845
}

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i32 @xfs_sb_validate_fsb_count(%struct.TYPE_48__*, i64) #1

declare dso_local i32* @xfs_buf_read_uncached(%struct.TYPE_52__*, i32, i64, i32, i32) #1

declare dso_local i64 @XFS_FSB_TO_BB(%struct.TYPE_52__*, i64) #1

declare dso_local i64 @XFS_FSS_TO_BB(%struct.TYPE_52__*, i32) #1

declare dso_local i32 @BBTOB(i64) #1

declare dso_local i32 @xfs_buf_relse(i32*) #1

declare dso_local i64 @do_div(i64, i32) #1

declare dso_local i32 @xfs_initialize_perag(%struct.TYPE_52__*, i32, i32*) #1

declare dso_local %struct.TYPE_51__* @xfs_trans_alloc(%struct.TYPE_52__*, i32) #1

declare dso_local i32 @xfs_trans_reserve(%struct.TYPE_51__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XFS_GROWFS_SPACE_RES(%struct.TYPE_52__*) #1

declare dso_local i32 @XFS_GROWDATA_LOG_RES(%struct.TYPE_52__*) #1

declare dso_local i32 @xfs_trans_cancel(%struct.TYPE_51__*, i32) #1

declare dso_local i32* @xfs_buf_get(i32, i32, i64, i32) #1

declare dso_local i32 @XFS_AG_DADDR(%struct.TYPE_52__*, i32, i32) #1

declare dso_local i32 @XFS_AGF_DADDR(%struct.TYPE_52__*) #1

declare dso_local %struct.xfs_btree_block* @XFS_BUF_TO_AGF(i32*) #1

declare dso_local i32 @memset(%struct.xfs_btree_block*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i64 @XFS_BNO_BLOCK(%struct.TYPE_52__*) #1

declare dso_local i64 @XFS_CNT_BLOCK(%struct.TYPE_52__*) #1

declare dso_local i32 @XFS_AGFL_SIZE(%struct.TYPE_52__*) #1

declare dso_local i64 @XFS_PREALLOC_BLOCKS(%struct.TYPE_52__*) #1

declare dso_local i32 @xfs_bwrite(%struct.TYPE_52__*, i32*) #1

declare dso_local i32 @XFS_AGI_DADDR(%struct.TYPE_52__*) #1

declare dso_local %struct.xfs_btree_block* @XFS_BUF_TO_AGI(i32*) #1

declare dso_local i64 @XFS_IBT_BLOCK(%struct.TYPE_52__*) #1

declare dso_local i32 @XFS_AGB_TO_DADDR(%struct.TYPE_52__*, i32, i64) #1

declare dso_local i64 @BTOBB(i32) #1

declare dso_local %struct.xfs_btree_block* @XFS_BUF_TO_BLOCK(i32*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local %struct.TYPE_54__* @XFS_ALLOC_REC_ADDR(%struct.TYPE_52__*, %struct.xfs_btree_block*, i32) #1

declare dso_local i64 @be32_to_cpu(i8*) #1

declare dso_local i32 @xfs_trans_agblocks_delta(%struct.TYPE_51__*, i64) #1

declare dso_local i32 @xfs_ialloc_read_agi(%struct.TYPE_52__*, %struct.TYPE_51__*, i32, i32**) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @be32_add_cpu(i8**, i64) #1

declare dso_local i32 @xfs_ialloc_log_agi(%struct.TYPE_51__*, i32*, i32) #1

declare dso_local i32 @xfs_alloc_read_agf(%struct.TYPE_52__*, %struct.TYPE_51__*, i32, i32, i32**) #1

declare dso_local i32 @xfs_alloc_log_agf(%struct.TYPE_51__*, i32*, i32) #1

declare dso_local i32 @xfs_free_extent(%struct.TYPE_51__*, i32, i64) #1

declare dso_local i32 @XFS_AGB_TO_FSB(%struct.TYPE_52__*, i32, i64) #1

declare dso_local i32 @xfs_trans_mod_sb(%struct.TYPE_51__*, i32, i32) #1

declare dso_local i32 @xfs_trans_commit(%struct.TYPE_51__*, i32) #1

declare dso_local i32 @xfs_set_low_space_thresholds(%struct.TYPE_52__*) #1

declare dso_local i32 @xfs_read_buf(%struct.TYPE_52__*, i32, i32, i64, i32, i32**) #1

declare dso_local i64 @XFS_SB_BLOCK(%struct.TYPE_52__*) #1

declare dso_local i32 @xfs_warn(%struct.TYPE_52__*, i8*, i32, i32) #1

declare dso_local i32 @xfs_sb_to_disk(i32, %struct.TYPE_48__*, i32) #1

declare dso_local i32 @XFS_BUF_TO_SBP(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

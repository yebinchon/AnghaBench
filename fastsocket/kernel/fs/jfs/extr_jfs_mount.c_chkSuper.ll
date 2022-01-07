; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_mount.c_chkSuper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_mount.c_chkSuper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.jfs_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.jfs_superblock = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i64 }

@JFS_MAGIC = common dso_local global i32 0, align 4
@JFS_VERSION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"superblock: flag:0x%08x state:0x%08x size:0x%Lx\00", align 1
@JFS_BAD_SAIT = common dso_local global i32 0, align 4
@PSIZE = common dso_local global i32 0, align 4
@JFS_GROUPCOMMIT = common dso_local global i32 0, align 4
@FM_CLEAN = common dso_local global i32 0, align 4
@MS_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"jfs_mount: Mount Failure: File System Dirty.\00", align 1
@L2PSIZE = common dso_local global i64 0, align 8
@L2DISIZE = common dso_local global i64 0, align 8
@JFS_INLINELOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @chkSuper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chkSuper(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jfs_sb_info*, align 8
  %6 = alloca %struct.jfs_superblock*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 0, i32* %4, align 4
  %18 = load %struct.super_block*, %struct.super_block** %3, align 8
  %19 = call %struct.jfs_sb_info* @JFS_SBI(%struct.super_block* %18)
  store %struct.jfs_sb_info* %19, %struct.jfs_sb_info** %5, align 8
  %20 = load %struct.super_block*, %struct.super_block** %3, align 8
  %21 = call i32 @readSuper(%struct.super_block* %20, %struct.buffer_head** %7)
  store i32 %21, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %263

25:                                               ; preds = %1
  %26 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %27 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.jfs_superblock*
  store %struct.jfs_superblock* %29, %struct.jfs_superblock** %6, align 8
  %30 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %31 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %30, i32 0, i32 13
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @JFS_MAGIC, align 4
  %34 = call i64 @strncmp(i32 %32, i32 %33, i32 4)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %25
  %37 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %38 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @le32_to_cpu(i32 %39)
  %41 = load i64, i64* @JFS_VERSION, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36, %25
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %259

46:                                               ; preds = %36
  %47 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %48 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @le32_to_cpu(i32 %49)
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %17, align 4
  %52 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %53 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @le32_to_cpu(i32 %54)
  %56 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %57 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @le32_to_cpu(i32 %58)
  %60 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %61 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %60, i32 0, i32 12
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @le64_to_cpu(i32 %62)
  %64 = call i32 @jfs_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %55, i64 %59, i64 %63)
  %65 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %66 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @JFS_BAD_SAIT, align 4
  %69 = call i32 @cpu_to_le32(i32 %68)
  %70 = and i32 %67, %69
  %71 = load i32, i32* @JFS_BAD_SAIT, align 4
  %72 = call i32 @cpu_to_le32(i32 %71)
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %133

74:                                               ; preds = %46
  %75 = load i32, i32* @PSIZE, align 4
  %76 = mul nsw i32 2, %75
  store i32 %76, i32* %10, align 4
  %77 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %78 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %77, i32 0, i32 11
  %79 = call i32 @lengthPXD(i32* %78)
  %80 = load i32, i32* %17, align 4
  %81 = mul nsw i32 %79, %80
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* @PSIZE, align 4
  %83 = mul nsw i32 4, %82
  store i32 %83, i32* %11, align 4
  %84 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %85 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %84, i32 0, i32 5
  %86 = call i32 @lengthPXD(i32* %85)
  %87 = load i32, i32* %17, align 4
  %88 = mul nsw i32 %86, %87
  store i32 %88, i32* %9, align 4
  %89 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %90 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %89, i32 0, i32 11
  %91 = call i32 @addressPXD(i32* %90)
  %92 = load i32, i32* %17, align 4
  %93 = mul nsw i32 %91, %92
  store i32 %93, i32* %12, align 4
  %94 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %95 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %94, i32 0, i32 5
  %96 = call i32 @addressPXD(i32* %95)
  %97 = load i32, i32* %17, align 4
  %98 = mul nsw i32 %96, %97
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %12, align 4
  %101 = sub nsw i32 %99, %100
  store i32 %101, i32* %15, align 4
  %102 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %103 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %102, i32 0, i32 6
  %104 = call i32 @addressPXD(i32* %103)
  %105 = load i32, i32* %17, align 4
  %106 = mul nsw i32 %104, %105
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %13, align 4
  %109 = sub nsw i32 %107, %108
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %125, label %113

113:                                              ; preds = %74
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %125, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp sle i32 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %121, %117, %113, %74
  %126 = load i32, i32* @JFS_BAD_SAIT, align 4
  %127 = call i32 @cpu_to_le32(i32 %126)
  %128 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %129 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %125, %121
  br label %133

133:                                              ; preds = %132, %46
  %134 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %135 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @JFS_GROUPCOMMIT, align 4
  %138 = call i32 @cpu_to_le32(i32 %137)
  %139 = and i32 %136, %138
  %140 = load i32, i32* @JFS_GROUPCOMMIT, align 4
  %141 = call i32 @cpu_to_le32(i32 %140)
  %142 = icmp ne i32 %139, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %133
  %144 = load i32, i32* @JFS_GROUPCOMMIT, align 4
  %145 = call i32 @cpu_to_le32(i32 %144)
  %146 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %147 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %143, %133
  %151 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %152 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @FM_CLEAN, align 4
  %155 = call i32 @cpu_to_le32(i32 %154)
  %156 = icmp ne i32 %153, %155
  br i1 %156, label %157, label %168

157:                                              ; preds = %150
  %158 = load %struct.super_block*, %struct.super_block** %3, align 8
  %159 = getelementptr inbounds %struct.super_block, %struct.super_block* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @MS_RDONLY, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %157
  %165 = call i32 @jfs_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %4, align 4
  br label %259

168:                                              ; preds = %157, %150
  %169 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %170 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @le32_to_cpu(i32 %171)
  %173 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %174 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %173, i32 0, i32 12
  store i64 %172, i64* %174, align 8
  %175 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %176 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = call i64 @le32_to_cpu(i32 %177)
  %179 = trunc i64 %178 to i32
  %180 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %181 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = load i32, i32* %17, align 4
  %183 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %184 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  %185 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %186 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %185, i32 0, i32 10
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @le16_to_cpu(i32 %187)
  %189 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %190 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %189, i32 0, i32 2
  store i32 %188, i32* %190, align 8
  %191 = load i32, i32* @PSIZE, align 4
  %192 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %193 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = ashr i32 %191, %194
  %196 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %197 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %196, i32 0, i32 3
  store i32 %195, i32* %197, align 4
  %198 = load i64, i64* @L2PSIZE, align 8
  %199 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %200 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = sext i32 %201 to i64
  %203 = sub nsw i64 %198, %202
  %204 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %205 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %204, i32 0, i32 11
  store i64 %203, i64* %205, align 8
  %206 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %207 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = load i64, i64* @L2DISIZE, align 8
  %211 = sub nsw i64 %209, %210
  %212 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %213 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %212, i32 0, i32 10
  store i64 %211, i64* %213, align 8
  %214 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %215 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @JFS_INLINELOG, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %168
  %221 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %222 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %221, i32 0, i32 9
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %225 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %224, i32 0, i32 9
  store i32 %223, i32* %225, align 4
  br label %248

226:                                              ; preds = %168
  %227 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %228 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 4
  %230 = call i64 @le32_to_cpu(i32 %229)
  %231 = call i32 @new_decode_dev(i64 %230)
  %232 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %233 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %232, i32 0, i32 8
  store i32 %231, i32* %233, align 8
  %234 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %235 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %234, i32 0, i32 7
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %238 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %237, i32 0, i32 8
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @memcpy(i32 %236, i32 %239, i32 4)
  %241 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %242 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %245 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %244, i32 0, i32 7
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @memcpy(i32 %243, i32 %246, i32 4)
  br label %248

248:                                              ; preds = %226, %220
  %249 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %250 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %249, i32 0, i32 6
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %253 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %252, i32 0, i32 5
  store i32 %251, i32* %253, align 4
  %254 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %255 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %258 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %257, i32 0, i32 4
  store i32 %256, i32* %258, align 8
  br label %259

259:                                              ; preds = %248, %164, %43
  %260 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %261 = call i32 @brelse(%struct.buffer_head* %260)
  %262 = load i32, i32* %4, align 4
  store i32 %262, i32* %2, align 4
  br label %263

263:                                              ; preds = %259, %23
  %264 = load i32, i32* %2, align 4
  ret i32 %264
}

declare dso_local %struct.jfs_sb_info* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @readSuper(%struct.super_block*, %struct.buffer_head**) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @jfs_info(i8*, i64, i64, i64) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @lengthPXD(i32*) #1

declare dso_local i32 @addressPXD(i32*) #1

declare dso_local i32 @jfs_err(i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @new_decode_dev(i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

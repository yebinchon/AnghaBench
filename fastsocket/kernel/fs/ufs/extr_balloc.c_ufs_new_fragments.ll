; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_balloc.c_ufs_new_fragments.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_balloc.c_ufs_new_fragments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.page = type { i32 }
%struct.ufs_sb_private_info = type { i32, i64, i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ufs_super_block_first = type { i8* }
%struct.TYPE_5__ = type { %struct.ufs_sb_private_info* }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [52 x i8] c"ENTER, ino %lu, fragment %llu, goal %llu, count %u\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"ufs_new_fragments\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"internal warning fragment %llu, count %u\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"internal error, fragment %llu, tmp %llu\0A\00", align 1
@INVBLOCK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"EXIT (ALREADY ALLOCATED)\0A\00", align 1
@CAP_SYS_RESOURCE = common dso_local global i32 0, align 4
@UFS_MINFREE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"EXIT (FAILED)\0A\00", align 1
@u32 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"EXIT, result %llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ufs_new_fragments(%struct.inode* %0, i8* %1, i64 %2, i64 %3, i32 %4, i32* %5, %struct.page* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca %struct.super_block*, align 8
  %17 = alloca %struct.ufs_sb_private_info*, align 8
  %18 = alloca %struct.ufs_super_block_first*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store %struct.page* %6, %struct.page** %15, align 8
  %25 = load %struct.inode*, %struct.inode** %9, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i32, i32* %13, align 4
  %31 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %28, i64 %29, i32 %30)
  %32 = load %struct.inode*, %struct.inode** %9, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 1
  %34 = load %struct.super_block*, %struct.super_block** %33, align 8
  store %struct.super_block* %34, %struct.super_block** %16, align 8
  %35 = load %struct.super_block*, %struct.super_block** %16, align 8
  %36 = call %struct.TYPE_5__* @UFS_SB(%struct.super_block* %35)
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %37, align 8
  store %struct.ufs_sb_private_info* %38, %struct.ufs_sb_private_info** %17, align 8
  %39 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %40 = call %struct.ufs_super_block_first* @ubh_get_usb_first(%struct.ufs_sb_private_info* %39)
  store %struct.ufs_super_block_first* %40, %struct.ufs_super_block_first** %18, align 8
  %41 = load i32, i32* @ENOSPC, align 4
  %42 = sub nsw i32 0, %41
  %43 = load i32*, i32** %14, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.super_block*, %struct.super_block** %16, align 8
  %45 = call i32 @lock_super(%struct.super_block* %44)
  %46 = load %struct.super_block*, %struct.super_block** %16, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %46, i8* %47)
  store i64 %48, i64* %22, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @ufs_fragnum(i64 %50)
  %52 = add i32 %49, %51
  %53 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %54 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ugt i32 %52, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %7
  %58 = load %struct.super_block*, %struct.super_block** %16, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @ufs_warning(%struct.super_block* %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %59, i32 %60)
  %62 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %63 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @ufs_fragnum(i64 %65)
  %67 = sub i32 %64, %66
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %57, %7
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @ufs_fragnum(i64 %69)
  store i32 %70, i32* %20, align 4
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* %13, align 4
  %73 = add i32 %71, %72
  store i32 %73, i32* %21, align 4
  %74 = load i32, i32* %20, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %68
  %77 = load i64, i64* %22, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %76
  %80 = load %struct.super_block*, %struct.super_block** %16, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %22, align 8
  %83 = call i32 @ufs_error(%struct.super_block* %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %81, i64 %82)
  %84 = load %struct.super_block*, %struct.super_block** %16, align 8
  %85 = call i32 @unlock_super(%struct.super_block* %84)
  %86 = load i64, i64* @INVBLOCK, align 8
  store i64 %86, i64* %8, align 8
  br label %384

87:                                               ; preds = %76
  %88 = load i64, i64* %11, align 8
  %89 = load %struct.inode*, %struct.inode** %9, align 8
  %90 = call %struct.TYPE_6__* @UFS_I(%struct.inode* %89)
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %88, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %96 = load %struct.super_block*, %struct.super_block** %16, align 8
  %97 = call i32 @unlock_super(%struct.super_block* %96)
  store i64 0, i64* %8, align 8
  br label %384

98:                                               ; preds = %87
  br label %107

99:                                               ; preds = %68
  %100 = load i64, i64* %22, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %104 = load %struct.super_block*, %struct.super_block** %16, align 8
  %105 = call i32 @unlock_super(%struct.super_block* %104)
  store i64 0, i64* %8, align 8
  br label %384

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %106, %98
  %108 = load i32, i32* @CAP_SYS_RESOURCE, align 4
  %109 = call i32 @capable(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %107
  %112 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %113 = load i32, i32* @UFS_MINFREE, align 4
  %114 = call i64 @ufs_freespace(%struct.ufs_sb_private_info* %112, i32 %113)
  %115 = icmp sle i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load %struct.super_block*, %struct.super_block** %16, align 8
  %118 = call i32 @unlock_super(%struct.super_block* %117)
  %119 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %384

120:                                              ; preds = %111, %107
  %121 = load i64, i64* %12, align 8
  %122 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %123 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp sge i64 %121, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store i64 0, i64* %12, align 8
  br label %127

127:                                              ; preds = %126, %120
  %128 = load i64, i64* %12, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load %struct.inode*, %struct.inode** %9, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @ufs_inotocg(i32 %133)
  store i32 %134, i32* %19, align 4
  br label %139

135:                                              ; preds = %127
  %136 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %137 = load i64, i64* %12, align 8
  %138 = call i32 @ufs_dtog(%struct.ufs_sb_private_info* %136, i64 %137)
  store i32 %138, i32* %19, align 4
  br label %139

139:                                              ; preds = %135, %130
  %140 = load i32, i32* %20, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %190

142:                                              ; preds = %139
  %143 = load %struct.inode*, %struct.inode** %9, align 8
  %144 = load i32, i32* %19, align 4
  %145 = load i64, i64* %12, align 8
  %146 = load i32, i32* %13, align 4
  %147 = zext i32 %146 to i64
  %148 = load i32*, i32** %14, align 8
  %149 = call i64 @ufs_alloc_fragments(%struct.inode* %143, i32 %144, i64 %145, i64 %147, i32* %148)
  store i64 %149, i64* %24, align 8
  %150 = load i64, i64* %24, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %184

152:                                              ; preds = %142
  %153 = load %struct.super_block*, %struct.super_block** %16, align 8
  %154 = load i8*, i8** %10, align 8
  %155 = load i64, i64* %24, align 8
  %156 = call i32 @ufs_cpu_to_data_ptr(%struct.super_block* %153, i8* %154, i64 %155)
  %157 = load i32*, i32** %14, align 8
  store i32 0, i32* %157, align 4
  %158 = load i32, i32* @u32, align 4
  %159 = load %struct.inode*, %struct.inode** %9, align 8
  %160 = call %struct.TYPE_6__* @UFS_I(%struct.inode* %159)
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %11, align 8
  %164 = load i32, i32* %13, align 4
  %165 = zext i32 %164 to i64
  %166 = add nsw i64 %163, %165
  %167 = call i8* @max_t(i32 %158, i64 %162, i64 %166)
  %168 = ptrtoint i8* %167 to i64
  %169 = load %struct.inode*, %struct.inode** %9, align 8
  %170 = call %struct.TYPE_6__* @UFS_I(%struct.inode* %169)
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  store i64 %168, i64* %171, align 8
  %172 = load %struct.inode*, %struct.inode** %9, align 8
  %173 = load i64, i64* %24, align 8
  %174 = load i32, i32* %20, align 4
  %175 = zext i32 %174 to i64
  %176 = add nsw i64 %173, %175
  %177 = load i32, i32* %21, align 4
  %178 = load i32, i32* %20, align 4
  %179 = sub i32 %177, %178
  %180 = load %struct.page*, %struct.page** %15, align 8
  %181 = icmp ne %struct.page* %180, null
  %182 = zext i1 %181 to i32
  %183 = call i32 @ufs_clear_frags(%struct.inode* %172, i64 %176, i32 %179, i32 %182)
  br label %184

184:                                              ; preds = %152, %142
  %185 = load %struct.super_block*, %struct.super_block** %16, align 8
  %186 = call i32 @unlock_super(%struct.super_block* %185)
  %187 = load i64, i64* %24, align 8
  %188 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 %187)
  %189 = load i64, i64* %24, align 8
  store i64 %189, i64* %8, align 8
  br label %384

190:                                              ; preds = %139
  %191 = load %struct.inode*, %struct.inode** %9, align 8
  %192 = load i64, i64* %22, align 8
  %193 = load i32, i32* %20, align 4
  %194 = load i32, i32* %21, align 4
  %195 = load i32*, i32** %14, align 8
  %196 = call i64 @ufs_add_fragments(%struct.inode* %191, i64 %192, i32 %193, i32 %194, i32* %195)
  store i64 %196, i64* %24, align 8
  %197 = load i64, i64* %24, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %232

199:                                              ; preds = %190
  %200 = load i32*, i32** %14, align 8
  store i32 0, i32* %200, align 4
  %201 = load i32, i32* @u32, align 4
  %202 = load %struct.inode*, %struct.inode** %9, align 8
  %203 = call %struct.TYPE_6__* @UFS_I(%struct.inode* %202)
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* %11, align 8
  %207 = load i32, i32* %13, align 4
  %208 = zext i32 %207 to i64
  %209 = add nsw i64 %206, %208
  %210 = call i8* @max_t(i32 %201, i64 %205, i64 %209)
  %211 = ptrtoint i8* %210 to i64
  %212 = load %struct.inode*, %struct.inode** %9, align 8
  %213 = call %struct.TYPE_6__* @UFS_I(%struct.inode* %212)
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  store i64 %211, i64* %214, align 8
  %215 = load %struct.inode*, %struct.inode** %9, align 8
  %216 = load i64, i64* %24, align 8
  %217 = load i32, i32* %20, align 4
  %218 = zext i32 %217 to i64
  %219 = add nsw i64 %216, %218
  %220 = load i32, i32* %21, align 4
  %221 = load i32, i32* %20, align 4
  %222 = sub i32 %220, %221
  %223 = load %struct.page*, %struct.page** %15, align 8
  %224 = icmp ne %struct.page* %223, null
  %225 = zext i1 %224 to i32
  %226 = call i32 @ufs_clear_frags(%struct.inode* %215, i64 %219, i32 %222, i32 %225)
  %227 = load %struct.super_block*, %struct.super_block** %16, align 8
  %228 = call i32 @unlock_super(%struct.super_block* %227)
  %229 = load i64, i64* %24, align 8
  %230 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 %229)
  %231 = load i64, i64* %24, align 8
  store i64 %231, i64* %8, align 8
  br label %384

232:                                              ; preds = %190
  %233 = load %struct.super_block*, %struct.super_block** %16, align 8
  %234 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %18, align 8
  %235 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %234, i32 0, i32 0
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 @fs32_to_cpu(%struct.super_block* %233, i8* %236)
  switch i32 %237, label %265 [
    i32 129, label %238
    i32 128, label %270
  ]

238:                                              ; preds = %232
  %239 = load i32, i32* %21, align 4
  %240 = zext i32 %239 to i64
  store i64 %240, i64* %23, align 8
  %241 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %242 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = icmp slt i32 %243, 5
  br i1 %244, label %259, label %245

245:                                              ; preds = %238
  %246 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %247 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %246, i32 0, i32 5
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %251 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %254 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = mul nsw i32 %252, %255
  %257 = sdiv i32 %256, 200
  %258 = icmp sgt i32 %249, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %245, %238
  br label %295

260:                                              ; preds = %245
  %261 = load %struct.super_block*, %struct.super_block** %16, align 8
  %262 = call i8* @cpu_to_fs32(%struct.super_block* %261, i32 128)
  %263 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %18, align 8
  %264 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %263, i32 0, i32 0
  store i8* %262, i8** %264, align 8
  br label %295

265:                                              ; preds = %232
  %266 = load %struct.super_block*, %struct.super_block** %16, align 8
  %267 = call i8* @cpu_to_fs32(%struct.super_block* %266, i32 128)
  %268 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %18, align 8
  %269 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %268, i32 0, i32 0
  store i8* %267, i8** %269, align 8
  br label %270

270:                                              ; preds = %232, %265
  %271 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %272 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = zext i32 %273 to i64
  store i64 %274, i64* %23, align 8
  %275 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %276 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %275, i32 0, i32 5
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %280 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %283 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = sub nsw i32 %284, 2
  %286 = mul nsw i32 %281, %285
  %287 = sdiv i32 %286, 100
  %288 = icmp slt i32 %278, %287
  br i1 %288, label %289, label %290

289:                                              ; preds = %270
  br label %295

290:                                              ; preds = %270
  %291 = load %struct.super_block*, %struct.super_block** %16, align 8
  %292 = call i8* @cpu_to_fs32(%struct.super_block* %291, i32 128)
  %293 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %18, align 8
  %294 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %293, i32 0, i32 0
  store i8* %292, i8** %294, align 8
  br label %295

295:                                              ; preds = %290, %289, %260, %259
  %296 = load %struct.inode*, %struct.inode** %9, align 8
  %297 = load i32, i32* %19, align 4
  %298 = load i64, i64* %12, align 8
  %299 = load i64, i64* %23, align 8
  %300 = load i32*, i32** %14, align 8
  %301 = call i64 @ufs_alloc_fragments(%struct.inode* %296, i32 %297, i64 %298, i64 %299, i32* %300)
  store i64 %301, i64* %24, align 8
  %302 = load i64, i64* %24, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %380

304:                                              ; preds = %295
  %305 = load %struct.inode*, %struct.inode** %9, align 8
  %306 = load i64, i64* %24, align 8
  %307 = load i32, i32* %20, align 4
  %308 = zext i32 %307 to i64
  %309 = add nsw i64 %306, %308
  %310 = load i32, i32* %21, align 4
  %311 = load i32, i32* %20, align 4
  %312 = sub i32 %310, %311
  %313 = load %struct.page*, %struct.page** %15, align 8
  %314 = icmp ne %struct.page* %313, null
  %315 = zext i1 %314 to i32
  %316 = call i32 @ufs_clear_frags(%struct.inode* %305, i64 %309, i32 %312, i32 %315)
  %317 = load %struct.inode*, %struct.inode** %9, align 8
  %318 = load i64, i64* %11, align 8
  %319 = load i32, i32* %20, align 4
  %320 = zext i32 %319 to i64
  %321 = sub nsw i64 %318, %320
  %322 = load i32, i32* %20, align 4
  %323 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %324 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %323, i32 0, i32 4
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* %22, align 8
  %327 = add nsw i64 %325, %326
  %328 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %329 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %328, i32 0, i32 4
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* %24, align 8
  %332 = add nsw i64 %330, %331
  %333 = load %struct.page*, %struct.page** %15, align 8
  %334 = call i32 @ufs_change_blocknr(%struct.inode* %317, i64 %321, i32 %322, i64 %327, i64 %332, %struct.page* %333)
  %335 = load %struct.super_block*, %struct.super_block** %16, align 8
  %336 = load i8*, i8** %10, align 8
  %337 = load i64, i64* %24, align 8
  %338 = call i32 @ufs_cpu_to_data_ptr(%struct.super_block* %335, i8* %336, i64 %337)
  %339 = load i32*, i32** %14, align 8
  store i32 0, i32* %339, align 4
  %340 = load i32, i32* @u32, align 4
  %341 = load %struct.inode*, %struct.inode** %9, align 8
  %342 = call %struct.TYPE_6__* @UFS_I(%struct.inode* %341)
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = load i64, i64* %11, align 8
  %346 = load i32, i32* %13, align 4
  %347 = zext i32 %346 to i64
  %348 = add nsw i64 %345, %347
  %349 = call i8* @max_t(i32 %340, i64 %344, i64 %348)
  %350 = ptrtoint i8* %349 to i64
  %351 = load %struct.inode*, %struct.inode** %9, align 8
  %352 = call %struct.TYPE_6__* @UFS_I(%struct.inode* %351)
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 0
  store i64 %350, i64* %353, align 8
  %354 = load %struct.super_block*, %struct.super_block** %16, align 8
  %355 = call i32 @unlock_super(%struct.super_block* %354)
  %356 = load i32, i32* %21, align 4
  %357 = zext i32 %356 to i64
  %358 = load i64, i64* %23, align 8
  %359 = icmp slt i64 %357, %358
  br i1 %359, label %360, label %372

360:                                              ; preds = %304
  %361 = load %struct.inode*, %struct.inode** %9, align 8
  %362 = load i64, i64* %24, align 8
  %363 = load i32, i32* %21, align 4
  %364 = zext i32 %363 to i64
  %365 = add nsw i64 %362, %364
  %366 = load i64, i64* %23, align 8
  %367 = load i32, i32* %21, align 4
  %368 = zext i32 %367 to i64
  %369 = sub nsw i64 %366, %368
  %370 = trunc i64 %369 to i32
  %371 = call i32 @ufs_free_fragments(%struct.inode* %361, i64 %365, i32 %370)
  br label %372

372:                                              ; preds = %360, %304
  %373 = load %struct.inode*, %struct.inode** %9, align 8
  %374 = load i64, i64* %22, align 8
  %375 = load i32, i32* %20, align 4
  %376 = call i32 @ufs_free_fragments(%struct.inode* %373, i64 %374, i32 %375)
  %377 = load i64, i64* %24, align 8
  %378 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 %377)
  %379 = load i64, i64* %24, align 8
  store i64 %379, i64* %8, align 8
  br label %384

380:                                              ; preds = %295
  %381 = load %struct.super_block*, %struct.super_block** %16, align 8
  %382 = call i32 @unlock_super(%struct.super_block* %381)
  %383 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %384

384:                                              ; preds = %380, %372, %199, %184, %116, %102, %94, %79
  %385 = load i64, i64* %8, align 8
  ret i64 %385
}

declare dso_local i32 @UFSD(i8*, ...) #1

declare dso_local %struct.TYPE_5__* @UFS_SB(%struct.super_block*) #1

declare dso_local %struct.ufs_super_block_first* @ubh_get_usb_first(%struct.ufs_sb_private_info*) #1

declare dso_local i32 @lock_super(%struct.super_block*) #1

declare dso_local i64 @ufs_data_ptr_to_cpu(%struct.super_block*, i8*) #1

declare dso_local i32 @ufs_fragnum(i64) #1

declare dso_local i32 @ufs_warning(%struct.super_block*, i8*, i8*, i64, i32) #1

declare dso_local i32 @ufs_error(%struct.super_block*, i8*, i8*, i64, i64) #1

declare dso_local i32 @unlock_super(%struct.super_block*) #1

declare dso_local %struct.TYPE_6__* @UFS_I(%struct.inode*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @ufs_freespace(%struct.ufs_sb_private_info*, i32) #1

declare dso_local i32 @ufs_inotocg(i32) #1

declare dso_local i32 @ufs_dtog(%struct.ufs_sb_private_info*, i64) #1

declare dso_local i64 @ufs_alloc_fragments(%struct.inode*, i32, i64, i64, i32*) #1

declare dso_local i32 @ufs_cpu_to_data_ptr(%struct.super_block*, i8*, i64) #1

declare dso_local i8* @max_t(i32, i64, i64) #1

declare dso_local i32 @ufs_clear_frags(%struct.inode*, i64, i32, i32) #1

declare dso_local i64 @ufs_add_fragments(%struct.inode*, i64, i32, i32, i32*) #1

declare dso_local i32 @fs32_to_cpu(%struct.super_block*, i8*) #1

declare dso_local i8* @cpu_to_fs32(%struct.super_block*, i32) #1

declare dso_local i32 @ufs_change_blocknr(%struct.inode*, i64, i32, i64, i64, %struct.page*) #1

declare dso_local i32 @ufs_free_fragments(%struct.inode*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

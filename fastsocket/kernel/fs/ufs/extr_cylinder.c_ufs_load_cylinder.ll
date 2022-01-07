; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_cylinder.c_ufs_load_cylinder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_cylinder.c_ufs_load_cylinder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_cg_private_info = type { i32 }
%struct.super_block = type { i32 }
%struct.ufs_sb_info = type { i32*, i32, %struct.ufs_cg_private_info**, %struct.ufs_sb_private_info* }
%struct.ufs_sb_private_info = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"ENTER, cgno %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ufs_load_cylinder\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"internal error, high number of cg\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1
@UFS_MAX_GROUP_LOADED = common dso_local global i32 0, align 4
@UFS_CGNO_EMPTY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"internal error, wrong number of cg in cache\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"EXIT (FAILED)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ufs_cg_private_info* @ufs_load_cylinder(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.ufs_cg_private_info*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ufs_sb_info*, align 8
  %7 = alloca %struct.ufs_sb_private_info*, align 8
  %8 = alloca %struct.ufs_cg_private_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = call %struct.ufs_sb_info* @UFS_SB(%struct.super_block* %12)
  store %struct.ufs_sb_info* %13, %struct.ufs_sb_info** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %17 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %16, i32 0, i32 3
  %18 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  store %struct.ufs_sb_private_info* %18, %struct.ufs_sb_private_info** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %7, align 8
  %21 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp uge i32 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.super_block*, %struct.super_block** %4, align 8
  %26 = call i32 @ufs_panic(%struct.super_block* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store %struct.ufs_cg_private_info* null, %struct.ufs_cg_private_info** %3, align 8
  br label %277

27:                                               ; preds = %2
  %28 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %29 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %37 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %38 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %37, i32 0, i32 2
  %39 = load %struct.ufs_cg_private_info**, %struct.ufs_cg_private_info*** %38, align 8
  %40 = getelementptr inbounds %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %39, i64 0
  %41 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %40, align 8
  store %struct.ufs_cg_private_info* %41, %struct.ufs_cg_private_info** %3, align 8
  br label %277

42:                                               ; preds = %27
  %43 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %7, align 8
  %44 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @UFS_MAX_GROUP_LOADED, align 4
  %47 = icmp ule i32 %45, %46
  br i1 %47, label %48, label %94

48:                                               ; preds = %42
  %49 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %50 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @UFS_CGNO_EMPTY, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %48
  %59 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %60 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load %struct.super_block*, %struct.super_block** %4, align 8
  %70 = call i32 @ufs_panic(%struct.super_block* %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %71 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store %struct.ufs_cg_private_info* null, %struct.ufs_cg_private_info** %3, align 8
  br label %277

72:                                               ; preds = %58
  %73 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %74 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %75 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %74, i32 0, i32 2
  %76 = load %struct.ufs_cg_private_info**, %struct.ufs_cg_private_info*** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %76, i64 %78
  %80 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %79, align 8
  store %struct.ufs_cg_private_info* %80, %struct.ufs_cg_private_info** %3, align 8
  br label %277

81:                                               ; preds = %48
  %82 = load %struct.super_block*, %struct.super_block** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @ufs_read_cylinder(%struct.super_block* %82, i32 %83, i32 %84)
  %86 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %87 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %88 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %87, i32 0, i32 2
  %89 = load %struct.ufs_cg_private_info**, %struct.ufs_cg_private_info*** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %89, i64 %91
  %93 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %92, align 8
  store %struct.ufs_cg_private_info* %93, %struct.ufs_cg_private_info** %3, align 8
  br label %277

94:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %114, %94
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %98 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp ult i32 %96, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %103 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %108, %109
  br label %111

111:                                              ; preds = %101, %95
  %112 = phi i1 [ false, %95 ], [ %110, %101 ]
  br i1 %112, label %113, label %117

113:                                              ; preds = %111
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %10, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %95

117:                                              ; preds = %111
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %120 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp ult i32 %118, %121
  br i1 %122, label %123, label %195

123:                                              ; preds = %117
  %124 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %125 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %5, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %195

133:                                              ; preds = %123
  %134 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %135 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %9, align 4
  %141 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %142 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %141, i32 0, i32 2
  %143 = load %struct.ufs_cg_private_info**, %struct.ufs_cg_private_info*** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %143, i64 %145
  %147 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %146, align 8
  store %struct.ufs_cg_private_info* %147, %struct.ufs_cg_private_info** %8, align 8
  %148 = load i32, i32* %10, align 4
  store i32 %148, i32* %11, align 4
  br label %149

149:                                              ; preds = %181, %133
  %150 = load i32, i32* %11, align 4
  %151 = icmp ugt i32 %150, 0
  br i1 %151, label %152, label %184

152:                                              ; preds = %149
  %153 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %154 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sub i32 %156, 1
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %162 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %11, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 %160, i32* %166, align 4
  %167 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %168 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %167, i32 0, i32 2
  %169 = load %struct.ufs_cg_private_info**, %struct.ufs_cg_private_info*** %168, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sub i32 %170, 1
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %169, i64 %172
  %174 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %173, align 8
  %175 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %176 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %175, i32 0, i32 2
  %177 = load %struct.ufs_cg_private_info**, %struct.ufs_cg_private_info*** %176, align 8
  %178 = load i32, i32* %11, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %177, i64 %179
  store %struct.ufs_cg_private_info* %174, %struct.ufs_cg_private_info** %180, align 8
  br label %181

181:                                              ; preds = %152
  %182 = load i32, i32* %11, align 4
  %183 = add i32 %182, -1
  store i32 %183, i32* %11, align 4
  br label %149

184:                                              ; preds = %149
  %185 = load i32, i32* %9, align 4
  %186 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %187 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  store i32 %185, i32* %189, align 4
  %190 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %8, align 8
  %191 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %192 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %191, i32 0, i32 2
  %193 = load %struct.ufs_cg_private_info**, %struct.ufs_cg_private_info*** %192, align 8
  %194 = getelementptr inbounds %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %193, i64 0
  store %struct.ufs_cg_private_info* %190, %struct.ufs_cg_private_info** %194, align 8
  br label %270

195:                                              ; preds = %123, %117
  %196 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %197 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @UFS_MAX_GROUP_LOADED, align 4
  %200 = icmp ult i32 %198, %199
  br i1 %200, label %201, label %206

201:                                              ; preds = %195
  %202 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %203 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = add i32 %204, 1
  store i32 %205, i32* %203, align 8
  br label %211

206:                                              ; preds = %195
  %207 = load %struct.super_block*, %struct.super_block** %4, align 8
  %208 = load i32, i32* @UFS_MAX_GROUP_LOADED, align 4
  %209 = sub nsw i32 %208, 1
  %210 = call i32 @ufs_put_cylinder(%struct.super_block* %207, i32 %209)
  br label %211

211:                                              ; preds = %206, %201
  %212 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %213 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %212, i32 0, i32 2
  %214 = load %struct.ufs_cg_private_info**, %struct.ufs_cg_private_info*** %213, align 8
  %215 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %216 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = sub i32 %217, 1
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %214, i64 %219
  %221 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %220, align 8
  store %struct.ufs_cg_private_info* %221, %struct.ufs_cg_private_info** %8, align 8
  %222 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %223 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = sub i32 %224, 1
  store i32 %225, i32* %11, align 4
  br label %226

226:                                              ; preds = %258, %211
  %227 = load i32, i32* %11, align 4
  %228 = icmp ugt i32 %227, 0
  br i1 %228, label %229, label %261

229:                                              ; preds = %226
  %230 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %231 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %11, align 4
  %234 = sub i32 %233, 1
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %232, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %239 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %238, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %11, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  store i32 %237, i32* %243, align 4
  %244 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %245 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %244, i32 0, i32 2
  %246 = load %struct.ufs_cg_private_info**, %struct.ufs_cg_private_info*** %245, align 8
  %247 = load i32, i32* %11, align 4
  %248 = sub i32 %247, 1
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %246, i64 %249
  %251 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %250, align 8
  %252 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %253 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %252, i32 0, i32 2
  %254 = load %struct.ufs_cg_private_info**, %struct.ufs_cg_private_info*** %253, align 8
  %255 = load i32, i32* %11, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %254, i64 %256
  store %struct.ufs_cg_private_info* %251, %struct.ufs_cg_private_info** %257, align 8
  br label %258

258:                                              ; preds = %229
  %259 = load i32, i32* %11, align 4
  %260 = add i32 %259, -1
  store i32 %260, i32* %11, align 4
  br label %226

261:                                              ; preds = %226
  %262 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %8, align 8
  %263 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %264 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %263, i32 0, i32 2
  %265 = load %struct.ufs_cg_private_info**, %struct.ufs_cg_private_info*** %264, align 8
  %266 = getelementptr inbounds %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %265, i64 0
  store %struct.ufs_cg_private_info* %262, %struct.ufs_cg_private_info** %266, align 8
  %267 = load %struct.super_block*, %struct.super_block** %4, align 8
  %268 = load i32, i32* %5, align 4
  %269 = call i32 @ufs_read_cylinder(%struct.super_block* %267, i32 %268, i32 0)
  br label %270

270:                                              ; preds = %261, %184
  %271 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %272 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %6, align 8
  %273 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %272, i32 0, i32 2
  %274 = load %struct.ufs_cg_private_info**, %struct.ufs_cg_private_info*** %273, align 8
  %275 = getelementptr inbounds %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %274, i64 0
  %276 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %275, align 8
  store %struct.ufs_cg_private_info* %276, %struct.ufs_cg_private_info** %3, align 8
  br label %277

277:                                              ; preds = %270, %81, %72, %68, %35, %24
  %278 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %3, align 8
  ret %struct.ufs_cg_private_info* %278
}

declare dso_local %struct.ufs_sb_info* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @UFSD(i8*, ...) #1

declare dso_local i32 @ufs_panic(%struct.super_block*, i8*, i8*) #1

declare dso_local i32 @ufs_read_cylinder(%struct.super_block*, i32, i32) #1

declare dso_local i32 @ufs_put_cylinder(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

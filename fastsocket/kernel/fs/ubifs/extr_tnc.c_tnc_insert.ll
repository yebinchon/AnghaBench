; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_tnc_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_tnc_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { %struct.ubifs_znode*, i64, i64, i64 }
%struct.ubifs_znode = type { i32, i32, i64, %struct.ubifs_znode*, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { %struct.ubifs_znode*, %union.ubifs_key, i64, i64, i64 }
%union.ubifs_key = type { i32 }
%struct.ubifs_zbranch = type { i64, i64, i64, %struct.ubifs_znode*, %union.ubifs_key }

@.str = private unnamed_addr constant [32 x i8] c"inserted at %d level %d, key %s\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"splitting level %d, key %s\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBIFS_DATA_KEY = common dso_local global i64 0, align 8
@DIRTY_ZNODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"moving %d, keeping %d\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"inserting at %d level %d, key %s\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"creating new zroot at level %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_znode*, %struct.ubifs_zbranch*, i32)* @tnc_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tnc_insert(%struct.ubifs_info* %0, %struct.ubifs_znode* %1, %struct.ubifs_zbranch* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %struct.ubifs_znode*, align 8
  %8 = alloca %struct.ubifs_zbranch*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubifs_znode*, align 8
  %11 = alloca %struct.ubifs_znode*, align 8
  %12 = alloca %struct.ubifs_znode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %union.ubifs_key*, align 8
  %18 = alloca %union.ubifs_key*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store %struct.ubifs_znode* %1, %struct.ubifs_znode** %7, align 8
  store %struct.ubifs_zbranch* %2, %struct.ubifs_zbranch** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %16, align 4
  %19 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %20 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %19, i32 0, i32 4
  store %union.ubifs_key* %20, %union.ubifs_key** %17, align 8
  %21 = load i32, i32* %9, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %26 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sle i32 %24, %27
  br label %29

29:                                               ; preds = %23, %4
  %30 = phi i1 [ false, %4 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @ubifs_assert(i32 %31)
  br label %33

33:                                               ; preds = %379, %29
  %34 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %35 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %34, i32 0, i32 3
  %36 = load %struct.ubifs_znode*, %struct.ubifs_znode** %35, align 8
  store %struct.ubifs_znode* %36, %struct.ubifs_znode** %12, align 8
  %37 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %38 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %41 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %78

44:                                               ; preds = %33
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %47 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %45, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @ubifs_assert(i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %54 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %union.ubifs_key*, %union.ubifs_key** %17, align 8
  %57 = call i32 @DBGKEY(%union.ubifs_key* %56)
  %58 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55, i32 %57)
  %59 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %60 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @insert_zbranch(%struct.ubifs_znode* %59, %struct.ubifs_zbranch* %60, i32 %61)
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %44
  %66 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %67 = icmp ne %struct.ubifs_znode* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %70 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %75 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %76 = call i32 @correct_parent_keys(%struct.ubifs_info* %74, %struct.ubifs_znode* %75)
  br label %77

77:                                               ; preds = %73, %68, %65, %44
  store i32 0, i32* %5, align 4
  br label %522

78:                                               ; preds = %33
  %79 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %80 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %union.ubifs_key*, %union.ubifs_key** %17, align 8
  %83 = call i32 @DBGKEY(%union.ubifs_key* %82)
  %84 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %83)
  %85 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %86 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %78
  %90 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %91 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %92 = call i32 @ins_clr_old_idx_znode(%struct.ubifs_info* %90, %struct.ubifs_znode* %91)
  br label %93

93:                                               ; preds = %89, %78
  %94 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %95 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @GFP_NOFS, align 4
  %98 = call %struct.ubifs_znode* @kzalloc(i32 %96, i32 %97)
  store %struct.ubifs_znode* %98, %struct.ubifs_znode** %10, align 8
  %99 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %100 = icmp ne %struct.ubifs_znode* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %93
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %5, align 4
  br label %522

104:                                              ; preds = %93
  %105 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %106 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %107 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %106, i32 0, i32 3
  store %struct.ubifs_znode* %105, %struct.ubifs_znode** %107, align 8
  %108 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %109 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %112 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %114 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %155

117:                                              ; preds = %104
  %118 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %119 = load %union.ubifs_key*, %union.ubifs_key** %17, align 8
  %120 = call i64 @key_type(%struct.ubifs_info* %118, %union.ubifs_key* %119)
  %121 = load i64, i64* @UBIFS_DATA_KEY, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %155

123:                                              ; preds = %117
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %126 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %124, %127
  br i1 %128, label %129, label %153

129:                                              ; preds = %123
  %130 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %131 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %130, i32 0, i32 4
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  store %union.ubifs_key* %137, %union.ubifs_key** %18, align 8
  %138 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %139 = load %union.ubifs_key*, %union.ubifs_key** %18, align 8
  %140 = call i64 @key_inum(%struct.ubifs_info* %138, %union.ubifs_key* %139)
  %141 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %142 = load %union.ubifs_key*, %union.ubifs_key** %17, align 8
  %143 = call i64 @key_inum(%struct.ubifs_info* %141, %union.ubifs_key* %142)
  %144 = icmp eq i64 %140, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %129
  %146 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %147 = load %union.ubifs_key*, %union.ubifs_key** %18, align 8
  %148 = call i64 @key_type(%struct.ubifs_info* %146, %union.ubifs_key* %147)
  %149 = load i64, i64* @UBIFS_DATA_KEY, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  store i32 1, i32* %16, align 4
  br label %152

152:                                              ; preds = %151, %145, %129
  br label %154

153:                                              ; preds = %123
  br label %165

154:                                              ; preds = %152
  br label %225

155:                                              ; preds = %117, %104
  %156 = load i32, i32* %16, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %224

158:                                              ; preds = %155
  %159 = load i32, i32* %9, align 4
  %160 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %161 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %159, %162
  br i1 %163, label %164, label %224

164:                                              ; preds = %158
  store i32 0, i32* %16, align 4
  br label %165

165:                                              ; preds = %164, %153
  %166 = load i32, i32* %9, align 4
  %167 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %168 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %169, 1
  %171 = sdiv i32 %170, 2
  %172 = icmp sge i32 %166, %171
  br i1 %172, label %173, label %223

173:                                              ; preds = %165
  %174 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %175 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %174, i32 0, i32 4
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i64 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  store %union.ubifs_key* %178, %union.ubifs_key** %18, align 8
  %179 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %180 = load %union.ubifs_key*, %union.ubifs_key** %18, align 8
  %181 = call i64 @key_inum(%struct.ubifs_info* %179, %union.ubifs_key* %180)
  %182 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %183 = load %union.ubifs_key*, %union.ubifs_key** %17, align 8
  %184 = call i64 @key_inum(%struct.ubifs_info* %182, %union.ubifs_key* %183)
  %185 = icmp eq i64 %181, %184
  br i1 %185, label %186, label %222

186:                                              ; preds = %173
  %187 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %188 = load %union.ubifs_key*, %union.ubifs_key** %18, align 8
  %189 = call i64 @key_type(%struct.ubifs_info* %187, %union.ubifs_key* %188)
  %190 = load i64, i64* @UBIFS_DATA_KEY, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %222

192:                                              ; preds = %186
  %193 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %194 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %193, i32 0, i32 4
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 1
  store %union.ubifs_key* %199, %union.ubifs_key** %18, align 8
  %200 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %201 = load %union.ubifs_key*, %union.ubifs_key** %18, align 8
  %202 = call i64 @key_inum(%struct.ubifs_info* %200, %union.ubifs_key* %201)
  %203 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %204 = load %union.ubifs_key*, %union.ubifs_key** %17, align 8
  %205 = call i64 @key_inum(%struct.ubifs_info* %203, %union.ubifs_key* %204)
  %206 = icmp ne i64 %202, %205
  br i1 %206, label %213, label %207

207:                                              ; preds = %192
  %208 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %209 = load %union.ubifs_key*, %union.ubifs_key** %18, align 8
  %210 = call i64 @key_type(%struct.ubifs_info* %208, %union.ubifs_key* %209)
  %211 = load i64, i64* @UBIFS_DATA_KEY, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %221

213:                                              ; preds = %207, %192
  %214 = load i32, i32* %9, align 4
  store i32 %214, i32* %14, align 4
  %215 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %216 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* %14, align 4
  %219 = sub nsw i32 %217, %218
  store i32 %219, i32* %15, align 4
  %220 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  store %struct.ubifs_znode* %220, %struct.ubifs_znode** %11, align 8
  br label %270

221:                                              ; preds = %207
  br label %222

222:                                              ; preds = %221, %186, %173
  br label %223

223:                                              ; preds = %222, %165
  br label %224

224:                                              ; preds = %223, %158, %155
  br label %225

225:                                              ; preds = %224, %154
  %226 = load i32, i32* %16, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %225
  %229 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %230 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  store i32 %231, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %243

232:                                              ; preds = %225
  %233 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %234 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = add nsw i32 %235, 1
  %237 = sdiv i32 %236, 2
  store i32 %237, i32* %14, align 4
  %238 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %239 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* %14, align 4
  %242 = sub nsw i32 %240, %241
  store i32 %242, i32* %15, align 4
  br label %243

243:                                              ; preds = %232, %228
  %244 = load i32, i32* %9, align 4
  %245 = load i32, i32* %14, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %253

247:                                              ; preds = %243
  %248 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  store %struct.ubifs_znode* %248, %struct.ubifs_znode** %11, align 8
  %249 = load i32, i32* %15, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %15, align 4
  %251 = load i32, i32* %14, align 4
  %252 = sub nsw i32 %251, 1
  store i32 %252, i32* %14, align 4
  br label %269

253:                                              ; preds = %243
  %254 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  store %struct.ubifs_znode* %254, %struct.ubifs_znode** %11, align 8
  %255 = load i32, i32* %14, align 4
  %256 = load i32, i32* %9, align 4
  %257 = sub nsw i32 %256, %255
  store i32 %257, i32* %9, align 4
  %258 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %259 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %253
  %263 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %264 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %265 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %264, i32 0, i32 3
  %266 = load %struct.ubifs_znode*, %struct.ubifs_znode** %265, align 8
  %267 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %266, i32 0, i32 3
  store %struct.ubifs_znode* %263, %struct.ubifs_znode** %267, align 8
  br label %268

268:                                              ; preds = %262, %253
  br label %269

269:                                              ; preds = %268, %247
  br label %270

270:                                              ; preds = %269, %213
  %271 = load i32, i32* @DIRTY_ZNODE, align 4
  %272 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %273 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %272, i32 0, i32 5
  %274 = call i32 @__set_bit(i32 %271, i32* %273)
  %275 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %276 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %275, i32 0, i32 2
  %277 = call i32 @atomic_long_inc(i32* %276)
  %278 = load i32, i32* %15, align 4
  %279 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %280 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %279, i32 0, i32 0
  store i32 %278, i32* %280, align 8
  %281 = load i32, i32* %14, align 4
  %282 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %283 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %282, i32 0, i32 0
  store i32 %281, i32* %283, align 8
  %284 = load i32, i32* %15, align 4
  %285 = load i32, i32* %14, align 4
  %286 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %284, i32 %285)
  store i32 0, i32* %13, align 4
  br label %287

287:                                              ; preds = %346, %270
  %288 = load i32, i32* %13, align 4
  %289 = load i32, i32* %15, align 4
  %290 = icmp slt i32 %288, %289
  br i1 %290, label %291, label %349

291:                                              ; preds = %287
  %292 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %293 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %292, i32 0, i32 4
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** %293, align 8
  %295 = load i32, i32* %13, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i64 %296
  %298 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %299 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %298, i32 0, i32 4
  %300 = load %struct.TYPE_4__*, %struct.TYPE_4__** %299, align 8
  %301 = load i32, i32* %14, align 4
  %302 = load i32, i32* %13, align 4
  %303 = add nsw i32 %301, %302
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i64 %304
  %306 = bitcast %struct.TYPE_4__* %297 to i8*
  %307 = bitcast %struct.TYPE_4__* %305 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %306, i8* align 8 %307, i64 40, i1 false)
  %308 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %309 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %345

312:                                              ; preds = %291
  %313 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %314 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %313, i32 0, i32 4
  %315 = load %struct.TYPE_4__*, %struct.TYPE_4__** %314, align 8
  %316 = load i32, i32* %13, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 0
  %320 = load %struct.ubifs_znode*, %struct.ubifs_znode** %319, align 8
  %321 = icmp ne %struct.ubifs_znode* %320, null
  br i1 %321, label %322, label %344

322:                                              ; preds = %312
  %323 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %324 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %325 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %324, i32 0, i32 4
  %326 = load %struct.TYPE_4__*, %struct.TYPE_4__** %325, align 8
  %327 = load i32, i32* %13, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 0
  %331 = load %struct.ubifs_znode*, %struct.ubifs_znode** %330, align 8
  %332 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %331, i32 0, i32 3
  store %struct.ubifs_znode* %323, %struct.ubifs_znode** %332, align 8
  %333 = load i32, i32* %13, align 4
  %334 = sext i32 %333 to i64
  %335 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %336 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %335, i32 0, i32 4
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** %336, align 8
  %338 = load i32, i32* %13, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 0
  %342 = load %struct.ubifs_znode*, %struct.ubifs_znode** %341, align 8
  %343 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %342, i32 0, i32 2
  store i64 %334, i64* %343, align 8
  br label %344

344:                                              ; preds = %322, %312
  br label %345

345:                                              ; preds = %344, %291
  br label %346

346:                                              ; preds = %345
  %347 = load i32, i32* %13, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %13, align 4
  br label %287

349:                                              ; preds = %287
  %350 = load i32, i32* %9, align 4
  %351 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %352 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = load %union.ubifs_key*, %union.ubifs_key** %17, align 8
  %355 = call i32 @DBGKEY(%union.ubifs_key* %354)
  %356 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %350, i32 %353, i32 %355)
  %357 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %358 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %359 = load i32, i32* %9, align 4
  %360 = call i32 @insert_zbranch(%struct.ubifs_znode* %357, %struct.ubifs_zbranch* %358, i32 %359)
  %361 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %362 = icmp ne %struct.ubifs_znode* %361, null
  br i1 %362, label %363, label %404

363:                                              ; preds = %349
  %364 = load i32, i32* %9, align 4
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %379

366:                                              ; preds = %363
  %367 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %368 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %369 = icmp eq %struct.ubifs_znode* %367, %368
  br i1 %369, label %370, label %379

370:                                              ; preds = %366
  %371 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %372 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %371, i32 0, i32 2
  %373 = load i64, i64* %372, align 8
  %374 = icmp eq i64 %373, 0
  br i1 %374, label %375, label %379

375:                                              ; preds = %370
  %376 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %377 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %378 = call i32 @correct_parent_keys(%struct.ubifs_info* %376, %struct.ubifs_znode* %377)
  br label %379

379:                                              ; preds = %375, %370, %366, %363
  %380 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %381 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %380, i32 0, i32 2
  %382 = load i64, i64* %381, align 8
  %383 = add nsw i64 %382, 1
  %384 = trunc i64 %383 to i32
  store i32 %384, i32* %9, align 4
  %385 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %386 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %385, i32 0, i32 4
  %387 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %388 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %387, i32 0, i32 4
  %389 = load %struct.TYPE_4__*, %struct.TYPE_4__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i64 0
  %391 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %390, i32 0, i32 1
  %392 = bitcast %union.ubifs_key* %386 to i8*
  %393 = bitcast %union.ubifs_key* %391 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %392, i8* align 8 %393, i64 4, i1 false)
  %394 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %395 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %396 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %395, i32 0, i32 3
  store %struct.ubifs_znode* %394, %struct.ubifs_znode** %396, align 8
  %397 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %398 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %397, i32 0, i32 2
  store i64 0, i64* %398, align 8
  %399 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %400 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %399, i32 0, i32 1
  store i64 0, i64* %400, align 8
  %401 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %402 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %401, i32 0, i32 0
  store i64 0, i64* %402, align 8
  %403 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  store %struct.ubifs_znode* %403, %struct.ubifs_znode** %7, align 8
  br label %33

404:                                              ; preds = %349
  %405 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %406 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = add nsw i32 %407, 1
  %409 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %408)
  %410 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %411 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %410, i32 0, i32 3
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* @GFP_NOFS, align 4
  %414 = call %struct.ubifs_znode* @kzalloc(i32 %412, i32 %413)
  store %struct.ubifs_znode* %414, %struct.ubifs_znode** %11, align 8
  %415 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %416 = icmp ne %struct.ubifs_znode* %415, null
  br i1 %416, label %420, label %417

417:                                              ; preds = %404
  %418 = load i32, i32* @ENOMEM, align 4
  %419 = sub nsw i32 0, %418
  store i32 %419, i32* %5, align 4
  br label %522

420:                                              ; preds = %404
  %421 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %422 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %421, i32 0, i32 0
  store i32 2, i32* %422, align 8
  %423 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %424 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = add nsw i32 %425, 1
  %427 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %428 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %427, i32 0, i32 1
  store i32 %426, i32* %428, align 4
  %429 = load i32, i32* @DIRTY_ZNODE, align 4
  %430 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %431 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %430, i32 0, i32 5
  %432 = call i32 @__set_bit(i32 %429, i32* %431)
  %433 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %434 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %433, i32 0, i32 2
  %435 = call i32 @atomic_long_inc(i32* %434)
  %436 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %437 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %436, i32 0, i32 4
  %438 = load %struct.TYPE_4__*, %struct.TYPE_4__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %438, i64 0
  %440 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %439, i32 0, i32 1
  %441 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %442 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %441, i32 0, i32 4
  %443 = load %struct.TYPE_4__*, %struct.TYPE_4__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %443, i64 0
  %445 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %444, i32 0, i32 1
  %446 = bitcast %union.ubifs_key* %440 to i8*
  %447 = bitcast %union.ubifs_key* %445 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %446, i8* align 8 %447, i64 4, i1 false)
  %448 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %449 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %450 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %449, i32 0, i32 4
  %451 = load %struct.TYPE_4__*, %struct.TYPE_4__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %451, i64 0
  %453 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %452, i32 0, i32 0
  store %struct.ubifs_znode* %448, %struct.ubifs_znode** %453, align 8
  %454 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %455 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %454, i32 0, i32 1
  %456 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %455, i32 0, i32 3
  %457 = load i64, i64* %456, align 8
  %458 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %459 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %458, i32 0, i32 4
  %460 = load %struct.TYPE_4__*, %struct.TYPE_4__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %460, i64 0
  %462 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %461, i32 0, i32 4
  store i64 %457, i64* %462, align 8
  %463 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %464 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %463, i32 0, i32 1
  %465 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %464, i32 0, i32 2
  %466 = load i64, i64* %465, align 8
  %467 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %468 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %467, i32 0, i32 4
  %469 = load %struct.TYPE_4__*, %struct.TYPE_4__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %469, i64 0
  %471 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %470, i32 0, i32 3
  store i64 %466, i64* %471, align 8
  %472 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %473 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %472, i32 0, i32 1
  %474 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %473, i32 0, i32 1
  %475 = load i64, i64* %474, align 8
  %476 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %477 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %476, i32 0, i32 4
  %478 = load %struct.TYPE_4__*, %struct.TYPE_4__** %477, align 8
  %479 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %478, i64 0
  %480 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %479, i32 0, i32 2
  store i64 %475, i64* %480, align 8
  %481 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %482 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %481, i32 0, i32 4
  %483 = load %struct.TYPE_4__*, %struct.TYPE_4__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %483, i64 1
  %485 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %484, i32 0, i32 1
  %486 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %487 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %486, i32 0, i32 4
  %488 = load %struct.TYPE_4__*, %struct.TYPE_4__** %487, align 8
  %489 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %488, i64 0
  %490 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %489, i32 0, i32 1
  %491 = bitcast %union.ubifs_key* %485 to i8*
  %492 = bitcast %union.ubifs_key* %490 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %491, i8* align 8 %492, i64 4, i1 false)
  %493 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %494 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %495 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %494, i32 0, i32 4
  %496 = load %struct.TYPE_4__*, %struct.TYPE_4__** %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %496, i64 1
  %498 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %497, i32 0, i32 0
  store %struct.ubifs_znode* %493, %struct.ubifs_znode** %498, align 8
  %499 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %500 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %499, i32 0, i32 1
  %501 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %500, i32 0, i32 3
  store i64 0, i64* %501, align 8
  %502 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %503 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %502, i32 0, i32 1
  %504 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %503, i32 0, i32 2
  store i64 0, i64* %504, align 8
  %505 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %506 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %505, i32 0, i32 1
  %507 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %506, i32 0, i32 1
  store i64 0, i64* %507, align 8
  %508 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %509 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %510 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %509, i32 0, i32 1
  %511 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %510, i32 0, i32 0
  store %struct.ubifs_znode* %508, %struct.ubifs_znode** %511, align 8
  %512 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %513 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %514 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %513, i32 0, i32 3
  store %struct.ubifs_znode* %512, %struct.ubifs_znode** %514, align 8
  %515 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %516 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %515, i32 0, i32 2
  store i64 1, i64* %516, align 8
  %517 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %518 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %519 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %518, i32 0, i32 3
  store %struct.ubifs_znode* %517, %struct.ubifs_znode** %519, align 8
  %520 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %521 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %520, i32 0, i32 2
  store i64 0, i64* %521, align 8
  store i32 0, i32* %5, align 4
  br label %522

522:                                              ; preds = %420, %417, %101, %77
  %523 = load i32, i32* %5, align 4
  ret i32 %523
}

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @dbg_tnc(i8*, i32, ...) #1

declare dso_local i32 @DBGKEY(%union.ubifs_key*) #1

declare dso_local i32 @insert_zbranch(%struct.ubifs_znode*, %struct.ubifs_zbranch*, i32) #1

declare dso_local i32 @correct_parent_keys(%struct.ubifs_info*, %struct.ubifs_znode*) #1

declare dso_local i32 @ins_clr_old_idx_znode(%struct.ubifs_info*, %struct.ubifs_znode*) #1

declare dso_local %struct.ubifs_znode* @kzalloc(i32, i32) #1

declare dso_local i64 @key_type(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i64 @key_inum(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

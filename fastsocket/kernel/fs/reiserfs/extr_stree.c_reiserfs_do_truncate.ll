; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_stree.c_reiserfs_do_truncate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_stree.c_reiserfs_do_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.reiserfs_transaction_handle = type { i32, i32 }
%struct.inode = type { i32, i8*, i8*, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.page = type { i32 }
%struct.item_head = type { i32 }
%struct.cpu_key = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.cpu_key* }

@s_search_path = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@TYPE_DIRECT = common dso_local global i32 0, align 4
@IO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"vs-5657\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"i/o failure occurred trying to truncate %K\00", align 1
@EIO = common dso_local global i32 0, align 4
@POSITION_FOUND = common dso_local global i32 0, align 4
@FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"PAP-5660\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"wrong result %d of search for %K\00", align 1
@PATH_READA = common dso_local global i32 0, align 4
@PATH_READA_BACK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"vs-5665\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"reiserfs_cut_from_item failed\00", align 1
@.str.6 = private unnamed_addr constant [97 x i8] c"PAP-5670: reiserfs_cut_from_item: too many bytes deleted: deleted %d, file_size %lu, item_key %K\00", align 1
@JOURNAL_FOR_FREE_BLOCK_AND_UPDATE_SD = common dso_local global i64 0, align 8
@CURRENT_TIME_SEC = common dso_local global i8* null, align 8
@JOURNAL_PER_BALANCE_CNT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [74 x i8] c"PAP-5680: truncate did not finish: new_file_size %Ld, current %Ld, oid %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_do_truncate(%struct.reiserfs_transaction_handle* %0, %struct.inode* %1, %struct.page* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.reiserfs_transaction_handle*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.item_head*, align 8
  %11 = alloca %struct.cpu_key, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.page* %2, %struct.page** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load i64, i64* bitcast (%struct.TYPE_16__* @s_search_path to i64*), align 4
  %21 = call i32 @INITIALIZE_PATH(i64 %20)
  store i32 0, i32* %16, align 4
  %22 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %6, align 8
  %23 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @S_ISREG(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %4
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @S_ISDIR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %34
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @S_ISLNK(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %259

47:                                               ; preds = %40, %34, %4
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @S_ISDIR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %6, align 8
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = call i32 @truncate_directory(%struct.reiserfs_transaction_handle* %54, %struct.inode* %55)
  store i32 0, i32* %5, align 4
  br label %259

57:                                               ; preds = %47
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %13, align 4
  %61 = load %struct.inode*, %struct.inode** %7, align 8
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = call i32 @max_reiserfs_offset(%struct.inode* %62)
  %64 = load i32, i32* @TYPE_DIRECT, align 4
  %65 = call i32 @make_cpu_key(%struct.cpu_key* %11, %struct.inode* %61, i32 %63, i32 %64, i32 3)
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 3
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  %69 = call i32 @search_for_position_by_key(%struct.TYPE_15__* %68, %struct.cpu_key* %11, %struct.TYPE_16__* @s_search_path)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* @IO_ERROR, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %57
  %74 = load %struct.inode*, %struct.inode** %7, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 3
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = call i32 (%struct.TYPE_15__*, i8*, i8*, ...) @reiserfs_error(%struct.TYPE_15__* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), %struct.cpu_key* %11)
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %16, align 4
  br label %256

80:                                               ; preds = %57
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* @POSITION_FOUND, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* @FILE_NOT_FOUND, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %84, %80
  %89 = load %struct.inode*, %struct.inode** %7, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 3
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = call i32 (%struct.TYPE_15__*, i8*, i8*, ...) @reiserfs_error(%struct.TYPE_15__* %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %92, %struct.cpu_key* %11)
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %16, align 4
  br label %256

96:                                               ; preds = %84
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_search_path, i32 0, i32 1), align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_search_path, i32 0, i32 1), align 4
  %99 = call %struct.item_head* @PATH_PITEM_HEAD(%struct.TYPE_16__* @s_search_path)
  store %struct.item_head* %99, %struct.item_head** %10, align 8
  %100 = load %struct.item_head*, %struct.item_head** %10, align 8
  %101 = call i64 @is_statdata_le_ih(%struct.item_head* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store i32 0, i32* %12, align 4
  br label %118

104:                                              ; preds = %96
  %105 = load %struct.item_head*, %struct.item_head** %10, align 8
  %106 = call i32 @le_ih_k_offset(%struct.item_head* %105)
  store i32 %106, i32* %17, align 4
  %107 = load %struct.item_head*, %struct.item_head** %10, align 8
  %108 = load %struct.inode*, %struct.inode** %7, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 3
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @op_bytes_number(%struct.item_head* %107, i32 %112)
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* %18, align 4
  %116 = add nsw i32 %114, %115
  %117 = sub nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %104, %103
  %119 = load i32, i32* %13, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load i32, i32* @PATH_READA, align 4
  %123 = load i32, i32* @PATH_READA_BACK, align 4
  %124 = or i32 %122, %123
  store i32 %124, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_search_path, i32 0, i32 0), align 4
  br label %125

125:                                              ; preds = %121, %118
  %126 = load i32, i32* %12, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %128, %125
  br label %242

133:                                              ; preds = %128
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @set_cpu_key_k_offset(%struct.cpu_key* %11, i32 %134)
  br label %136

136:                                              ; preds = %228, %133
  %137 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %6, align 8
  %138 = load %struct.inode*, %struct.inode** %7, align 8
  %139 = load %struct.page*, %struct.page** %8, align 8
  %140 = load i32, i32* %13, align 4
  %141 = call i32 @reiserfs_cut_from_item(%struct.reiserfs_transaction_handle* %137, %struct.TYPE_16__* @s_search_path, %struct.cpu_key* %11, %struct.inode* %138, %struct.page* %139, i32 %140)
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %14, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %136
  %145 = load %struct.inode*, %struct.inode** %7, align 8
  %146 = getelementptr inbounds %struct.inode, %struct.inode* %145, i32 0, i32 3
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %146, align 8
  %148 = call i32 @reiserfs_warning(%struct.TYPE_15__* %147, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %149 = call i32 @reiserfs_check_path(%struct.TYPE_16__* @s_search_path)
  store i32 0, i32* %5, align 4
  br label %259

150:                                              ; preds = %136
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* %12, align 4
  %153 = icmp sgt i32 %151, %152
  %154 = zext i1 %153 to i32
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @RFALSE(i32 %154, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.6, i64 0, i64 0), i32 %155, i32 %156, %struct.cpu_key* %11)
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %12, align 4
  %160 = sub nsw i32 %159, %158
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @set_cpu_key_k_offset(%struct.cpu_key* %11, i32 %161)
  %163 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %6, align 8
  %164 = call i64 @journal_transaction_should_end(%struct.reiserfs_transaction_handle* %163, i32 0)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %150
  %167 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %6, align 8
  %168 = call i64 @reiserfs_transaction_free_space(%struct.reiserfs_transaction_handle* %167)
  %169 = load i64, i64* @JOURNAL_FOR_FREE_BLOCK_AND_UPDATE_SD, align 8
  %170 = icmp sle i64 %168, %169
  br i1 %170, label %171, label %215

171:                                              ; preds = %166, %150
  %172 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %6, align 8
  %173 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %19, align 4
  %175 = call i32 @pathrelse(%struct.TYPE_16__* @s_search_path)
  %176 = load i32, i32* %9, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %171
  %179 = load i8*, i8** @CURRENT_TIME_SEC, align 8
  %180 = load %struct.inode*, %struct.inode** %7, align 8
  %181 = getelementptr inbounds %struct.inode, %struct.inode* %180, i32 0, i32 2
  store i8* %179, i8** %181, align 8
  %182 = load i8*, i8** @CURRENT_TIME_SEC, align 8
  %183 = load %struct.inode*, %struct.inode** %7, align 8
  %184 = getelementptr inbounds %struct.inode, %struct.inode* %183, i32 0, i32 1
  store i8* %182, i8** %184, align 8
  br label %185

185:                                              ; preds = %178, %171
  %186 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %6, align 8
  %187 = load %struct.inode*, %struct.inode** %7, align 8
  %188 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %186, %struct.inode* %187)
  %189 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %6, align 8
  %190 = load %struct.inode*, %struct.inode** %7, align 8
  %191 = getelementptr inbounds %struct.inode, %struct.inode* %190, i32 0, i32 3
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %191, align 8
  %193 = load i32, i32* %19, align 4
  %194 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %189, %struct.TYPE_15__* %192, i32 %193)
  store i32 %194, i32* %16, align 4
  %195 = load i32, i32* %16, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %185
  br label %256

198:                                              ; preds = %185
  %199 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %6, align 8
  %200 = load %struct.inode*, %struct.inode** %7, align 8
  %201 = getelementptr inbounds %struct.inode, %struct.inode* %200, i32 0, i32 3
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %201, align 8
  %203 = load i64, i64* @JOURNAL_FOR_FREE_BLOCK_AND_UPDATE_SD, align 8
  %204 = load i32, i32* @JOURNAL_PER_BALANCE_CNT, align 4
  %205 = mul nsw i32 %204, 4
  %206 = sext i32 %205 to i64
  %207 = add nsw i64 %203, %206
  %208 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %199, %struct.TYPE_15__* %202, i64 %207)
  store i32 %208, i32* %16, align 4
  %209 = load i32, i32* %16, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %198
  br label %256

212:                                              ; preds = %198
  %213 = load %struct.inode*, %struct.inode** %7, align 8
  %214 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %213)
  br label %215

215:                                              ; preds = %212, %166
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %12, align 4
  %218 = load i32, i32* %13, align 4
  %219 = call i32 @ROUND_UP(i32 %218)
  %220 = icmp sgt i32 %217, %219
  br i1 %220, label %221, label %228

221:                                              ; preds = %216
  %222 = load %struct.inode*, %struct.inode** %7, align 8
  %223 = getelementptr inbounds %struct.inode, %struct.inode* %222, i32 0, i32 3
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %223, align 8
  %225 = call i32 @search_for_position_by_key(%struct.TYPE_15__* %224, %struct.cpu_key* %11, %struct.TYPE_16__* @s_search_path)
  %226 = load i32, i32* @POSITION_FOUND, align 4
  %227 = icmp eq i32 %225, %226
  br label %228

228:                                              ; preds = %221, %216
  %229 = phi i1 [ false, %216 ], [ %227, %221 ]
  br i1 %229, label %136, label %230

230:                                              ; preds = %228
  %231 = load i32, i32* %12, align 4
  %232 = load i32, i32* %13, align 4
  %233 = call i32 @ROUND_UP(i32 %232)
  %234 = icmp sgt i32 %231, %233
  %235 = zext i1 %234 to i32
  %236 = load i32, i32* %13, align 4
  %237 = load i32, i32* %12, align 4
  %238 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %11, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 0
  %240 = load %struct.cpu_key*, %struct.cpu_key** %239, align 8
  %241 = call i32 @RFALSE(i32 %235, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.7, i64 0, i64 0), i32 %236, i32 %237, %struct.cpu_key* %240)
  br label %242

242:                                              ; preds = %230, %132
  %243 = load i32, i32* %9, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %242
  %246 = load i8*, i8** @CURRENT_TIME_SEC, align 8
  %247 = load %struct.inode*, %struct.inode** %7, align 8
  %248 = getelementptr inbounds %struct.inode, %struct.inode* %247, i32 0, i32 2
  store i8* %246, i8** %248, align 8
  %249 = load i8*, i8** @CURRENT_TIME_SEC, align 8
  %250 = load %struct.inode*, %struct.inode** %7, align 8
  %251 = getelementptr inbounds %struct.inode, %struct.inode* %250, i32 0, i32 1
  store i8* %249, i8** %251, align 8
  br label %252

252:                                              ; preds = %245, %242
  %253 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %6, align 8
  %254 = load %struct.inode*, %struct.inode** %7, align 8
  %255 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %253, %struct.inode* %254)
  br label %256

256:                                              ; preds = %252, %211, %197, %88, %73
  %257 = call i32 @pathrelse(%struct.TYPE_16__* @s_search_path)
  %258 = load i32, i32* %16, align 4
  store i32 %258, i32* %5, align 4
  br label %259

259:                                              ; preds = %256, %144, %53, %46
  %260 = load i32, i32* %5, align 4
  ret i32 %260
}

declare dso_local i32 @INITIALIZE_PATH(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @truncate_directory(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @make_cpu_key(%struct.cpu_key*, %struct.inode*, i32, i32, i32) #1

declare dso_local i32 @max_reiserfs_offset(%struct.inode*) #1

declare dso_local i32 @search_for_position_by_key(%struct.TYPE_15__*, %struct.cpu_key*, %struct.TYPE_16__*) #1

declare dso_local i32 @reiserfs_error(%struct.TYPE_15__*, i8*, i8*, ...) #1

declare dso_local %struct.item_head* @PATH_PITEM_HEAD(%struct.TYPE_16__*) #1

declare dso_local i64 @is_statdata_le_ih(%struct.item_head*) #1

declare dso_local i32 @le_ih_k_offset(%struct.item_head*) #1

declare dso_local i32 @op_bytes_number(%struct.item_head*, i32) #1

declare dso_local i32 @set_cpu_key_k_offset(%struct.cpu_key*, i32) #1

declare dso_local i32 @reiserfs_cut_from_item(%struct.reiserfs_transaction_handle*, %struct.TYPE_16__*, %struct.cpu_key*, %struct.inode*, %struct.page*, i32) #1

declare dso_local i32 @reiserfs_warning(%struct.TYPE_15__*, i8*, i8*) #1

declare dso_local i32 @reiserfs_check_path(%struct.TYPE_16__*) #1

declare dso_local i32 @RFALSE(i32, i8*, i32, i32, %struct.cpu_key*) #1

declare dso_local i64 @journal_transaction_should_end(%struct.reiserfs_transaction_handle*, i32) #1

declare dso_local i64 @reiserfs_transaction_free_space(%struct.reiserfs_transaction_handle*) #1

declare dso_local i32 @pathrelse(%struct.TYPE_16__*) #1

declare dso_local i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, %struct.TYPE_15__*, i64) #1

declare dso_local i32 @reiserfs_update_inode_transaction(%struct.inode*) #1

declare dso_local i32 @ROUND_UP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

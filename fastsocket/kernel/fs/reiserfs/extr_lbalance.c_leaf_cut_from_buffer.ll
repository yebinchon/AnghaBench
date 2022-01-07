; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_lbalance.c_leaf_cut_from_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_lbalance.c_leaf_cut_from_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_info = type { i64, i32, i32, %struct.buffer_head* }
%struct.buffer_head = type { i32, i64 }
%struct.block_head = type { i32 }
%struct.item_head = type { i32 }
%struct.disk_child = type { i32 }

@.str = private unnamed_addr constant [79 x i8] c"when 0-th enrty of item is cut, that item must be first in the node, not %d-th\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"10195: item is stat data\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"10200: invalid offset (%lu) or trunc_size (%lu) or ih_item_len (%lu)\00", align 1
@UNFM_P_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"10205: invalid ih_free_space (%h)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @leaf_cut_from_buffer(%struct.buffer_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.buffer_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.block_head*, align 8
  %12 = alloca %struct.item_head*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.disk_child*, align 8
  store %struct.buffer_info* %0, %struct.buffer_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.buffer_info*, %struct.buffer_info** %5, align 8
  %18 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %17, i32 0, i32 3
  %19 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  store %struct.buffer_head* %19, %struct.buffer_head** %10, align 8
  %20 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %21 = call %struct.block_head* @B_BLK_HEAD(%struct.buffer_head* %20)
  store %struct.block_head* %21, %struct.block_head** %11, align 8
  %22 = load %struct.block_head*, %struct.block_head** %11, align 8
  %23 = call i32 @blkh_nr_item(%struct.block_head* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.item_head* @B_N_PITEM_HEAD(%struct.buffer_head* %24, i32 %25)
  store %struct.item_head* %26, %struct.item_head** %12, align 8
  %27 = load %struct.item_head*, %struct.item_head** %12, align 8
  %28 = call i64 @is_direntry_le_ih(%struct.item_head* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %4
  %31 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %32 = load %struct.item_head*, %struct.item_head** %12, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @leaf_cut_entries(%struct.buffer_head* %31, %struct.item_head* %32, i32 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (i32, i8*, ...) @RFALSE(i32 %39, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.item_head*, %struct.item_head** %12, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %44 = load %struct.item_head*, %struct.item_head** %12, align 8
  %45 = call i32 @B_I_DEH(%struct.buffer_head* %43, %struct.item_head* %44)
  %46 = call i64 @deh_offset(i32 %45)
  %47 = call i32 @set_le_ih_k_offset(%struct.item_head* %42, i64 %46)
  br label %48

48:                                               ; preds = %38, %30
  br label %138

49:                                               ; preds = %4
  %50 = load %struct.item_head*, %struct.item_head** %12, align 8
  %51 = call i32 @is_statdata_le_ih(%struct.item_head* %50)
  %52 = call i32 (i32, i8*, ...) @RFALSE(i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %56, %57
  %59 = load %struct.item_head*, %struct.item_head** %12, align 8
  %60 = call i32 @ih_item_len(%struct.item_head* %59)
  %61 = icmp ne i32 %58, %60
  br label %62

62:                                               ; preds = %55, %49
  %63 = phi i1 [ false, %49 ], [ %61, %55 ]
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct.item_head*, %struct.item_head** %12, align 8
  %70 = call i32 @ih_item_len(%struct.item_head* %69)
  %71 = sext i32 %70 to i64
  %72 = call i32 (i32, i8*, ...) @RFALSE(i32 %64, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i64 %66, i64 %68, i64 %71)
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %137

75:                                               ; preds = %62
  %76 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %77 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.item_head*, %struct.item_head** %12, align 8
  %80 = call i32 @ih_location(%struct.item_head* %79)
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %78, %81
  %83 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %84 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.item_head*, %struct.item_head** %12, align 8
  %87 = call i32 @ih_location(%struct.item_head* %86)
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %85, %88
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %89, %91
  %93 = load %struct.item_head*, %struct.item_head** %12, align 8
  %94 = call i32 @ih_item_len(%struct.item_head* %93)
  %95 = load i32, i32* %8, align 4
  %96 = sub nsw i32 %94, %95
  %97 = call i32 @memmove(i64 %82, i64 %92, i32 %96)
  %98 = load %struct.item_head*, %struct.item_head** %12, align 8
  %99 = call i64 @is_direct_le_ih(%struct.item_head* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %75
  %102 = load %struct.item_head*, %struct.item_head** %12, align 8
  %103 = load %struct.item_head*, %struct.item_head** %12, align 8
  %104 = call i64 @le_ih_k_offset(%struct.item_head* %103)
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %104, %106
  %108 = call i32 @set_le_ih_k_offset(%struct.item_head* %102, i64 %107)
  br label %136

109:                                              ; preds = %75
  %110 = load %struct.item_head*, %struct.item_head** %12, align 8
  %111 = load %struct.item_head*, %struct.item_head** %12, align 8
  %112 = call i64 @le_ih_k_offset(%struct.item_head* %111)
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @UNFM_P_SIZE, align 4
  %115 = sdiv i32 %113, %114
  %116 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %117 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = mul nsw i32 %115, %118
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %112, %120
  %122 = call i32 @set_le_ih_k_offset(%struct.item_head* %110, i64 %121)
  %123 = load %struct.item_head*, %struct.item_head** %12, align 8
  %124 = call i32 @ih_item_len(%struct.item_head* %123)
  %125 = load i32, i32* %8, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %109
  %128 = load %struct.item_head*, %struct.item_head** %12, align 8
  %129 = call i64 @get_ih_free_space(%struct.item_head* %128)
  %130 = icmp ne i64 %129, 0
  br label %131

131:                                              ; preds = %127, %109
  %132 = phi i1 [ false, %109 ], [ %130, %127 ]
  %133 = zext i1 %132 to i32
  %134 = load %struct.item_head*, %struct.item_head** %12, align 8
  %135 = call i32 (i32, i8*, ...) @RFALSE(i32 %133, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), %struct.item_head* %134)
  br label %136

136:                                              ; preds = %131, %101
  br label %137

137:                                              ; preds = %136, %62
  br label %138

138:                                              ; preds = %137, %48
  %139 = load %struct.item_head*, %struct.item_head** %12, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %6, align 4
  %142 = sub nsw i32 %140, %141
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.item_head, %struct.item_head* %139, i64 %144
  %146 = call i32 @ih_location(%struct.item_head* %145)
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %6, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %138
  %150 = load %struct.item_head*, %struct.item_head** %12, align 8
  %151 = getelementptr inbounds %struct.item_head, %struct.item_head* %150, i64 -1
  %152 = call i32 @ih_location(%struct.item_head* %151)
  br label %157

153:                                              ; preds = %138
  %154 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %155 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  br label %157

157:                                              ; preds = %153, %149
  %158 = phi i32 [ %152, %149 ], [ %156, %153 ]
  store i32 %158, i32* %14, align 4
  %159 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %160 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %161, %163
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %164, %166
  %168 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %169 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i32, i32* %13, align 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %170, %172
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* %13, align 4
  %176 = sub nsw i32 %174, %175
  %177 = load i32, i32* %8, align 4
  %178 = sub nsw i32 %176, %177
  %179 = call i32 @memmove(i64 %167, i64 %173, i32 %178)
  %180 = load %struct.item_head*, %struct.item_head** %12, align 8
  %181 = load %struct.item_head*, %struct.item_head** %12, align 8
  %182 = call i32 @ih_item_len(%struct.item_head* %181)
  %183 = load i32, i32* %8, align 4
  %184 = sub nsw i32 %182, %183
  %185 = call i32 @put_ih_item_len(%struct.item_head* %180, i32 %184)
  %186 = load %struct.item_head*, %struct.item_head** %12, align 8
  %187 = call i64 @is_indirect_le_ih(%struct.item_head* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %157
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load %struct.item_head*, %struct.item_head** %12, align 8
  %194 = call i32 @set_ih_free_space(%struct.item_head* %193, i32 0)
  br label %195

195:                                              ; preds = %192, %189
  br label %196

196:                                              ; preds = %195, %157
  %197 = load i32, i32* %6, align 4
  store i32 %197, i32* %15, align 4
  br label %198

198:                                              ; preds = %219, %196
  %199 = load i32, i32* %15, align 4
  %200 = load i32, i32* %9, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %222

202:                                              ; preds = %198
  %203 = load %struct.item_head*, %struct.item_head** %12, align 8
  %204 = load i32, i32* %15, align 4
  %205 = load i32, i32* %6, align 4
  %206 = sub nsw i32 %204, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.item_head, %struct.item_head* %203, i64 %207
  %209 = load %struct.item_head*, %struct.item_head** %12, align 8
  %210 = load i32, i32* %15, align 4
  %211 = load i32, i32* %6, align 4
  %212 = sub nsw i32 %210, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.item_head, %struct.item_head* %209, i64 %213
  %215 = call i32 @ih_location(%struct.item_head* %214)
  %216 = load i32, i32* %8, align 4
  %217 = add nsw i32 %215, %216
  %218 = call i32 @put_ih_location(%struct.item_head* %208, i32 %217)
  br label %219

219:                                              ; preds = %202
  %220 = load i32, i32* %15, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %15, align 4
  br label %198

222:                                              ; preds = %198
  %223 = load %struct.block_head*, %struct.block_head** %11, align 8
  %224 = load %struct.block_head*, %struct.block_head** %11, align 8
  %225 = call i64 @blkh_free_space(%struct.block_head* %224)
  %226 = load i32, i32* %8, align 4
  %227 = sext i32 %226 to i64
  %228 = add nsw i64 %225, %227
  %229 = call i32 @set_blkh_free_space(%struct.block_head* %223, i64 %228)
  %230 = load %struct.buffer_info*, %struct.buffer_info** %5, align 8
  %231 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %234 = call i32 @do_balance_mark_leaf_dirty(i32 %232, %struct.buffer_head* %233, i32 0)
  %235 = load %struct.buffer_info*, %struct.buffer_info** %5, align 8
  %236 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %261

239:                                              ; preds = %222
  %240 = load %struct.buffer_info*, %struct.buffer_info** %5, align 8
  %241 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.buffer_info*, %struct.buffer_info** %5, align 8
  %244 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = call %struct.disk_child* @B_N_CHILD(i64 %242, i32 %245)
  store %struct.disk_child* %246, %struct.disk_child** %16, align 8
  %247 = load %struct.disk_child*, %struct.disk_child** %16, align 8
  %248 = load %struct.disk_child*, %struct.disk_child** %16, align 8
  %249 = call i64 @dc_size(%struct.disk_child* %248)
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = sub nsw i64 %249, %251
  %253 = call i32 @put_dc_size(%struct.disk_child* %247, i64 %252)
  %254 = load %struct.buffer_info*, %struct.buffer_info** %5, align 8
  %255 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.buffer_info*, %struct.buffer_info** %5, align 8
  %258 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = call i32 @do_balance_mark_internal_dirty(i32 %256, i64 %259, i32 0)
  br label %261

261:                                              ; preds = %239, %222
  ret void
}

declare dso_local %struct.block_head* @B_BLK_HEAD(%struct.buffer_head*) #1

declare dso_local i32 @blkh_nr_item(%struct.block_head*) #1

declare dso_local %struct.item_head* @B_N_PITEM_HEAD(%struct.buffer_head*, i32) #1

declare dso_local i64 @is_direntry_le_ih(%struct.item_head*) #1

declare dso_local i32 @leaf_cut_entries(%struct.buffer_head*, %struct.item_head*, i32, i32) #1

declare dso_local i32 @RFALSE(i32, i8*, ...) #1

declare dso_local i32 @set_le_ih_k_offset(%struct.item_head*, i64) #1

declare dso_local i64 @deh_offset(i32) #1

declare dso_local i32 @B_I_DEH(%struct.buffer_head*, %struct.item_head*) #1

declare dso_local i32 @is_statdata_le_ih(%struct.item_head*) #1

declare dso_local i32 @ih_item_len(%struct.item_head*) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @ih_location(%struct.item_head*) #1

declare dso_local i64 @is_direct_le_ih(%struct.item_head*) #1

declare dso_local i64 @le_ih_k_offset(%struct.item_head*) #1

declare dso_local i64 @get_ih_free_space(%struct.item_head*) #1

declare dso_local i32 @put_ih_item_len(%struct.item_head*, i32) #1

declare dso_local i64 @is_indirect_le_ih(%struct.item_head*) #1

declare dso_local i32 @set_ih_free_space(%struct.item_head*, i32) #1

declare dso_local i32 @put_ih_location(%struct.item_head*, i32) #1

declare dso_local i32 @set_blkh_free_space(%struct.block_head*, i64) #1

declare dso_local i64 @blkh_free_space(%struct.block_head*) #1

declare dso_local i32 @do_balance_mark_leaf_dirty(i32, %struct.buffer_head*, i32) #1

declare dso_local %struct.disk_child* @B_N_CHILD(i64, i32) #1

declare dso_local i32 @put_dc_size(%struct.disk_child*, i64) #1

declare dso_local i64 @dc_size(%struct.disk_child*) #1

declare dso_local i32 @do_balance_mark_internal_dirty(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

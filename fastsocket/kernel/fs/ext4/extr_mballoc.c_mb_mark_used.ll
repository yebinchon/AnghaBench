; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_mballoc.c_mb_mark_used.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_mballoc.c_mb_mark_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_buddy = type { i64, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ext4_free_extent = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_buddy*, %struct.ext4_free_extent*)* @mb_mark_used to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb_mark_used(%struct.ext4_buddy* %0, %struct.ext4_free_extent* %1) #0 {
  %3 = alloca %struct.ext4_buddy*, align 8
  %4 = alloca %struct.ext4_free_extent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.ext4_buddy* %0, %struct.ext4_buddy** %3, align 8
  store %struct.ext4_free_extent* %1, %struct.ext4_free_extent** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %4, align 8
  %15 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %4, align 8
  %18 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %21, %22
  %24 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %25 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 3
  %30 = icmp sgt i32 %23, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %34 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %4, align 8
  %37 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %43 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %42, i32 0, i32 2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %46 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @ext4_group_lock_ptr(%struct.TYPE_6__* %44, i64 %47)
  %49 = call i32 @assert_spin_locked(i32 %48)
  %50 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %51 = call i32 @mb_check_buddy(%struct.ext4_buddy* %50)
  %52 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @mb_mark_used_double(%struct.ext4_buddy* %52, i32 %53, i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %58 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, %56
  store i32 %62, i32* %60, align 8
  %63 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %64 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %2
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %73 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %72, i32 0, i32 1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, %71
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %70, %2
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %85 = call i32 @EXT4_MB_BITMAP(%struct.ext4_buddy* %84)
  %86 = call i32 @mb_test_bit(i32 %83, i32 %85)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %81, %78
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %91, %92
  %94 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %95 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %94, i32 0, i32 2
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = call %struct.TYPE_8__* @EXT4_SB(%struct.TYPE_6__* %96)
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %93, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %90
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %104, %105
  %107 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %108 = call i32 @EXT4_MB_BITMAP(%struct.ext4_buddy* %107)
  %109 = call i32 @mb_test_bit(i32 %106, i32 %108)
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %103, %90
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %113
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %121 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %120, i32 0, i32 1
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  br label %140

126:                                              ; preds = %116, %113
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %139, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %129
  %133 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %134 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %133, i32 0, i32 1
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %132, %129, %126
  br label %140

140:                                              ; preds = %139, %119
  br label %141

141:                                              ; preds = %206, %160, %140
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %265

144:                                              ; preds = %141
  %145 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @mb_find_order_for_block(%struct.ext4_buddy* %145, i32 %146)
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* %5, align 4
  %150 = ashr i32 %148, %149
  %151 = load i32, i32* %5, align 4
  %152 = shl i32 %150, %151
  %153 = load i32, i32* %9, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %198

155:                                              ; preds = %144
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %5, align 4
  %158 = shl i32 1, %157
  %159 = icmp sge i32 %156, %158
  br i1 %159, label %160, label %198

160:                                              ; preds = %155
  %161 = load i32, i32* %5, align 4
  %162 = shl i32 1, %161
  store i32 %162, i32* %6, align 4
  %163 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %164 = load i32, i32* %5, align 4
  %165 = call i8* @mb_find_buddy(%struct.ext4_buddy* %163, i32 %164, i32* %7)
  store i8* %165, i8** %13, align 8
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %5, align 4
  %168 = ashr i32 %166, %167
  %169 = load i32, i32* %7, align 4
  %170 = icmp sge i32 %168, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 @BUG_ON(i32 %171)
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %5, align 4
  %175 = ashr i32 %173, %174
  %176 = load i8*, i8** %13, align 8
  %177 = call i32 @mb_set_bit(i32 %175, i8* %176)
  %178 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %179 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %178, i32 0, i32 1
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %185, align 4
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* %9, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %9, align 4
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* %10, align 4
  %193 = sub nsw i32 %192, %191
  store i32 %193, i32* %10, align 4
  %194 = load i32, i32* %10, align 4
  %195 = icmp slt i32 %194, 0
  %196 = zext i1 %195 to i32
  %197 = call i32 @BUG_ON(i32 %196)
  br label %141

198:                                              ; preds = %155, %144
  %199 = load i32, i32* %11, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %198
  %202 = load i32, i32* %10, align 4
  %203 = load i32, i32* %5, align 4
  %204 = shl i32 %203, 16
  %205 = or i32 %202, %204
  store i32 %205, i32* %11, align 4
  br label %206

206:                                              ; preds = %201, %198
  %207 = load i32, i32* %5, align 4
  %208 = icmp sle i32 %207, 0
  %209 = zext i1 %208 to i32
  %210 = call i32 @BUG_ON(i32 %209)
  %211 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %212 = load i32, i32* %5, align 4
  %213 = call i8* @mb_find_buddy(%struct.ext4_buddy* %211, i32 %212, i32* %7)
  store i8* %213, i8** %13, align 8
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* %5, align 4
  %216 = ashr i32 %214, %215
  %217 = load i8*, i8** %13, align 8
  %218 = call i32 @mb_set_bit(i32 %216, i8* %217)
  %219 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %220 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %219, i32 0, i32 1
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 2
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %5, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, -1
  store i32 %228, i32* %226, align 4
  %229 = load i32, i32* %5, align 4
  %230 = add nsw i32 %229, -1
  store i32 %230, i32* %5, align 4
  %231 = load i32, i32* %9, align 4
  %232 = load i32, i32* %5, align 4
  %233 = ashr i32 %231, %232
  %234 = and i32 %233, -2
  store i32 %234, i32* %8, align 4
  %235 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %236 = load i32, i32* %5, align 4
  %237 = call i8* @mb_find_buddy(%struct.ext4_buddy* %235, i32 %236, i32* %7)
  store i8* %237, i8** %13, align 8
  %238 = load i32, i32* %8, align 4
  %239 = load i8*, i8** %13, align 8
  %240 = call i32 @mb_clear_bit(i32 %238, i8* %239)
  %241 = load i32, i32* %8, align 4
  %242 = add nsw i32 %241, 1
  %243 = load i8*, i8** %13, align 8
  %244 = call i32 @mb_clear_bit(i32 %242, i8* %243)
  %245 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %246 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %245, i32 0, i32 1
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %5, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %252, align 4
  %255 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %256 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %255, i32 0, i32 1
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 2
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %5, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %262, align 4
  br label %141

265:                                              ; preds = %141
  %266 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %267 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %266, i32 0, i32 2
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %267, align 8
  %269 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %270 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %269, i32 0, i32 1
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %270, align 8
  %272 = call i32 @mb_set_largest_free_order(%struct.TYPE_6__* %268, %struct.TYPE_7__* %271)
  %273 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %274 = call i32 @EXT4_MB_BITMAP(%struct.ext4_buddy* %273)
  %275 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %4, align 8
  %276 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* %12, align 4
  %279 = call i32 @mb_set_bits(i32 %274, i32 %277, i32 %278)
  %280 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %281 = call i32 @mb_check_buddy(%struct.ext4_buddy* %280)
  %282 = load i32, i32* %11, align 4
  ret i32 %282
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @assert_spin_locked(i32) #1

declare dso_local i32 @ext4_group_lock_ptr(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @mb_check_buddy(%struct.ext4_buddy*) #1

declare dso_local i32 @mb_mark_used_double(%struct.ext4_buddy*, i32, i32) #1

declare dso_local i32 @mb_test_bit(i32, i32) #1

declare dso_local i32 @EXT4_MB_BITMAP(%struct.ext4_buddy*) #1

declare dso_local %struct.TYPE_8__* @EXT4_SB(%struct.TYPE_6__*) #1

declare dso_local i32 @mb_find_order_for_block(%struct.ext4_buddy*, i32) #1

declare dso_local i8* @mb_find_buddy(%struct.ext4_buddy*, i32, i32*) #1

declare dso_local i32 @mb_set_bit(i32, i8*) #1

declare dso_local i32 @mb_clear_bit(i32, i8*) #1

declare dso_local i32 @mb_set_largest_free_order(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @mb_set_bits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

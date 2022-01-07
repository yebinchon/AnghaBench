; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_compaction.c_isolate_migratepages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_compaction.c_isolate_migratepages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i32, i32 }
%struct.compact_control = type { i64, i64, i32, i64, i32, %struct.list_head }
%struct.list_head = type { i32 }
%struct.page = type { i32 }

@ISOLATE_ACTIVE = common dso_local global i32 0, align 4
@ISOLATE_INACTIVE = common dso_local global i32 0, align 4
@pageblock_nr_pages = common dso_local global i64 0, align 8
@BLK_RW_ASYNC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@SWAP_CLUSTER_MAX = common dso_local global i64 0, align 8
@MAX_ORDER_NR_PAGES = common dso_local global i32 0, align 4
@pageblock_order = common dso_local global i64 0, align 8
@MIGRATE_MOVABLE = common dso_local global i64 0, align 8
@ISOLATE_ASYNC_MIGRATE = common dso_local global i32 0, align 4
@COMPACT_CLUSTER_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.zone*, %struct.compact_control*)* @isolate_migratepages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @isolate_migratepages(%struct.zone* %0, %struct.compact_control* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.zone*, align 8
  %5 = alloca %struct.compact_control*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.list_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.page*, align 8
  store %struct.zone* %0, %struct.zone** %4, align 8
  store %struct.compact_control* %1, %struct.compact_control** %5, align 8
  store i64 0, i64* %8, align 8
  %16 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %17 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %16, i32 0, i32 5
  store %struct.list_head* %17, %struct.list_head** %10, align 8
  %18 = load i32, i32* @ISOLATE_ACTIVE, align 4
  %19 = load i32, i32* @ISOLATE_INACTIVE, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %11, align 4
  store %struct.page* null, %struct.page** %14, align 8
  store %struct.page* null, %struct.page** %15, align 8
  %21 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %22 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.zone*, %struct.zone** %4, align 8
  %25 = getelementptr inbounds %struct.zone, %struct.zone* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @max(i64 %23, i32 %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @pageblock_nr_pages, align 8
  %30 = add i64 %28, %29
  %31 = load i64, i64* @pageblock_nr_pages, align 8
  %32 = call i32 @ALIGN(i64 %30, i64 %31)
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %36 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ugt i64 %34, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %2
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @pfn_valid(i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39, %2
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %46 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  store i64 0, i64* %3, align 8
  br label %270

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %62, %47
  %49 = load %struct.zone*, %struct.zone** %4, align 8
  %50 = call i32 @too_many_isolated(%struct.zone* %49)
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load i32, i32* @BLK_RW_ASYNC, align 4
  %55 = load i32, i32* @HZ, align 4
  %56 = sdiv i32 %55, 10
  %57 = call i32 @congestion_wait(i32 %54, i32 %56)
  %58 = load i32, i32* @current, align 4
  %59 = call i64 @fatal_signal_pending(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i64 0, i64* %3, align 8
  br label %270

62:                                               ; preds = %53
  br label %48

63:                                               ; preds = %48
  %64 = call i32 (...) @cond_resched()
  %65 = load %struct.zone*, %struct.zone** %4, align 8
  %66 = getelementptr inbounds %struct.zone, %struct.zone* %65, i32 0, i32 0
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @spin_lock_irqsave(i32* %66, i64 %67)
  store i32 1, i32* %13, align 4
  br label %69

69:                                               ; preds = %237, %63
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* %7, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %240

73:                                               ; preds = %69
  %74 = load i64, i64* %6, align 8
  %75 = add i64 %74, 1
  %76 = load i64, i64* @SWAP_CLUSTER_MAX, align 8
  %77 = urem i64 %75, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %73
  %80 = load %struct.zone*, %struct.zone** %4, align 8
  %81 = getelementptr inbounds %struct.zone, %struct.zone* %80, i32 0, i32 0
  %82 = load i64, i64* %12, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  store i32 0, i32* %13, align 4
  br label %84

84:                                               ; preds = %79, %73
  %85 = load %struct.zone*, %struct.zone** %4, align 8
  %86 = getelementptr inbounds %struct.zone, %struct.zone* %85, i32 0, i32 0
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %89 = call i32 @compact_checklock_irqsave(i32* %86, i64* %12, i32 %87, %struct.compact_control* %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %84
  br label %240

93:                                               ; preds = %84
  %94 = load i64, i64* %6, align 8
  %95 = load i32, i32* @MAX_ORDER_NR_PAGES, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = and i64 %94, %97
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %93
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @pfn_valid(i64 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* @MAX_ORDER_NR_PAGES, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %6, align 8
  %109 = add i64 %108, %107
  store i64 %109, i64* %6, align 8
  br label %237

110:                                              ; preds = %100
  br label %111

111:                                              ; preds = %110, %93
  %112 = load i64, i64* %6, align 8
  %113 = call i32 @pfn_valid_within(i64 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %111
  br label %237

116:                                              ; preds = %111
  %117 = load i64, i64* %6, align 8
  %118 = call %struct.page* @pfn_to_page(i64 %117)
  store %struct.page* %118, %struct.page** %14, align 8
  %119 = load %struct.page*, %struct.page** %14, align 8
  %120 = call %struct.zone* @page_zone(%struct.page* %119)
  %121 = load %struct.zone*, %struct.zone** %4, align 8
  %122 = icmp ne %struct.zone* %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %237

124:                                              ; preds = %116
  %125 = load %struct.page*, %struct.page** %15, align 8
  %126 = icmp ne %struct.page* %125, null
  br i1 %126, label %129, label %127

127:                                              ; preds = %124
  %128 = load %struct.page*, %struct.page** %14, align 8
  store %struct.page* %128, %struct.page** %15, align 8
  br label %129

129:                                              ; preds = %127, %124
  %130 = load i64, i64* %6, align 8
  %131 = load i64, i64* @pageblock_order, align 8
  %132 = lshr i64 %130, %131
  store i64 %132, i64* %9, align 8
  %133 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %134 = load %struct.page*, %struct.page** %14, align 8
  %135 = call i32 @isolation_suitable(%struct.compact_control* %133, %struct.page* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %129
  br label %227

138:                                              ; preds = %129
  %139 = load %struct.page*, %struct.page** %14, align 8
  %140 = call i64 @PageBuddy(%struct.page* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  br label %237

143:                                              ; preds = %138
  %144 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %145 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %169, label %148

148:                                              ; preds = %143
  %149 = load i64, i64* %8, align 8
  %150 = load i64, i64* %9, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %169

152:                                              ; preds = %148
  %153 = load %struct.page*, %struct.page** %14, align 8
  %154 = call i64 @get_pageblock_migratetype(%struct.page* %153)
  %155 = load i64, i64* @MIGRATE_MOVABLE, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %169

157:                                              ; preds = %152
  %158 = load i64, i64* @pageblock_nr_pages, align 8
  %159 = load i64, i64* %6, align 8
  %160 = add i64 %159, %158
  store i64 %160, i64* %6, align 8
  %161 = load i64, i64* %6, align 8
  %162 = load i64, i64* @pageblock_nr_pages, align 8
  %163 = call i32 @ALIGN(i64 %161, i64 %162)
  %164 = sub nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  store i64 %165, i64* %6, align 8
  %166 = load i64, i64* %9, align 8
  store i64 %166, i64* %8, align 8
  %167 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %168 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %167, i32 0, i32 2
  store i32 1, i32* %168, align 8
  br label %237

169:                                              ; preds = %152, %148, %143
  %170 = load %struct.page*, %struct.page** %14, align 8
  %171 = call i32 @PageLRU(%struct.page* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %169
  br label %237

174:                                              ; preds = %169
  %175 = load %struct.page*, %struct.page** %14, align 8
  %176 = call i64 @PageTransHuge(%struct.page* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %174
  %179 = load %struct.page*, %struct.page** %14, align 8
  %180 = call i32 @compound_order(%struct.page* %179)
  %181 = shl i32 1, %180
  %182 = sub nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = load i64, i64* %6, align 8
  %185 = add i64 %184, %183
  store i64 %185, i64* %6, align 8
  br label %237

186:                                              ; preds = %174
  %187 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %188 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %186
  %192 = load i32, i32* @ISOLATE_ASYNC_MIGRATE, align 4
  %193 = load i32, i32* %11, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %11, align 4
  br label %195

195:                                              ; preds = %191, %186
  %196 = load %struct.page*, %struct.page** %14, align 8
  %197 = load i32, i32* %11, align 4
  %198 = call i64 @__isolate_lru_page(%struct.page* %196, i32 %197, i32 0)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  br label %237

201:                                              ; preds = %195
  %202 = load %struct.page*, %struct.page** %14, align 8
  %203 = call i32 @PageTransCompound(%struct.page* %202)
  %204 = call i32 @VM_BUG_ON(i32 %203)
  %205 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %206 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %205, i32 0, i32 2
  store i32 1, i32* %206, align 8
  %207 = load %struct.zone*, %struct.zone** %4, align 8
  %208 = load %struct.page*, %struct.page** %14, align 8
  %209 = load %struct.page*, %struct.page** %14, align 8
  %210 = call i32 @page_lru(%struct.page* %209)
  %211 = call i32 @del_page_from_lru_list(%struct.zone* %207, %struct.page* %208, i32 %210)
  %212 = load %struct.page*, %struct.page** %14, align 8
  %213 = getelementptr inbounds %struct.page, %struct.page* %212, i32 0, i32 0
  %214 = load %struct.list_head*, %struct.list_head** %10, align 8
  %215 = call i32 @list_add(i32* %213, %struct.list_head* %214)
  %216 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %217 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %216, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = add i64 %218, 1
  store i64 %219, i64* %217, align 8
  %220 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %221 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @COMPACT_CLUSTER_MAX, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %201
  br label %240

226:                                              ; preds = %201
  br label %237

227:                                              ; preds = %137
  %228 = load i64, i64* @pageblock_nr_pages, align 8
  %229 = load i64, i64* %6, align 8
  %230 = add i64 %229, %228
  store i64 %230, i64* %6, align 8
  %231 = load i64, i64* %6, align 8
  %232 = load i64, i64* @pageblock_nr_pages, align 8
  %233 = call i32 @ALIGN(i64 %231, i64 %232)
  %234 = sub nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  store i64 %235, i64* %6, align 8
  %236 = load i64, i64* %9, align 8
  store i64 %236, i64* %8, align 8
  br label %237

237:                                              ; preds = %227, %226, %200, %178, %173, %157, %142, %123, %115, %104
  %238 = load i64, i64* %6, align 8
  %239 = add i64 %238, 1
  store i64 %239, i64* %6, align 8
  br label %69

240:                                              ; preds = %225, %92, %69
  %241 = load %struct.zone*, %struct.zone** %4, align 8
  %242 = load i32, i32* %13, align 4
  %243 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %244 = call i32 @acct_isolated(%struct.zone* %241, i32 %242, %struct.compact_control* %243)
  %245 = load i32, i32* %13, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %252

247:                                              ; preds = %240
  %248 = load %struct.zone*, %struct.zone** %4, align 8
  %249 = getelementptr inbounds %struct.zone, %struct.zone* %248, i32 0, i32 0
  %250 = load i64, i64* %12, align 8
  %251 = call i32 @spin_unlock_irqrestore(i32* %249, i64 %250)
  br label %252

252:                                              ; preds = %247, %240
  %253 = load i64, i64* %6, align 8
  %254 = load i64, i64* %7, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %263

256:                                              ; preds = %252
  %257 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %258 = load %struct.page*, %struct.page** %15, align 8
  %259 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %260 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %259, i32 0, i32 3
  %261 = load i64, i64* %260, align 8
  %262 = call i32 @update_pageblock_skip(%struct.compact_control* %257, %struct.page* %258, i64 %261, i32 1)
  br label %263

263:                                              ; preds = %256, %252
  %264 = load i64, i64* %6, align 8
  %265 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %266 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %265, i32 0, i32 0
  store i64 %264, i64* %266, align 8
  %267 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %268 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  store i64 %269, i64* %3, align 8
  br label %270

270:                                              ; preds = %263, %61, %43
  %271 = load i64, i64* %3, align 8
  ret i64 %271
}

declare dso_local i64 @max(i64, i32) #1

declare dso_local i32 @ALIGN(i64, i64) #1

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @too_many_isolated(%struct.zone*) #1

declare dso_local i32 @congestion_wait(i32, i32) #1

declare dso_local i64 @fatal_signal_pending(i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @compact_checklock_irqsave(i32*, i64*, i32, %struct.compact_control*) #1

declare dso_local i32 @pfn_valid_within(i64) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local %struct.zone* @page_zone(%struct.page*) #1

declare dso_local i32 @isolation_suitable(%struct.compact_control*, %struct.page*) #1

declare dso_local i64 @PageBuddy(%struct.page*) #1

declare dso_local i64 @get_pageblock_migratetype(%struct.page*) #1

declare dso_local i32 @PageLRU(%struct.page*) #1

declare dso_local i64 @PageTransHuge(%struct.page*) #1

declare dso_local i32 @compound_order(%struct.page*) #1

declare dso_local i64 @__isolate_lru_page(%struct.page*, i32, i32) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @PageTransCompound(%struct.page*) #1

declare dso_local i32 @del_page_from_lru_list(%struct.zone*, %struct.page*, i32) #1

declare dso_local i32 @page_lru(%struct.page*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @acct_isolated(%struct.zone*, i32, %struct.compact_control*) #1

declare dso_local i32 @update_pageblock_skip(%struct.compact_control*, %struct.page*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

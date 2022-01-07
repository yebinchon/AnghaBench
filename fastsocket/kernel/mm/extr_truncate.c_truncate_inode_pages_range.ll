; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_truncate.c_truncate_inode_pages_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_truncate.c_truncate_inode_pages_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i64 }
%struct.pagevec = type { %struct.page** }
%struct.page = type { i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGEVEC_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @truncate_inode_pages_range(%struct.address_space* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pagevec, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %18 = add nsw i32 %16, %17
  %19 = sub nsw i32 %18, 1
  %20 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %21 = ashr i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %24 = sub nsw i32 %23, 1
  %25 = and i32 %22, %24
  store i32 %25, i32* %8, align 4
  %26 = load %struct.address_space*, %struct.address_space** %4, align 8
  %27 = getelementptr inbounds %struct.address_space, %struct.address_space* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %223

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %34 = sub nsw i32 %33, 1
  %35 = and i32 %32, %34
  %36 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %37 = sub nsw i32 %36, 1
  %38 = icmp ne i32 %35, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %43 = ashr i32 %41, %42
  store i32 %43, i32* %11, align 4
  %44 = call i32 @pagevec_init(%struct.pagevec* %9, i32 0)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %113, %31
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load %struct.address_space*, %struct.address_space** %4, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %10, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load i64, i64* @PAGEVEC_SIZE, align 8
  %57 = trunc i64 %56 to i32
  %58 = sub nsw i32 %57, 1
  %59 = call i64 @min(i32 %55, i32 %58)
  %60 = add nsw i64 %59, 1
  %61 = call i64 @pagevec_lookup(%struct.pagevec* %9, %struct.address_space* %51, i32 %52, i64 %60)
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %50, %46
  %64 = phi i1 [ false, %46 ], [ %62, %50 ]
  br i1 %64, label %65, label %119

65:                                               ; preds = %63
  %66 = call i32 (...) @mem_cgroup_uncharge_start()
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %110, %65
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @pagevec_count(%struct.pagevec* %9)
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %113

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %9, i32 0, i32 0
  %73 = load %struct.page**, %struct.page*** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.page*, %struct.page** %73, i64 %75
  %77 = load %struct.page*, %struct.page** %76, align 8
  store %struct.page* %77, %struct.page** %13, align 8
  %78 = load %struct.page*, %struct.page** %13, align 8
  %79 = getelementptr inbounds %struct.page, %struct.page* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  br label %113

85:                                               ; preds = %71
  %86 = load %struct.page*, %struct.page** %13, align 8
  %87 = call i32 @trylock_page(%struct.page* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  br label %110

90:                                               ; preds = %85
  %91 = load %struct.page*, %struct.page** %13, align 8
  %92 = getelementptr inbounds %struct.page, %struct.page* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @WARN_ON(i32 %96)
  %98 = load %struct.page*, %struct.page** %13, align 8
  %99 = call i64 @PageWriteback(%struct.page* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %90
  %102 = load %struct.page*, %struct.page** %13, align 8
  %103 = call i32 @unlock_page(%struct.page* %102)
  br label %110

104:                                              ; preds = %90
  %105 = load %struct.address_space*, %struct.address_space** %4, align 8
  %106 = load %struct.page*, %struct.page** %13, align 8
  %107 = call i32 @truncate_inode_page(%struct.address_space* %105, %struct.page* %106)
  %108 = load %struct.page*, %struct.page** %13, align 8
  %109 = call i32 @unlock_page(%struct.page* %108)
  br label %110

110:                                              ; preds = %104, %101, %89
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %12, align 4
  br label %67

113:                                              ; preds = %84, %67
  %114 = call i32 @pagevec_release(%struct.pagevec* %9)
  %115 = call i32 (...) @mem_cgroup_uncharge_end()
  %116 = call i32 (...) @cond_resched()
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %46

119:                                              ; preds = %63
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %140

122:                                              ; preds = %119
  %123 = load %struct.address_space*, %struct.address_space** %4, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sub nsw i32 %124, 1
  %126 = call %struct.page* @find_lock_page(%struct.address_space* %123, i32 %125)
  store %struct.page* %126, %struct.page** %14, align 8
  %127 = load %struct.page*, %struct.page** %14, align 8
  %128 = icmp ne %struct.page* %127, null
  br i1 %128, label %129, label %139

129:                                              ; preds = %122
  %130 = load %struct.page*, %struct.page** %14, align 8
  %131 = call i32 @wait_on_page_writeback(%struct.page* %130)
  %132 = load %struct.page*, %struct.page** %14, align 8
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @truncate_partial_page(%struct.page* %132, i32 %133)
  %135 = load %struct.page*, %struct.page** %14, align 8
  %136 = call i32 @unlock_page(%struct.page* %135)
  %137 = load %struct.page*, %struct.page** %14, align 8
  %138 = call i32 @page_cache_release(%struct.page* %137)
  br label %139

139:                                              ; preds = %129, %122
  br label %140

140:                                              ; preds = %139, %119
  %141 = load i32, i32* %7, align 4
  store i32 %141, i32* %10, align 4
  br label %142

142:                                              ; preds = %218, %161, %140
  %143 = call i32 (...) @cond_resched()
  %144 = load %struct.address_space*, %struct.address_space** %4, align 8
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %10, align 4
  %148 = sub nsw i32 %146, %147
  %149 = load i64, i64* @PAGEVEC_SIZE, align 8
  %150 = trunc i64 %149 to i32
  %151 = sub nsw i32 %150, 1
  %152 = call i64 @min(i32 %148, i32 %151)
  %153 = add nsw i64 %152, 1
  %154 = call i64 @pagevec_lookup(%struct.pagevec* %9, %struct.address_space* %144, i32 %145, i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %142
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %7, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  br label %223

161:                                              ; preds = %156
  %162 = load i32, i32* %7, align 4
  store i32 %162, i32* %10, align 4
  br label %142

163:                                              ; preds = %142
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %178

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %9, i32 0, i32 0
  %169 = load %struct.page**, %struct.page*** %168, align 8
  %170 = getelementptr inbounds %struct.page*, %struct.page** %169, i64 0
  %171 = load %struct.page*, %struct.page** %170, align 8
  %172 = getelementptr inbounds %struct.page, %struct.page* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %11, align 4
  %175 = icmp sgt i32 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %167
  %177 = call i32 @pagevec_release(%struct.pagevec* %9)
  br label %223

178:                                              ; preds = %167, %163
  %179 = call i32 (...) @mem_cgroup_uncharge_start()
  store i32 0, i32* %12, align 4
  br label %180

180:                                              ; preds = %215, %178
  %181 = load i32, i32* %12, align 4
  %182 = call i32 @pagevec_count(%struct.pagevec* %9)
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %218

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %9, i32 0, i32 0
  %186 = load %struct.page**, %struct.page*** %185, align 8
  %187 = load i32, i32* %12, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.page*, %struct.page** %186, i64 %188
  %190 = load %struct.page*, %struct.page** %189, align 8
  store %struct.page* %190, %struct.page** %15, align 8
  %191 = load %struct.page*, %struct.page** %15, align 8
  %192 = getelementptr inbounds %struct.page, %struct.page* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %10, align 4
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* %11, align 4
  %196 = icmp sgt i32 %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %184
  br label %218

198:                                              ; preds = %184
  %199 = load %struct.page*, %struct.page** %15, align 8
  %200 = call i32 @lock_page(%struct.page* %199)
  %201 = load %struct.page*, %struct.page** %15, align 8
  %202 = getelementptr inbounds %struct.page, %struct.page* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %10, align 4
  %205 = icmp ne i32 %203, %204
  %206 = zext i1 %205 to i32
  %207 = call i32 @WARN_ON(i32 %206)
  %208 = load %struct.page*, %struct.page** %15, align 8
  %209 = call i32 @wait_on_page_writeback(%struct.page* %208)
  %210 = load %struct.address_space*, %struct.address_space** %4, align 8
  %211 = load %struct.page*, %struct.page** %15, align 8
  %212 = call i32 @truncate_inode_page(%struct.address_space* %210, %struct.page* %211)
  %213 = load %struct.page*, %struct.page** %15, align 8
  %214 = call i32 @unlock_page(%struct.page* %213)
  br label %215

215:                                              ; preds = %198
  %216 = load i32, i32* %12, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %12, align 4
  br label %180

218:                                              ; preds = %197, %180
  %219 = call i32 @pagevec_release(%struct.pagevec* %9)
  %220 = call i32 (...) @mem_cgroup_uncharge_end()
  %221 = load i32, i32* %10, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %10, align 4
  br label %142

223:                                              ; preds = %30, %176, %160
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pagevec_init(%struct.pagevec*, i32) #1

declare dso_local i64 @pagevec_lookup(%struct.pagevec*, %struct.address_space*, i32, i64) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @mem_cgroup_uncharge_start(...) #1

declare dso_local i32 @pagevec_count(%struct.pagevec*) #1

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @truncate_inode_page(%struct.address_space*, %struct.page*) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

declare dso_local i32 @mem_cgroup_uncharge_end(...) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local %struct.page* @find_lock_page(%struct.address_space*, i32) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i32 @truncate_partial_page(%struct.page*, i32) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

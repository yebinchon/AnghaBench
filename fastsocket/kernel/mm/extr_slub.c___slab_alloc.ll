; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c___slab_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c___slab_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }
%struct.kmem_cache_cpu = type { i64, i32, %struct.page*, i8* }
%struct.page = type { i8**, i32, i32 }

@__GFP_ZERO = common dso_local global i32 0, align 4
@ALLOC_REFILL = common dso_local global i32 0, align 4
@SLABDEBUG = common dso_local global i64 0, align 8
@ALLOC_SLOWPATH = common dso_local global i32 0, align 4
@ALLOC_FROM_PARTIAL = common dso_local global i32 0, align 4
@__GFP_WAIT = common dso_local global i32 0, align 4
@ALLOC_SLAB = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.kmem_cache*, i32, i32, i64, %struct.kmem_cache_cpu*)* @__slab_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__slab_alloc(%struct.kmem_cache* %0, i32 %1, i32 %2, i64 %3, %struct.kmem_cache_cpu* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.kmem_cache*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.kmem_cache_cpu*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.page*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.kmem_cache_cpu* %4, %struct.kmem_cache_cpu** %11, align 8
  %14 = load i32, i32* @__GFP_ZERO, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %8, align 4
  %18 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %19 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %18, i32 0, i32 2
  %20 = load %struct.page*, %struct.page** %19, align 8
  %21 = icmp ne %struct.page* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  br label %111

23:                                               ; preds = %5
  %24 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %25 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %24, i32 0, i32 2
  %26 = load %struct.page*, %struct.page** %25, align 8
  %27 = call i32 @slab_lock(%struct.page* %26)
  %28 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @node_match(%struct.kmem_cache_cpu* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  br label %107

37:                                               ; preds = %23
  %38 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %39 = load i32, i32* @ALLOC_REFILL, align 4
  %40 = call i32 @stat(%struct.kmem_cache_cpu* %38, i32 %39)
  br label %41

41:                                               ; preds = %161, %118, %37
  %42 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %43 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %42, i32 0, i32 2
  %44 = load %struct.page*, %struct.page** %43, align 8
  %45 = getelementptr inbounds %struct.page, %struct.page* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  store i8** %46, i8*** %12, align 8
  %47 = load i8**, i8*** %12, align 8
  %48 = icmp ne i8** %47, null
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %107

54:                                               ; preds = %41
  %55 = load i64, i64* @SLABDEBUG, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %59 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %58, i32 0, i32 2
  %60 = load %struct.page*, %struct.page** %59, align 8
  %61 = call i64 @PageSlubDebug(%struct.page* %60)
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %57, %54
  %64 = phi i1 [ false, %54 ], [ %62, %57 ]
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %183

69:                                               ; preds = %63
  %70 = load i8**, i8*** %12, align 8
  %71 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %72 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i8*, i8** %70, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %77 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  %78 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %79 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %78, i32 0, i32 2
  %80 = load %struct.page*, %struct.page** %79, align 8
  %81 = getelementptr inbounds %struct.page, %struct.page* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %84 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %83, i32 0, i32 2
  %85 = load %struct.page*, %struct.page** %84, align 8
  %86 = getelementptr inbounds %struct.page, %struct.page* %85, i32 0, i32 1
  store i32 %82, i32* %86, align 8
  %87 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %88 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %87, i32 0, i32 2
  %89 = load %struct.page*, %struct.page** %88, align 8
  %90 = getelementptr inbounds %struct.page, %struct.page* %89, i32 0, i32 0
  store i8** null, i8*** %90, align 8
  %91 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %92 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %91, i32 0, i32 2
  %93 = load %struct.page*, %struct.page** %92, align 8
  %94 = call i32 @page_to_nid(%struct.page* %93)
  %95 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %96 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %193, %69
  %98 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %99 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %98, i32 0, i32 2
  %100 = load %struct.page*, %struct.page** %99, align 8
  %101 = call i32 @slab_unlock(%struct.page* %100)
  %102 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %103 = load i32, i32* @ALLOC_SLOWPATH, align 4
  %104 = call i32 @stat(%struct.kmem_cache_cpu* %102, i32 %103)
  %105 = load i8**, i8*** %12, align 8
  %106 = bitcast i8** %105 to i8*
  store i8* %106, i8** %6, align 8
  br label %213

107:                                              ; preds = %192, %53, %36
  %108 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %109 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %110 = call i32 @deactivate_slab(%struct.kmem_cache* %108, %struct.kmem_cache_cpu* %109)
  br label %111

111:                                              ; preds = %107, %22
  %112 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %9, align 4
  %115 = call %struct.page* @get_partial(%struct.kmem_cache* %112, i32 %113, i32 %114)
  store %struct.page* %115, %struct.page** %13, align 8
  %116 = load %struct.page*, %struct.page** %13, align 8
  %117 = icmp ne %struct.page* %116, null
  br i1 %117, label %118, label %125

118:                                              ; preds = %111
  %119 = load %struct.page*, %struct.page** %13, align 8
  %120 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %121 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %120, i32 0, i32 2
  store %struct.page* %119, %struct.page** %121, align 8
  %122 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %123 = load i32, i32* @ALLOC_FROM_PARTIAL, align 4
  %124 = call i32 @stat(%struct.kmem_cache_cpu* %122, i32 %123)
  br label %41

125:                                              ; preds = %111
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @__GFP_WAIT, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = call i32 (...) @local_irq_enable()
  br label %132

132:                                              ; preds = %130, %125
  %133 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %9, align 4
  %136 = call %struct.page* @new_slab(%struct.kmem_cache* %133, i32 %134, i32 %135)
  store %struct.page* %136, %struct.page** %13, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @__GFP_WAIT, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %132
  %142 = call i32 (...) @local_irq_disable()
  br label %143

143:                                              ; preds = %141, %132
  %144 = load %struct.page*, %struct.page** %13, align 8
  %145 = icmp ne %struct.page* %144, null
  br i1 %145, label %146, label %169

146:                                              ; preds = %143
  %147 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %148 = call i32 (...) @smp_processor_id()
  %149 = call %struct.kmem_cache_cpu* @get_cpu_slab(%struct.kmem_cache* %147, i32 %148)
  store %struct.kmem_cache_cpu* %149, %struct.kmem_cache_cpu** %11, align 8
  %150 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %151 = load i32, i32* @ALLOC_SLAB, align 4
  %152 = call i32 @stat(%struct.kmem_cache_cpu* %150, i32 %151)
  %153 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %154 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %153, i32 0, i32 2
  %155 = load %struct.page*, %struct.page** %154, align 8
  %156 = icmp ne %struct.page* %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %146
  %158 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %159 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %160 = call i32 @flush_slab(%struct.kmem_cache* %158, %struct.kmem_cache_cpu* %159)
  br label %161

161:                                              ; preds = %157, %146
  %162 = load %struct.page*, %struct.page** %13, align 8
  %163 = call i32 @slab_lock(%struct.page* %162)
  %164 = load %struct.page*, %struct.page** %13, align 8
  %165 = call i32 @__SetPageSlubFrozen(%struct.page* %164)
  %166 = load %struct.page*, %struct.page** %13, align 8
  %167 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %168 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %167, i32 0, i32 2
  store %struct.page* %166, %struct.page** %168, align 8
  br label %41

169:                                              ; preds = %143
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* @__GFP_NOWARN, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %182, label %174

174:                                              ; preds = %169
  %175 = call i64 (...) @printk_ratelimit()
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  %178 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %9, align 4
  %181 = call i32 @slab_out_of_memory(%struct.kmem_cache* %178, i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %177, %174, %169
  store i8* null, i8** %6, align 8
  br label %213

183:                                              ; preds = %68
  %184 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %185 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %186 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %185, i32 0, i32 2
  %187 = load %struct.page*, %struct.page** %186, align 8
  %188 = load i8**, i8*** %12, align 8
  %189 = load i64, i64* %10, align 8
  %190 = call i32 @alloc_debug_processing(%struct.kmem_cache* %184, %struct.page* %187, i8** %188, i64 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %183
  br label %107

193:                                              ; preds = %183
  %194 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %195 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %194, i32 0, i32 2
  %196 = load %struct.page*, %struct.page** %195, align 8
  %197 = getelementptr inbounds %struct.page, %struct.page* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 8
  %200 = load i8**, i8*** %12, align 8
  %201 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %202 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i8*, i8** %200, i64 %203
  %205 = load i8*, i8** %204, align 8
  %206 = bitcast i8* %205 to i8**
  %207 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %208 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %207, i32 0, i32 2
  %209 = load %struct.page*, %struct.page** %208, align 8
  %210 = getelementptr inbounds %struct.page, %struct.page* %209, i32 0, i32 0
  store i8** %206, i8*** %210, align 8
  %211 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %212 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %211, i32 0, i32 1
  store i32 -1, i32* %212, align 8
  br label %97

213:                                              ; preds = %182, %97
  %214 = load i8*, i8** %6, align 8
  ret i8* %214
}

declare dso_local i32 @slab_lock(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @node_match(%struct.kmem_cache_cpu*, i32) #1

declare dso_local i32 @stat(%struct.kmem_cache_cpu*, i32) #1

declare dso_local i64 @PageSlubDebug(%struct.page*) #1

declare dso_local i32 @page_to_nid(%struct.page*) #1

declare dso_local i32 @slab_unlock(%struct.page*) #1

declare dso_local i32 @deactivate_slab(%struct.kmem_cache*, %struct.kmem_cache_cpu*) #1

declare dso_local %struct.page* @get_partial(%struct.kmem_cache*, i32, i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local %struct.page* @new_slab(%struct.kmem_cache*, i32, i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local %struct.kmem_cache_cpu* @get_cpu_slab(%struct.kmem_cache*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @flush_slab(%struct.kmem_cache*, %struct.kmem_cache_cpu*) #1

declare dso_local i32 @__SetPageSlubFrozen(%struct.page*) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @slab_out_of_memory(%struct.kmem_cache*, i32, i32) #1

declare dso_local i32 @alloc_debug_processing(%struct.kmem_cache*, %struct.page*, i8**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

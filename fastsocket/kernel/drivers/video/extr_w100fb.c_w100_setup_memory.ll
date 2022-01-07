; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_w100fb.c_w100_setup_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_w100fb.c_w100_setup_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w100fb_par = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.w100_mem_info*, %struct.w100_bm_mem_info* }
%struct.w100_mem_info = type { i32, i32, i32, i32, i32 }
%struct.w100_bm_mem_info = type { i32, i32, i32, i32, i32, i32, i32 }
%union.mc_ext_mem_location_u = type { i64 }
%union.mc_fb_location_u = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@W100_SUSPEND_EXTMEM = common dso_local global i32 0, align 4
@W100_FB_BASE = common dso_local global i32 0, align 4
@MEM_INT_SIZE = common dso_local global i32 0, align 4
@remapped_regs = common dso_local global i64 0, align 8
@mmMC_FB_LOCATION = common dso_local global i64 0, align 8
@MEM_EXT_BASE_VALUE = common dso_local global i32 0, align 4
@mmMC_EXT_MEM_LOCATION = common dso_local global i64 0, align 8
@MEM_INT_BASE_VALUE = common dso_local global i32 0, align 4
@mmMC_BIST_CTRL = common dso_local global i64 0, align 8
@mmMEM_EXT_CNTL = common dso_local global i64 0, align 8
@mmMEM_SDRAM_MODE_REG = common dso_local global i64 0, align 8
@mmMEM_EXT_TIMING_CNTL = common dso_local global i64 0, align 8
@mmMEM_IO_CNTL = common dso_local global i64 0, align 8
@mmBM_EXT_MEM_BANDWIDTH = common dso_local global i64 0, align 8
@mmBM_OFFSET = common dso_local global i64 0, align 8
@mmBM_MEM_EXT_TIMING_CNTL = common dso_local global i64 0, align 8
@mmBM_MEM_EXT_CNTL = common dso_local global i64 0, align 8
@mmBM_MEM_MODE_REG = common dso_local global i64 0, align 8
@mmBM_MEM_IO_CNTL = common dso_local global i64 0, align 8
@mmBM_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w100fb_par*)* @w100_setup_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w100_setup_memory(%struct.w100fb_par* %0) #0 {
  %2 = alloca %struct.w100fb_par*, align 8
  %3 = alloca %union.mc_ext_mem_location_u, align 8
  %4 = alloca %union.mc_fb_location_u, align 8
  %5 = alloca %struct.w100_mem_info*, align 8
  %6 = alloca %struct.w100_bm_mem_info*, align 8
  store %struct.w100fb_par* %0, %struct.w100fb_par** %2, align 8
  %7 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %8 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.w100_mem_info*, %struct.w100_mem_info** %10, align 8
  store %struct.w100_mem_info* %11, %struct.w100_mem_info** %5, align 8
  %12 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %13 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.w100_bm_mem_info*, %struct.w100_bm_mem_info** %15, align 8
  store %struct.w100_bm_mem_info* %16, %struct.w100_bm_mem_info** %6, align 8
  %17 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %18 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %57, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @W100_SUSPEND_EXTMEM, align 4
  %23 = call i32 @w100_suspend(i32 %22)
  %24 = load i32, i32* @W100_FB_BASE, align 4
  %25 = ashr i32 %24, 8
  %26 = bitcast %union.mc_fb_location_u* %4 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @W100_FB_BASE, align 4
  %29 = load i32, i32* @MEM_INT_SIZE, align 4
  %30 = add nsw i32 %28, %29
  %31 = ashr i32 %30, 8
  %32 = bitcast %union.mc_fb_location_u* %4 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = bitcast %union.mc_fb_location_u* %4 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i64, i64* @remapped_regs, align 8
  %38 = load i64, i64* @mmMC_FB_LOCATION, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %36, i64 %39)
  %41 = load i32, i32* @MEM_EXT_BASE_VALUE, align 4
  %42 = ashr i32 %41, 8
  %43 = bitcast %union.mc_ext_mem_location_u* %3 to %struct.TYPE_5__*
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @MEM_EXT_BASE_VALUE, align 4
  %46 = sub nsw i32 %45, 1
  %47 = ashr i32 %46, 8
  %48 = bitcast %union.mc_ext_mem_location_u* %3 to %struct.TYPE_5__*
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = bitcast %union.mc_ext_mem_location_u* %3 to i64*
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i64, i64* @remapped_regs, align 8
  %54 = load i64, i64* @mmMC_EXT_MEM_LOCATION, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %52, i64 %55)
  br label %194

57:                                               ; preds = %1
  %58 = load i32, i32* @MEM_INT_BASE_VALUE, align 4
  %59 = ashr i32 %58, 8
  %60 = bitcast %union.mc_fb_location_u* %4 to %struct.TYPE_4__*
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @MEM_INT_BASE_VALUE, align 4
  %63 = load i32, i32* @MEM_INT_SIZE, align 4
  %64 = add nsw i32 %62, %63
  %65 = ashr i32 %64, 8
  %66 = bitcast %union.mc_fb_location_u* %4 to %struct.TYPE_4__*
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = bitcast %union.mc_fb_location_u* %4 to i64*
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i64, i64* @remapped_regs, align 8
  %72 = load i64, i64* @mmMC_FB_LOCATION, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %70, i64 %73)
  %75 = load i32, i32* @W100_FB_BASE, align 4
  %76 = ashr i32 %75, 8
  %77 = bitcast %union.mc_ext_mem_location_u* %3 to %struct.TYPE_5__*
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @W100_FB_BASE, align 4
  %80 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %81 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.w100_mem_info*, %struct.w100_mem_info** %83, align 8
  %85 = getelementptr inbounds %struct.w100_mem_info, %struct.w100_mem_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %79, %86
  %88 = ashr i32 %87, 8
  %89 = bitcast %union.mc_ext_mem_location_u* %3 to %struct.TYPE_5__*
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = bitcast %union.mc_ext_mem_location_u* %3 to i64*
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = load i64, i64* @remapped_regs, align 8
  %95 = load i64, i64* @mmMC_EXT_MEM_LOCATION, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @writel(i32 %93, i64 %96)
  %98 = load i64, i64* @remapped_regs, align 8
  %99 = load i64, i64* @mmMC_BIST_CTRL, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writel(i32 30720, i64 %100)
  %102 = load %struct.w100_mem_info*, %struct.w100_mem_info** %5, align 8
  %103 = getelementptr inbounds %struct.w100_mem_info, %struct.w100_mem_info* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i64, i64* @remapped_regs, align 8
  %106 = load i64, i64* @mmMEM_EXT_CNTL, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @writel(i32 %104, i64 %107)
  %109 = load i64, i64* @remapped_regs, align 8
  %110 = load i64, i64* @mmMEM_SDRAM_MODE_REG, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel(i32 2097185, i64 %111)
  %113 = call i32 @udelay(i32 100)
  %114 = load i64, i64* @remapped_regs, align 8
  %115 = load i64, i64* @mmMEM_SDRAM_MODE_REG, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @writel(i32 -2145386463, i64 %116)
  %118 = call i32 @udelay(i32 100)
  %119 = load %struct.w100_mem_info*, %struct.w100_mem_info** %5, align 8
  %120 = getelementptr inbounds %struct.w100_mem_info, %struct.w100_mem_info* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i64, i64* @remapped_regs, align 8
  %123 = load i64, i64* @mmMEM_SDRAM_MODE_REG, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @writel(i32 %121, i64 %124)
  %126 = call i32 @udelay(i32 100)
  %127 = load %struct.w100_mem_info*, %struct.w100_mem_info** %5, align 8
  %128 = getelementptr inbounds %struct.w100_mem_info, %struct.w100_mem_info* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load i64, i64* @remapped_regs, align 8
  %131 = load i64, i64* @mmMEM_EXT_TIMING_CNTL, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @writel(i32 %129, i64 %132)
  %134 = load %struct.w100_mem_info*, %struct.w100_mem_info** %5, align 8
  %135 = getelementptr inbounds %struct.w100_mem_info, %struct.w100_mem_info* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = load i64, i64* @remapped_regs, align 8
  %138 = load i64, i64* @mmMEM_IO_CNTL, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @writel(i32 %136, i64 %139)
  %141 = load %struct.w100_bm_mem_info*, %struct.w100_bm_mem_info** %6, align 8
  %142 = icmp ne %struct.w100_bm_mem_info* %141, null
  br i1 %142, label %143, label %193

143:                                              ; preds = %57
  %144 = load %struct.w100_bm_mem_info*, %struct.w100_bm_mem_info** %6, align 8
  %145 = getelementptr inbounds %struct.w100_bm_mem_info, %struct.w100_bm_mem_info* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i64, i64* @remapped_regs, align 8
  %148 = load i64, i64* @mmBM_EXT_MEM_BANDWIDTH, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @writel(i32 %146, i64 %149)
  %151 = load %struct.w100_bm_mem_info*, %struct.w100_bm_mem_info** %6, align 8
  %152 = getelementptr inbounds %struct.w100_bm_mem_info, %struct.w100_bm_mem_info* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i64, i64* @remapped_regs, align 8
  %155 = load i64, i64* @mmBM_OFFSET, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @writel(i32 %153, i64 %156)
  %158 = load %struct.w100_bm_mem_info*, %struct.w100_bm_mem_info** %6, align 8
  %159 = getelementptr inbounds %struct.w100_bm_mem_info, %struct.w100_bm_mem_info* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load i64, i64* @remapped_regs, align 8
  %162 = load i64, i64* @mmBM_MEM_EXT_TIMING_CNTL, align 8
  %163 = add nsw i64 %161, %162
  %164 = call i32 @writel(i32 %160, i64 %163)
  %165 = load %struct.w100_bm_mem_info*, %struct.w100_bm_mem_info** %6, align 8
  %166 = getelementptr inbounds %struct.w100_bm_mem_info, %struct.w100_bm_mem_info* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load i64, i64* @remapped_regs, align 8
  %169 = load i64, i64* @mmBM_MEM_EXT_CNTL, align 8
  %170 = add nsw i64 %168, %169
  %171 = call i32 @writel(i32 %167, i64 %170)
  %172 = load %struct.w100_bm_mem_info*, %struct.w100_bm_mem_info** %6, align 8
  %173 = getelementptr inbounds %struct.w100_bm_mem_info, %struct.w100_bm_mem_info* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 4
  %175 = load i64, i64* @remapped_regs, align 8
  %176 = load i64, i64* @mmBM_MEM_MODE_REG, align 8
  %177 = add nsw i64 %175, %176
  %178 = call i32 @writel(i32 %174, i64 %177)
  %179 = load %struct.w100_bm_mem_info*, %struct.w100_bm_mem_info** %6, align 8
  %180 = getelementptr inbounds %struct.w100_bm_mem_info, %struct.w100_bm_mem_info* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = load i64, i64* @remapped_regs, align 8
  %183 = load i64, i64* @mmBM_MEM_IO_CNTL, align 8
  %184 = add nsw i64 %182, %183
  %185 = call i32 @writel(i32 %181, i64 %184)
  %186 = load %struct.w100_bm_mem_info*, %struct.w100_bm_mem_info** %6, align 8
  %187 = getelementptr inbounds %struct.w100_bm_mem_info, %struct.w100_bm_mem_info* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 4
  %189 = load i64, i64* @remapped_regs, align 8
  %190 = load i64, i64* @mmBM_CONFIG, align 8
  %191 = add nsw i64 %189, %190
  %192 = call i32 @writel(i32 %188, i64 %191)
  br label %193

193:                                              ; preds = %143, %57
  br label %194

194:                                              ; preds = %193, %21
  ret void
}

declare dso_local i32 @w100_suspend(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

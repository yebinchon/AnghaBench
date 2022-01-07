; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mdp_ppp.c_send_blit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mdp_ppp.c_send_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp_info = type { i32 }
%struct.mdp_blit_req = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mdp_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.file = type { i32 }

@PPP_ADDR_SRC_ROI = common dso_local global i32 0, align 4
@PPP_ADDR_SRC0 = common dso_local global i32 0, align 4
@PPP_ADDR_SRC1 = common dso_local global i32 0, align 4
@PPP_ADDR_SRC_YSTRIDE = common dso_local global i32 0, align 4
@PPP_ADDR_SRC_CFG = common dso_local global i32 0, align 4
@PPP_ADDR_SRC_PACK_PATTERN = common dso_local global i32 0, align 4
@PPP_ADDR_OPERATION = common dso_local global i32 0, align 4
@PPP_ADDR_PHASEX_INIT = common dso_local global i32 0, align 4
@PPP_ADDR_PHASEY_INIT = common dso_local global i32 0, align 4
@PPP_ADDR_PHASEX_STEP = common dso_local global i32 0, align 4
@PPP_ADDR_PHASEY_STEP = common dso_local global i32 0, align 4
@PPP_ADDR_ALPHA_TRANSP = common dso_local global i32 0, align 4
@PPP_ADDR_DST_CFG = common dso_local global i32 0, align 4
@PPP_ADDR_DST_PACK_PATTERN = common dso_local global i32 0, align 4
@PPP_ADDR_DST_ROI = common dso_local global i32 0, align 4
@PPP_ADDR_DST0 = common dso_local global i32 0, align 4
@PPP_ADDR_DST1 = common dso_local global i32 0, align 4
@PPP_ADDR_DST_YSTRIDE = common dso_local global i32 0, align 4
@PPP_ADDR_EDGE = common dso_local global i32 0, align 4
@PPP_OP_BLEND_ON = common dso_local global i32 0, align 4
@PPP_ADDR_BG0 = common dso_local global i32 0, align 4
@PPP_ADDR_BG1 = common dso_local global i32 0, align 4
@PPP_ADDR_BG_YSTRIDE = common dso_local global i32 0, align 4
@src_img_cfg = common dso_local global i32* null, align 8
@PPP_ADDR_BG_CFG = common dso_local global i32 0, align 4
@pack_pattern = common dso_local global i32* null, align 8
@PPP_ADDR_BG_PACK_PATTERN = common dso_local global i32 0, align 4
@MDP_DISPLAY0_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdp_info*, %struct.mdp_blit_req*, %struct.mdp_regs*, %struct.file*, %struct.file*)* @send_blit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_blit(%struct.mdp_info* %0, %struct.mdp_blit_req* %1, %struct.mdp_regs* %2, %struct.file* %3, %struct.file* %4) #0 {
  %6 = alloca %struct.mdp_info*, align 8
  %7 = alloca %struct.mdp_blit_req*, align 8
  %8 = alloca %struct.mdp_regs*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.file*, align 8
  store %struct.mdp_info* %0, %struct.mdp_info** %6, align 8
  store %struct.mdp_blit_req* %1, %struct.mdp_blit_req** %7, align 8
  store %struct.mdp_regs* %2, %struct.mdp_regs** %8, align 8
  store %struct.file* %3, %struct.file** %9, align 8
  store %struct.file* %4, %struct.file** %10, align 8
  %11 = load %struct.mdp_info*, %struct.mdp_info** %6, align 8
  %12 = call i32 @mdp_writel(%struct.mdp_info* %11, i32 1, i32 96)
  %13 = load %struct.mdp_info*, %struct.mdp_info** %6, align 8
  %14 = load %struct.mdp_regs*, %struct.mdp_regs** %8, align 8
  %15 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PPP_ADDR_SRC_ROI, align 4
  %18 = call i32 @mdp_writel(%struct.mdp_info* %13, i32 %16, i32 %17)
  %19 = load %struct.mdp_info*, %struct.mdp_info** %6, align 8
  %20 = load %struct.mdp_regs*, %struct.mdp_regs** %8, align 8
  %21 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PPP_ADDR_SRC0, align 4
  %24 = call i32 @mdp_writel(%struct.mdp_info* %19, i32 %22, i32 %23)
  %25 = load %struct.mdp_info*, %struct.mdp_info** %6, align 8
  %26 = load %struct.mdp_regs*, %struct.mdp_regs** %8, align 8
  %27 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PPP_ADDR_SRC1, align 4
  %30 = call i32 @mdp_writel(%struct.mdp_info* %25, i32 %28, i32 %29)
  %31 = load %struct.mdp_info*, %struct.mdp_info** %6, align 8
  %32 = load %struct.mdp_regs*, %struct.mdp_regs** %8, align 8
  %33 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PPP_ADDR_SRC_YSTRIDE, align 4
  %36 = call i32 @mdp_writel(%struct.mdp_info* %31, i32 %34, i32 %35)
  %37 = load %struct.mdp_info*, %struct.mdp_info** %6, align 8
  %38 = load %struct.mdp_regs*, %struct.mdp_regs** %8, align 8
  %39 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PPP_ADDR_SRC_CFG, align 4
  %42 = call i32 @mdp_writel(%struct.mdp_info* %37, i32 %40, i32 %41)
  %43 = load %struct.mdp_info*, %struct.mdp_info** %6, align 8
  %44 = load %struct.mdp_regs*, %struct.mdp_regs** %8, align 8
  %45 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PPP_ADDR_SRC_PACK_PATTERN, align 4
  %48 = call i32 @mdp_writel(%struct.mdp_info* %43, i32 %46, i32 %47)
  %49 = load %struct.mdp_info*, %struct.mdp_info** %6, align 8
  %50 = load %struct.mdp_regs*, %struct.mdp_regs** %8, align 8
  %51 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PPP_ADDR_OPERATION, align 4
  %54 = call i32 @mdp_writel(%struct.mdp_info* %49, i32 %52, i32 %53)
  %55 = load %struct.mdp_info*, %struct.mdp_info** %6, align 8
  %56 = load %struct.mdp_regs*, %struct.mdp_regs** %8, align 8
  %57 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PPP_ADDR_PHASEX_INIT, align 4
  %60 = call i32 @mdp_writel(%struct.mdp_info* %55, i32 %58, i32 %59)
  %61 = load %struct.mdp_info*, %struct.mdp_info** %6, align 8
  %62 = load %struct.mdp_regs*, %struct.mdp_regs** %8, align 8
  %63 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PPP_ADDR_PHASEY_INIT, align 4
  %66 = call i32 @mdp_writel(%struct.mdp_info* %61, i32 %64, i32 %65)
  %67 = load %struct.mdp_info*, %struct.mdp_info** %6, align 8
  %68 = load %struct.mdp_regs*, %struct.mdp_regs** %8, align 8
  %69 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %68, i32 0, i32 9
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PPP_ADDR_PHASEX_STEP, align 4
  %72 = call i32 @mdp_writel(%struct.mdp_info* %67, i32 %70, i32 %71)
  %73 = load %struct.mdp_info*, %struct.mdp_info** %6, align 8
  %74 = load %struct.mdp_regs*, %struct.mdp_regs** %8, align 8
  %75 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %74, i32 0, i32 10
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PPP_ADDR_PHASEY_STEP, align 4
  %78 = call i32 @mdp_writel(%struct.mdp_info* %73, i32 %76, i32 %77)
  %79 = load %struct.mdp_info*, %struct.mdp_info** %6, align 8
  %80 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %7, align 8
  %81 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = shl i32 %82, 24
  %84 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %7, align 8
  %85 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 16777215
  %88 = or i32 %83, %87
  %89 = load i32, i32* @PPP_ADDR_ALPHA_TRANSP, align 4
  %90 = call i32 @mdp_writel(%struct.mdp_info* %79, i32 %88, i32 %89)
  %91 = load %struct.mdp_info*, %struct.mdp_info** %6, align 8
  %92 = load %struct.mdp_regs*, %struct.mdp_regs** %8, align 8
  %93 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %92, i32 0, i32 11
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @PPP_ADDR_DST_CFG, align 4
  %96 = call i32 @mdp_writel(%struct.mdp_info* %91, i32 %94, i32 %95)
  %97 = load %struct.mdp_info*, %struct.mdp_info** %6, align 8
  %98 = load %struct.mdp_regs*, %struct.mdp_regs** %8, align 8
  %99 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %98, i32 0, i32 12
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @PPP_ADDR_DST_PACK_PATTERN, align 4
  %102 = call i32 @mdp_writel(%struct.mdp_info* %97, i32 %100, i32 %101)
  %103 = load %struct.mdp_info*, %struct.mdp_info** %6, align 8
  %104 = load %struct.mdp_regs*, %struct.mdp_regs** %8, align 8
  %105 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %104, i32 0, i32 13
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @PPP_ADDR_DST_ROI, align 4
  %108 = call i32 @mdp_writel(%struct.mdp_info* %103, i32 %106, i32 %107)
  %109 = load %struct.mdp_info*, %struct.mdp_info** %6, align 8
  %110 = load %struct.mdp_regs*, %struct.mdp_regs** %8, align 8
  %111 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %110, i32 0, i32 14
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @PPP_ADDR_DST0, align 4
  %114 = call i32 @mdp_writel(%struct.mdp_info* %109, i32 %112, i32 %113)
  %115 = load %struct.mdp_info*, %struct.mdp_info** %6, align 8
  %116 = load %struct.mdp_regs*, %struct.mdp_regs** %8, align 8
  %117 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %116, i32 0, i32 15
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @PPP_ADDR_DST1, align 4
  %120 = call i32 @mdp_writel(%struct.mdp_info* %115, i32 %118, i32 %119)
  %121 = load %struct.mdp_info*, %struct.mdp_info** %6, align 8
  %122 = load %struct.mdp_regs*, %struct.mdp_regs** %8, align 8
  %123 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %122, i32 0, i32 16
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @PPP_ADDR_DST_YSTRIDE, align 4
  %126 = call i32 @mdp_writel(%struct.mdp_info* %121, i32 %124, i32 %125)
  %127 = load %struct.mdp_info*, %struct.mdp_info** %6, align 8
  %128 = load %struct.mdp_regs*, %struct.mdp_regs** %8, align 8
  %129 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %128, i32 0, i32 17
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @PPP_ADDR_EDGE, align 4
  %132 = call i32 @mdp_writel(%struct.mdp_info* %127, i32 %130, i32 %131)
  %133 = load %struct.mdp_regs*, %struct.mdp_regs** %8, align 8
  %134 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @PPP_OP_BLEND_ON, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %178

139:                                              ; preds = %5
  %140 = load %struct.mdp_info*, %struct.mdp_info** %6, align 8
  %141 = load %struct.mdp_regs*, %struct.mdp_regs** %8, align 8
  %142 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %141, i32 0, i32 14
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @PPP_ADDR_BG0, align 4
  %145 = call i32 @mdp_writel(%struct.mdp_info* %140, i32 %143, i32 %144)
  %146 = load %struct.mdp_info*, %struct.mdp_info** %6, align 8
  %147 = load %struct.mdp_regs*, %struct.mdp_regs** %8, align 8
  %148 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %147, i32 0, i32 15
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @PPP_ADDR_BG1, align 4
  %151 = call i32 @mdp_writel(%struct.mdp_info* %146, i32 %149, i32 %150)
  %152 = load %struct.mdp_info*, %struct.mdp_info** %6, align 8
  %153 = load %struct.mdp_regs*, %struct.mdp_regs** %8, align 8
  %154 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %153, i32 0, i32 16
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @PPP_ADDR_BG_YSTRIDE, align 4
  %157 = call i32 @mdp_writel(%struct.mdp_info* %152, i32 %155, i32 %156)
  %158 = load %struct.mdp_info*, %struct.mdp_info** %6, align 8
  %159 = load i32*, i32** @src_img_cfg, align 8
  %160 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %7, align 8
  %161 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds i32, i32* %159, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @PPP_ADDR_BG_CFG, align 4
  %167 = call i32 @mdp_writel(%struct.mdp_info* %158, i32 %165, i32 %166)
  %168 = load %struct.mdp_info*, %struct.mdp_info** %6, align 8
  %169 = load i32*, i32** @pack_pattern, align 8
  %170 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %7, align 8
  %171 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds i32, i32* %169, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @PPP_ADDR_BG_PACK_PATTERN, align 4
  %177 = call i32 @mdp_writel(%struct.mdp_info* %168, i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %139, %5
  %179 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %7, align 8
  %180 = load %struct.mdp_regs*, %struct.mdp_regs** %8, align 8
  %181 = load %struct.file*, %struct.file** %9, align 8
  %182 = load %struct.file*, %struct.file** %10, align 8
  %183 = call i32 @flush_imgs(%struct.mdp_blit_req* %179, %struct.mdp_regs* %180, %struct.file* %181, %struct.file* %182)
  %184 = load %struct.mdp_info*, %struct.mdp_info** %6, align 8
  %185 = load i32, i32* @MDP_DISPLAY0_START, align 4
  %186 = call i32 @mdp_writel(%struct.mdp_info* %184, i32 4096, i32 %185)
  ret i32 0
}

declare dso_local i32 @mdp_writel(%struct.mdp_info*, i32, i32) #1

declare dso_local i32 @flush_imgs(%struct.mdp_blit_req*, %struct.mdp_regs*, %struct.file*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

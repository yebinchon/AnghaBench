; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mdp_ppp.c_blit_blend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mdp_ppp.c_blit_blend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp_blit_req = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.mdp_regs = type { i32 }

@MDP_TRANSP_NOP = common dso_local global i64 0, align 8
@MDP_ALPHA_NOP = common dso_local global i32 0, align 4
@PPP_OP_ROT_ON = common dso_local global i32 0, align 4
@PPP_OP_BLEND_ON = common dso_local global i32 0, align 4
@PPP_OP_BLEND_ALPHA_BLEND_NORMAL = common dso_local global i32 0, align 4
@PPP_OP_BLEND_CONSTANT_ALPHA = common dso_local global i32 0, align 4
@PPP_BLEND_ALPHA_TRANSP = common dso_local global i32 0, align 4
@PPP_OP_BLEND_SRCPIXEL_TRANSP = common dso_local global i32 0, align 4
@PPP_OP_BLEND_SRCPIXEL_ALPHA = common dso_local global i32 0, align 4
@bg_op_chroma = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdp_blit_req*, %struct.mdp_regs*)* @blit_blend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blit_blend(%struct.mdp_blit_req* %0, %struct.mdp_regs* %1) #0 {
  %3 = alloca %struct.mdp_blit_req*, align 8
  %4 = alloca %struct.mdp_regs*, align 8
  store %struct.mdp_blit_req* %0, %struct.mdp_blit_req** %3, align 8
  store %struct.mdp_regs* %1, %struct.mdp_regs** %4, align 8
  %5 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %6 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MDP_TRANSP_NOP, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %45

10:                                               ; preds = %2
  %11 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %12 = call i64 @transp_convert(%struct.mdp_blit_req* %11)
  %13 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %14 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %16 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MDP_ALPHA_NOP, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %10
  %21 = load i32, i32* @PPP_OP_ROT_ON, align 4
  %22 = load i32, i32* @PPP_OP_BLEND_ON, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @PPP_OP_BLEND_ALPHA_BLEND_NORMAL, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @PPP_OP_BLEND_CONSTANT_ALPHA, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @PPP_BLEND_ALPHA_TRANSP, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.mdp_regs*, %struct.mdp_regs** %4, align 8
  %31 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %44

34:                                               ; preds = %10
  %35 = load i32, i32* @PPP_OP_ROT_ON, align 4
  %36 = load i32, i32* @PPP_OP_BLEND_ON, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @PPP_OP_BLEND_SRCPIXEL_TRANSP, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.mdp_regs*, %struct.mdp_regs** %4, align 8
  %41 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %34, %20
  br label %45

45:                                               ; preds = %44, %2
  %46 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %47 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, 255
  store i32 %49, i32* %47, align 8
  %50 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %51 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @HAS_ALPHA(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %45
  %57 = load i32, i32* @PPP_OP_ROT_ON, align 4
  %58 = load i32, i32* @PPP_OP_BLEND_ON, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @PPP_OP_BLEND_SRCPIXEL_ALPHA, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.mdp_regs*, %struct.mdp_regs** %4, align 8
  %63 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %85

66:                                               ; preds = %45
  %67 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %68 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @MDP_ALPHA_NOP, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load i32, i32* @PPP_OP_ROT_ON, align 4
  %74 = load i32, i32* @PPP_OP_BLEND_ON, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @PPP_OP_BLEND_ALPHA_BLEND_NORMAL, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @PPP_OP_BLEND_CONSTANT_ALPHA, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.mdp_regs*, %struct.mdp_regs** %4, align 8
  %81 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %72, %66
  br label %85

85:                                               ; preds = %84, %56
  %86 = load i32*, i32** @bg_op_chroma, align 8
  %87 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %88 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i32, i32* %86, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mdp_regs*, %struct.mdp_regs** %4, align 8
  %94 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  ret void
}

declare dso_local i64 @transp_convert(%struct.mdp_blit_req*) #1

declare dso_local i64 @HAS_ALPHA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

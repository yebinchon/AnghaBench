; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mdp_ppp.c_blit_blur.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mdp_ppp.c_blit_blur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp_info = type { i32 }
%struct.mdp_blit_req = type { i32 }
%struct.mdp_regs = type { i32 }

@MDP_BLUR = common dso_local global i32 0, align 4
@downscale_x_table = common dso_local global i64 0, align 8
@MDP_DOWNSCALE_BLUR = common dso_local global i64 0, align 8
@downscale_y_table = common dso_local global i64 0, align 8
@mdp_gaussian_blur_table = common dso_local global i32 0, align 4
@PPP_OP_SCALE_Y_ON = common dso_local global i32 0, align 4
@PPP_OP_SCALE_X_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdp_info*, %struct.mdp_blit_req*, %struct.mdp_regs*)* @blit_blur to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blit_blur(%struct.mdp_info* %0, %struct.mdp_blit_req* %1, %struct.mdp_regs* %2) #0 {
  %4 = alloca %struct.mdp_info*, align 8
  %5 = alloca %struct.mdp_blit_req*, align 8
  %6 = alloca %struct.mdp_regs*, align 8
  store %struct.mdp_info* %0, %struct.mdp_info** %4, align 8
  store %struct.mdp_blit_req* %1, %struct.mdp_blit_req** %5, align 8
  store %struct.mdp_regs* %2, %struct.mdp_regs** %6, align 8
  %7 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %5, align 8
  %8 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MDP_BLUR, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %36

14:                                               ; preds = %3
  %15 = load i64, i64* @downscale_x_table, align 8
  %16 = load i64, i64* @MDP_DOWNSCALE_BLUR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i64, i64* @downscale_y_table, align 8
  %20 = load i64, i64* @MDP_DOWNSCALE_BLUR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.mdp_info*, %struct.mdp_info** %4, align 8
  %24 = load i32, i32* @mdp_gaussian_blur_table, align 4
  %25 = call i32 @load_scale_table(%struct.mdp_info* %23, i32 %24, i32 128)
  %26 = load i64, i64* @MDP_DOWNSCALE_BLUR, align 8
  store i64 %26, i64* @downscale_x_table, align 8
  %27 = load i64, i64* @MDP_DOWNSCALE_BLUR, align 8
  store i64 %27, i64* @downscale_y_table, align 8
  br label %28

28:                                               ; preds = %22, %18
  %29 = load i32, i32* @PPP_OP_SCALE_Y_ON, align 4
  %30 = load i32, i32* @PPP_OP_SCALE_X_ON, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.mdp_regs*, %struct.mdp_regs** %6, align 8
  %33 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %28, %13
  ret void
}

declare dso_local i32 @load_scale_table(%struct.mdp_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

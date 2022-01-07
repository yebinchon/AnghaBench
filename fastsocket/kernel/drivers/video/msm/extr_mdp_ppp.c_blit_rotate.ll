; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mdp_ppp.c_blit_rotate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mdp_ppp.c_blit_rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp_blit_req = type { i32 }
%struct.mdp_regs = type { i32 }

@MDP_ROT_NOP = common dso_local global i32 0, align 4
@PPP_OP_ROT_ON = common dso_local global i32 0, align 4
@MDP_ROT_90 = common dso_local global i32 0, align 4
@MDP_FLIP_LR = common dso_local global i32 0, align 4
@PPP_OP_ROT_90 = common dso_local global i32 0, align 4
@MDP_FLIP_UD = common dso_local global i32 0, align 4
@PPP_OP_FLIP_UD = common dso_local global i32 0, align 4
@PPP_OP_FLIP_LR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdp_blit_req*, %struct.mdp_regs*)* @blit_rotate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blit_rotate(%struct.mdp_blit_req* %0, %struct.mdp_regs* %1) #0 {
  %3 = alloca %struct.mdp_blit_req*, align 8
  %4 = alloca %struct.mdp_regs*, align 8
  store %struct.mdp_blit_req* %0, %struct.mdp_blit_req** %3, align 8
  store %struct.mdp_regs* %1, %struct.mdp_regs** %4, align 8
  %5 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %6 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MDP_ROT_NOP, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %90

11:                                               ; preds = %2
  %12 = load i32, i32* @PPP_OP_ROT_ON, align 4
  %13 = load %struct.mdp_regs*, %struct.mdp_regs** %4, align 8
  %14 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %18 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MDP_ROT_90, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %11
  %24 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %25 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MDP_FLIP_LR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %23, %11
  %31 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %32 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MDP_ROT_90, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %39 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MDP_FLIP_LR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %37, %30
  %45 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %46 = load %struct.mdp_regs*, %struct.mdp_regs** %4, align 8
  %47 = call i32 @rotate_dst_addr_x(%struct.mdp_blit_req* %45, %struct.mdp_regs* %46)
  br label %48

48:                                               ; preds = %44, %37, %23
  %49 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %50 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MDP_ROT_90, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i32, i32* @PPP_OP_ROT_90, align 4
  %57 = load %struct.mdp_regs*, %struct.mdp_regs** %4, align 8
  %58 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %48
  %62 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %63 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MDP_FLIP_UD, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %61
  %69 = load i32, i32* @PPP_OP_FLIP_UD, align 4
  %70 = load %struct.mdp_regs*, %struct.mdp_regs** %4, align 8
  %71 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %75 = load %struct.mdp_regs*, %struct.mdp_regs** %4, align 8
  %76 = call i32 @rotate_dst_addr_y(%struct.mdp_blit_req* %74, %struct.mdp_regs* %75)
  br label %77

77:                                               ; preds = %68, %61
  %78 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %79 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MDP_FLIP_LR, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %77
  %85 = load i32, i32* @PPP_OP_FLIP_LR, align 4
  %86 = load %struct.mdp_regs*, %struct.mdp_regs** %4, align 8
  %87 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %10, %84, %77
  ret void
}

declare dso_local i32 @rotate_dst_addr_x(%struct.mdp_blit_req*, %struct.mdp_regs*) #1

declare dso_local i32 @rotate_dst_addr_y(%struct.mdp_blit_req*, %struct.mdp_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

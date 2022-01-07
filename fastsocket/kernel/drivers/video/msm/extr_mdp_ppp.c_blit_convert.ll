; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mdp_ppp.c_blit_convert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mdp_ppp.c_blit_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp_blit_req = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.mdp_regs = type { i32 }

@PPP_OP_CONVERT_RGB2YCBCR = common dso_local global i32 0, align 4
@PPP_OP_CONVERT_ON = common dso_local global i32 0, align 4
@PPP_OP_CONVERT_YCBCR2RGB = common dso_local global i32 0, align 4
@MDP_RGB_565 = common dso_local global i64 0, align 8
@PPP_OP_CONVERT_MATRIX_SECONDARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdp_blit_req*, %struct.mdp_regs*)* @blit_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blit_convert(%struct.mdp_blit_req* %0, %struct.mdp_regs* %1) #0 {
  %3 = alloca %struct.mdp_blit_req*, align 8
  %4 = alloca %struct.mdp_regs*, align 8
  store %struct.mdp_blit_req* %0, %struct.mdp_blit_req** %3, align 8
  store %struct.mdp_regs* %1, %struct.mdp_regs** %4, align 8
  %5 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %6 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %10 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %8, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %73

15:                                               ; preds = %2
  %16 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %17 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @IS_RGB(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %15
  %23 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %24 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @IS_YCRCB(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load i32, i32* @PPP_OP_CONVERT_RGB2YCBCR, align 4
  %31 = load i32, i32* @PPP_OP_CONVERT_ON, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.mdp_regs*, %struct.mdp_regs** %4, align 8
  %34 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %73

37:                                               ; preds = %22, %15
  %38 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %39 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @IS_YCRCB(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %37
  %45 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %46 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @IS_RGB(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %44
  %52 = load i32, i32* @PPP_OP_CONVERT_YCBCR2RGB, align 4
  %53 = load i32, i32* @PPP_OP_CONVERT_ON, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.mdp_regs*, %struct.mdp_regs** %4, align 8
  %56 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %60 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MDP_RGB_565, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %51
  %66 = load i32, i32* @PPP_OP_CONVERT_MATRIX_SECONDARY, align 4
  %67 = load %struct.mdp_regs*, %struct.mdp_regs** %4, align 8
  %68 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %51
  br label %72

72:                                               ; preds = %71, %44, %37
  br label %73

73:                                               ; preds = %14, %72, %29
  ret void
}

declare dso_local i64 @IS_RGB(i64) #1

declare dso_local i64 @IS_YCRCB(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

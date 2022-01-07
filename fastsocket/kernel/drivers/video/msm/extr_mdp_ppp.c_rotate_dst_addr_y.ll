; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mdp_ppp.c_rotate_dst_addr_y.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mdp_ppp.c_rotate_dst_addr_y.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp_blit_req = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mdp_regs = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdp_blit_req*, %struct.mdp_regs*)* @rotate_dst_addr_y to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rotate_dst_addr_y(%struct.mdp_blit_req* %0, %struct.mdp_regs* %1) #0 {
  %3 = alloca %struct.mdp_blit_req*, align 8
  %4 = alloca %struct.mdp_regs*, align 8
  store %struct.mdp_blit_req* %0, %struct.mdp_blit_req** %3, align 8
  store %struct.mdp_regs* %1, %struct.mdp_regs** %4, align 8
  %5 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %6 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %10 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @min(i32 16, i32 %12)
  %14 = sub nsw i32 %8, %13
  %15 = load %struct.mdp_regs*, %struct.mdp_regs** %4, align 8
  %16 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %14, %17
  %19 = load %struct.mdp_regs*, %struct.mdp_regs** %4, align 8
  %20 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %24 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %3, align 8
  %28 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @min(i32 16, i32 %30)
  %32 = sub nsw i32 %26, %31
  %33 = load %struct.mdp_regs*, %struct.mdp_regs** %4, align 8
  %34 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  %37 = load %struct.mdp_regs*, %struct.mdp_regs** %4, align 8
  %38 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, %36
  store i32 %40, i32* %38, align 4
  ret void
}

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

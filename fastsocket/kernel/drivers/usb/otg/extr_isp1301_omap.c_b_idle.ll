; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/otg/extr_isp1301_omap.c_b_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/otg/extr_isp1301_omap.c_b_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1301 = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__*, %struct.TYPE_4__*, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@OTG_STATE_B_IDLE = common dso_local global i64 0, align 8
@OTG_CTRL = common dso_local global i32 0, align 4
@OTG_XCEIV_OUTPUTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"  --> %s/%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp1301*, i8*)* @b_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b_idle(%struct.isp1301* %0, i8* %1) #0 {
  %3 = alloca %struct.isp1301*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.isp1301* %0, %struct.isp1301** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %7 = getelementptr inbounds %struct.isp1301, %struct.isp1301* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @OTG_STATE_B_IDLE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %63

13:                                               ; preds = %2
  %14 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %15 = getelementptr inbounds %struct.isp1301, %struct.isp1301* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %18 = getelementptr inbounds %struct.isp1301, %struct.isp1301* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %13
  %23 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %24 = getelementptr inbounds %struct.isp1301, %struct.isp1301* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %29 = call i32 @host_suspend(%struct.isp1301* %28)
  br label %30

30:                                               ; preds = %22, %13
  %31 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %32 = getelementptr inbounds %struct.isp1301, %struct.isp1301* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = icmp ne %struct.TYPE_5__* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %38 = getelementptr inbounds %struct.isp1301, %struct.isp1301* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %43 = call i32 @gadget_suspend(%struct.isp1301* %42)
  br label %44

44:                                               ; preds = %36, %30
  %45 = load i64, i64* @OTG_STATE_B_IDLE, align 8
  %46 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %47 = getelementptr inbounds %struct.isp1301, %struct.isp1301* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  %49 = load i32, i32* @OTG_CTRL, align 4
  %50 = call i32 @omap_readl(i32 %49)
  %51 = load i32, i32* @OTG_XCEIV_OUTPUTS, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @OTG_CTRL, align 4
  %55 = call i32 @omap_writel(i32 %53, i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %58 = getelementptr inbounds %struct.isp1301, %struct.isp1301* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %60 = call i32 @state_name(%struct.isp1301* %59)
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %60, i8* %61)
  br label %63

63:                                               ; preds = %44, %12
  ret void
}

declare dso_local i32 @host_suspend(%struct.isp1301*) #1

declare dso_local i32 @gadget_suspend(%struct.isp1301*) #1

declare dso_local i32 @omap_readl(i32) #1

declare dso_local i32 @omap_writel(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i8*) #1

declare dso_local i32 @state_name(%struct.isp1301*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

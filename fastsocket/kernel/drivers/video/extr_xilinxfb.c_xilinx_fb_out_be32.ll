; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_xilinxfb.c_xilinx_fb_out_be32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_xilinxfb.c_xilinx_fb_out_be32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilinxfb_drvdata = type { i32, i32, i64 }

@PLB_ACCESS_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xilinxfb_drvdata*, i32, i32)* @xilinx_fb_out_be32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xilinx_fb_out_be32(%struct.xilinxfb_drvdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xilinxfb_drvdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xilinxfb_drvdata* %0, %struct.xilinxfb_drvdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %4, align 8
  %8 = getelementptr inbounds %struct.xilinxfb_drvdata, %struct.xilinxfb_drvdata* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @PLB_ACCESS_FLAG, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %4, align 8
  %15 = getelementptr inbounds %struct.xilinxfb_drvdata, %struct.xilinxfb_drvdata* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @out_be32(i64 %20, i32 %21)
  br label %30

23:                                               ; preds = %3
  %24 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %4, align 8
  %25 = getelementptr inbounds %struct.xilinxfb_drvdata, %struct.xilinxfb_drvdata* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dcr_write(i32 %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %23, %13
  ret void
}

declare dso_local i32 @out_be32(i64, i32) #1

declare dso_local i32 @dcr_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

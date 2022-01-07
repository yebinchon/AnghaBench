; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_process_frame_done_irq_no_frag_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_process_frame_done_irq_no_frag_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.vfe_output_path_combo = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@ctrl = common dso_local global %struct.TYPE_6__* null, align 8
@VFE_BUS_PINGPONG_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"hardware status is 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"pong 1 addr = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"pong 2 addr = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"ping 1 addr = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"ping 2 addr = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"NextAddress = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_output_path_combo*, i32*, i32*)* @vfe_process_frame_done_irq_no_frag_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_process_frame_done_irq_no_frag_io(%struct.vfe_output_path_combo* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.vfe_output_path_combo*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vfe_output_path_combo* %0, %struct.vfe_output_path_combo** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @VFE_BUS_PINGPONG_STATUS, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @CDBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %4, align 8
  %19 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 1, %20
  %22 = and i32 %17, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %60

25:                                               ; preds = %3
  %26 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %4, align 8
  %27 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @readl(i64 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @CDBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  %36 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %4, align 8
  %37 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @readl(i64 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @CDBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = load i32*, i32** %6, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %5, align 8
  %47 = load i32, i32* %45, align 4
  %48 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %4, align 8
  %49 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @writel(i32 %47, i64 %51)
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %4, align 8
  %56 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @writel(i32 %54, i64 %58)
  br label %98

60:                                               ; preds = %3
  %61 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %4, align 8
  %62 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @readl(i64 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @CDBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %6, align 8
  store i32 %68, i32* %69, align 4
  %71 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %4, align 8
  %72 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @readl(i64 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @CDBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = load i32*, i32** %6, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %5, align 8
  %82 = load i32, i32* %80, align 4
  %83 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %4, align 8
  %84 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @writel(i32 %82, i64 %86)
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @CDBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %4, align 8
  %94 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @writel(i32 %92, i64 %96)
  br label %98

98:                                               ; preds = %60, %25
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @CDBG(i8*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

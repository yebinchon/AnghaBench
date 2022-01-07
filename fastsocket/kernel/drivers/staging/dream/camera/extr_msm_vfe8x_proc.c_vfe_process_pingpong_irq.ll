; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_process_pingpong_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_process_pingpong_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_output_path = type { i32, i64, i32, i32, i32* }

@ping = common dso_local global i64 0, align 8
@pong = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_output_path*, i32)* @vfe_process_pingpong_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_process_pingpong_irq(%struct.vfe_output_path* %0, i32 %1) #0 {
  %3 = alloca %struct.vfe_output_path*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.vfe_output_path* %0, %struct.vfe_output_path** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vfe_output_path*, %struct.vfe_output_path** %3, align 8
  %8 = getelementptr inbounds %struct.vfe_output_path, %struct.vfe_output_path* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = mul nsw i32 2, %10
  %12 = srem i32 %9, %11
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %5, align 8
  %14 = load %struct.vfe_output_path*, %struct.vfe_output_path** %3, align 8
  %15 = getelementptr inbounds %struct.vfe_output_path, %struct.vfe_output_path* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i64, i64* %5, align 8
  %21 = add i64 %20, 1
  %22 = trunc i64 %21 to i32
  %23 = load %struct.vfe_output_path*, %struct.vfe_output_path** %3, align 8
  %24 = getelementptr inbounds %struct.vfe_output_path, %struct.vfe_output_path* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.vfe_output_path*, %struct.vfe_output_path** %3, align 8
  %26 = getelementptr inbounds %struct.vfe_output_path, %struct.vfe_output_path* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ping, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.vfe_output_path*, %struct.vfe_output_path** %3, align 8
  %33 = getelementptr inbounds %struct.vfe_output_path, %struct.vfe_output_path* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @writel(i32 %31, i32 %34)
  %36 = load i64, i64* @pong, align 8
  %37 = load %struct.vfe_output_path*, %struct.vfe_output_path** %3, align 8
  %38 = getelementptr inbounds %struct.vfe_output_path, %struct.vfe_output_path* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  br label %48

39:                                               ; preds = %2
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.vfe_output_path*, %struct.vfe_output_path** %3, align 8
  %42 = getelementptr inbounds %struct.vfe_output_path, %struct.vfe_output_path* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @writel(i32 %40, i32 %43)
  %45 = load i64, i64* @ping, align 8
  %46 = load %struct.vfe_output_path*, %struct.vfe_output_path** %3, align 8
  %47 = getelementptr inbounds %struct.vfe_output_path, %struct.vfe_output_path* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %39, %30
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

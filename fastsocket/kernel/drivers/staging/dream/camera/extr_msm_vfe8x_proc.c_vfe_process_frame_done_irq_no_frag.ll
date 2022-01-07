; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_process_frame_done_irq_no_frag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_process_frame_done_irq_no_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.vfe_output_path_combo = type { i32, i32, i32, i32 }

@vfe_process_frame_done_irq_no_frag.fcnt = internal global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"waiting frame ACK\0A\00", align 1
@ctrl = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_output_path_combo*)* @vfe_process_frame_done_irq_no_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_process_frame_done_irq_no_frag(%struct.vfe_output_path_combo* %0) #0 {
  %2 = alloca %struct.vfe_output_path_combo*, align 8
  %3 = alloca [2 x i32], align 4
  store %struct.vfe_output_path_combo* %0, %struct.vfe_output_path_combo** %2, align 8
  %4 = load i32, i32* @vfe_process_frame_done_irq_no_frag.fcnt, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @vfe_process_frame_done_irq_no_frag.fcnt, align 4
  %6 = icmp slt i32 %4, 3
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %62

8:                                                ; preds = %1
  %9 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %2, align 8
  %10 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %8
  %14 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %2, align 8
  %15 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %2, align 8
  %16 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %19 = call i32 @vfe_process_frame_done_irq_no_frag_io(%struct.vfe_output_path_combo* %14, i32 %17, i32* %18)
  %20 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %2, align 8
  %21 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @vfe_send_output_msg(i32 %22, i32 %24, i32 %26)
  br label %52

28:                                               ; preds = %8
  %29 = call i32 @CDBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %2, align 8
  %31 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %28
  %41 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %2, align 8
  %42 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %40
  br label %52

52:                                               ; preds = %51, %13
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %2, align 8
  %59 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %7, %57, %52
  ret void
}

declare dso_local i32 @vfe_process_frame_done_irq_no_frag_io(%struct.vfe_output_path_combo*, i32, i32*) #1

declare dso_local i32 @vfe_send_output_msg(i32, i32, i32) #1

declare dso_local i32 @CDBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

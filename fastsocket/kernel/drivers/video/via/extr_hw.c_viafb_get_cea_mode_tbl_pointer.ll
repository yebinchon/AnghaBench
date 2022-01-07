; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_viafb_get_cea_mode_tbl_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_viafb_get_cea_mode_tbl_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VideoModeTable = type { i32 }

@NUM_TOTAL_CEA_MODES = common dso_local global i32 0, align 4
@CEA_HDMI_Modes = common dso_local global %struct.VideoModeTable* null, align 8
@NUM_TOTAL_MODETABLE = common dso_local global i32 0, align 4
@CLE266Modes = common dso_local global %struct.VideoModeTable* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.VideoModeTable* @viafb_get_cea_mode_tbl_pointer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.VideoModeTable*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.VideoModeTable* null, %struct.VideoModeTable** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @NUM_TOTAL_CEA_MODES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = load i32, i32* %2, align 4
  %11 = load %struct.VideoModeTable*, %struct.VideoModeTable** @CEA_HDMI_Modes, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.VideoModeTable, %struct.VideoModeTable* %11, i64 %13
  %15 = getelementptr inbounds %struct.VideoModeTable, %struct.VideoModeTable* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %10, %16
  br label %18

18:                                               ; preds = %9, %5
  %19 = phi i1 [ false, %5 ], [ %17, %9 ]
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %5

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @NUM_TOTAL_CEA_MODES, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.VideoModeTable*, %struct.VideoModeTable** @CEA_HDMI_Modes, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.VideoModeTable, %struct.VideoModeTable* %28, i64 %30
  store %struct.VideoModeTable* %31, %struct.VideoModeTable** %3, align 8
  br label %61

32:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %48, %32
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @NUM_TOTAL_MODETABLE, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load i32, i32* %2, align 4
  %39 = load %struct.VideoModeTable*, %struct.VideoModeTable** @CLE266Modes, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.VideoModeTable, %struct.VideoModeTable* %39, i64 %41
  %43 = getelementptr inbounds %struct.VideoModeTable, %struct.VideoModeTable* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %38, %44
  br label %46

46:                                               ; preds = %37, %33
  %47 = phi i1 [ false, %33 ], [ %45, %37 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %33

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @NUM_TOTAL_MODETABLE, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %51
  %57 = load %struct.VideoModeTable*, %struct.VideoModeTable** @CLE266Modes, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.VideoModeTable, %struct.VideoModeTable* %57, i64 %59
  store %struct.VideoModeTable* %60, %struct.VideoModeTable** %3, align 8
  br label %61

61:                                               ; preds = %56, %27
  %62 = load %struct.VideoModeTable*, %struct.VideoModeTable** %3, align 8
  ret %struct.VideoModeTable* %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

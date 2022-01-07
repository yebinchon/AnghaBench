; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nvidia.c_nvidia_save_vga.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nvidia.c_nvidia_save_vga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvidia_par = type { i32 }
%struct._riva_hw_state = type { i32*, i32*, i32*, i32*, i32 }

@NUM_CRT_REGS = common dso_local global i32 0, align 4
@NUM_ATC_REGS = common dso_local global i32 0, align 4
@NUM_GRC_REGS = common dso_local global i32 0, align 4
@NUM_SEQ_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvidia_par*, %struct._riva_hw_state*)* @nvidia_save_vga to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvidia_save_vga(%struct.nvidia_par* %0, %struct._riva_hw_state* %1) #0 {
  %3 = alloca %struct.nvidia_par*, align 8
  %4 = alloca %struct._riva_hw_state*, align 8
  %5 = alloca i32, align 4
  store %struct.nvidia_par* %0, %struct.nvidia_par** %3, align 8
  store %struct._riva_hw_state* %1, %struct._riva_hw_state** %4, align 8
  %6 = call i32 (...) @NVTRACE_ENTER()
  %7 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %8 = call i32 @NVLockUnlock(%struct.nvidia_par* %7, i32 0)
  %9 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %10 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %11 = call i32 @NVUnloadStateExt(%struct.nvidia_par* %9, %struct._riva_hw_state* %10)
  %12 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %13 = call i32 @NVReadMiscOut(%struct.nvidia_par* %12)
  %14 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %15 = getelementptr inbounds %struct._riva_hw_state, %struct._riva_hw_state* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 8
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %30, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @NUM_CRT_REGS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @NVReadCrtc(%struct.nvidia_par* %21, i32 %22)
  %24 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %25 = getelementptr inbounds %struct._riva_hw_state, %struct._riva_hw_state* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %23, i32* %29, align 4
  br label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %16

33:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %48, %33
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @NUM_ATC_REGS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @NVReadAttr(%struct.nvidia_par* %39, i32 %40)
  %42 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %43 = getelementptr inbounds %struct._riva_hw_state, %struct._riva_hw_state* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %41, i32* %47, align 4
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %34

51:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %66, %51
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @NUM_GRC_REGS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @NVReadGr(%struct.nvidia_par* %57, i32 %58)
  %60 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %61 = getelementptr inbounds %struct._riva_hw_state, %struct._riva_hw_state* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  br label %66

66:                                               ; preds = %56
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %52

69:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %84, %69
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @NUM_SEQ_REGS, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @NVReadSeq(%struct.nvidia_par* %75, i32 %76)
  %78 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %79 = getelementptr inbounds %struct._riva_hw_state, %struct._riva_hw_state* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %77, i32* %83, align 4
  br label %84

84:                                               ; preds = %74
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %70

87:                                               ; preds = %70
  %88 = call i32 (...) @NVTRACE_LEAVE()
  ret void
}

declare dso_local i32 @NVTRACE_ENTER(...) #1

declare dso_local i32 @NVLockUnlock(%struct.nvidia_par*, i32) #1

declare dso_local i32 @NVUnloadStateExt(%struct.nvidia_par*, %struct._riva_hw_state*) #1

declare dso_local i32 @NVReadMiscOut(%struct.nvidia_par*) #1

declare dso_local i32 @NVReadCrtc(%struct.nvidia_par*, i32) #1

declare dso_local i32 @NVReadAttr(%struct.nvidia_par*, i32) #1

declare dso_local i32 @NVReadGr(%struct.nvidia_par*, i32) #1

declare dso_local i32 @NVReadSeq(%struct.nvidia_par*, i32) #1

declare dso_local i32 @NVTRACE_LEAVE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

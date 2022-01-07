; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2-frame.c_dwarf2_frame_default_init_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2-frame.c_dwarf2_frame_default_init_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.dwarf2_frame_state_reg = type { i32 }

@PC_REGNUM = common dso_local global i32 0, align 4
@DWARF2_FRAME_REG_RA = common dso_local global i32 0, align 4
@SP_REGNUM = common dso_local global i32 0, align 4
@DWARF2_FRAME_REG_CFA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gdbarch*, i32, %struct.dwarf2_frame_state_reg*)* @dwarf2_frame_default_init_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwarf2_frame_default_init_reg(%struct.gdbarch* %0, i32 %1, %struct.dwarf2_frame_state_reg* %2) #0 {
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dwarf2_frame_state_reg*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dwarf2_frame_state_reg* %2, %struct.dwarf2_frame_state_reg** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @PC_REGNUM, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32, i32* @DWARF2_FRAME_REG_RA, align 4
  %12 = load %struct.dwarf2_frame_state_reg*, %struct.dwarf2_frame_state_reg** %6, align 8
  %13 = getelementptr inbounds %struct.dwarf2_frame_state_reg, %struct.dwarf2_frame_state_reg* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  br label %23

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SP_REGNUM, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* @DWARF2_FRAME_REG_CFA, align 4
  %20 = load %struct.dwarf2_frame_state_reg*, %struct.dwarf2_frame_state_reg** %6, align 8
  %21 = getelementptr inbounds %struct.dwarf2_frame_state_reg, %struct.dwarf2_frame_state_reg* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %14
  br label %23

23:                                               ; preds = %22, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

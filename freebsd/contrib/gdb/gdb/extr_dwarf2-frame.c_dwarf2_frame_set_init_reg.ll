; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2-frame.c_dwarf2_frame_set_init_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2-frame.c_dwarf2_frame_set_init_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.dwarf2_frame_state_reg = type opaque
%struct.dwarf2_frame_ops = type { void (%struct.gdbarch*, i32, %struct.dwarf2_frame_state_reg.0*)* }
%struct.dwarf2_frame_state_reg.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwarf2_frame_set_init_reg(%struct.gdbarch* %0, void (%struct.gdbarch*, i32, %struct.dwarf2_frame_state_reg*)* %1) #0 {
  %3 = alloca %struct.gdbarch*, align 8
  %4 = alloca void (%struct.gdbarch*, i32, %struct.dwarf2_frame_state_reg*)*, align 8
  %5 = alloca %struct.dwarf2_frame_ops*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %3, align 8
  store void (%struct.gdbarch*, i32, %struct.dwarf2_frame_state_reg*)* %1, void (%struct.gdbarch*, i32, %struct.dwarf2_frame_state_reg*)** %4, align 8
  %6 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %7 = call %struct.dwarf2_frame_ops* @dwarf2_frame_ops(%struct.gdbarch* %6)
  store %struct.dwarf2_frame_ops* %7, %struct.dwarf2_frame_ops** %5, align 8
  %8 = load void (%struct.gdbarch*, i32, %struct.dwarf2_frame_state_reg*)*, void (%struct.gdbarch*, i32, %struct.dwarf2_frame_state_reg*)** %4, align 8
  %9 = bitcast void (%struct.gdbarch*, i32, %struct.dwarf2_frame_state_reg*)* %8 to void (%struct.gdbarch*, i32, %struct.dwarf2_frame_state_reg.0*)*
  %10 = load %struct.dwarf2_frame_ops*, %struct.dwarf2_frame_ops** %5, align 8
  %11 = getelementptr inbounds %struct.dwarf2_frame_ops, %struct.dwarf2_frame_ops* %10, i32 0, i32 0
  store void (%struct.gdbarch*, i32, %struct.dwarf2_frame_state_reg.0*)* %9, void (%struct.gdbarch*, i32, %struct.dwarf2_frame_state_reg.0*)** %11, align 8
  ret void
}

declare dso_local %struct.dwarf2_frame_ops* @dwarf2_frame_ops(%struct.gdbarch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2-frame.c_dwarf2_frame_state_free_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2-frame.c_dwarf2_frame_state_free_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf2_frame_state_reg_info = type { %struct.dwarf2_frame_state_reg_info*, %struct.dwarf2_frame_state_reg_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwarf2_frame_state_reg_info*)* @dwarf2_frame_state_free_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwarf2_frame_state_free_regs(%struct.dwarf2_frame_state_reg_info* %0) #0 {
  %2 = alloca %struct.dwarf2_frame_state_reg_info*, align 8
  store %struct.dwarf2_frame_state_reg_info* %0, %struct.dwarf2_frame_state_reg_info** %2, align 8
  %3 = load %struct.dwarf2_frame_state_reg_info*, %struct.dwarf2_frame_state_reg_info** %2, align 8
  %4 = icmp ne %struct.dwarf2_frame_state_reg_info* %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load %struct.dwarf2_frame_state_reg_info*, %struct.dwarf2_frame_state_reg_info** %2, align 8
  %7 = getelementptr inbounds %struct.dwarf2_frame_state_reg_info, %struct.dwarf2_frame_state_reg_info* %6, i32 0, i32 1
  %8 = load %struct.dwarf2_frame_state_reg_info*, %struct.dwarf2_frame_state_reg_info** %7, align 8
  call void @dwarf2_frame_state_free_regs(%struct.dwarf2_frame_state_reg_info* %8)
  %9 = load %struct.dwarf2_frame_state_reg_info*, %struct.dwarf2_frame_state_reg_info** %2, align 8
  %10 = getelementptr inbounds %struct.dwarf2_frame_state_reg_info, %struct.dwarf2_frame_state_reg_info* %9, i32 0, i32 0
  %11 = load %struct.dwarf2_frame_state_reg_info*, %struct.dwarf2_frame_state_reg_info** %10, align 8
  %12 = call i32 @xfree(%struct.dwarf2_frame_state_reg_info* %11)
  %13 = load %struct.dwarf2_frame_state_reg_info*, %struct.dwarf2_frame_state_reg_info** %2, align 8
  %14 = call i32 @xfree(%struct.dwarf2_frame_state_reg_info* %13)
  br label %15

15:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @xfree(%struct.dwarf2_frame_state_reg_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

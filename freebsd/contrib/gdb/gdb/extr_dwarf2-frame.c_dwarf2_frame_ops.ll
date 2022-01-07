; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2-frame.c_dwarf2_frame_ops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2-frame.c_dwarf2_frame_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf2_frame_ops = type { i32 }
%struct.gdbarch = type { i32 }

@dwarf2_frame_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dwarf2_frame_ops* (%struct.gdbarch*)* @dwarf2_frame_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dwarf2_frame_ops* @dwarf2_frame_ops(%struct.gdbarch* %0) #0 {
  %2 = alloca %struct.gdbarch*, align 8
  %3 = alloca %struct.dwarf2_frame_ops*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %2, align 8
  %4 = load %struct.gdbarch*, %struct.gdbarch** %2, align 8
  %5 = load i32, i32* @dwarf2_frame_data, align 4
  %6 = call %struct.dwarf2_frame_ops* @gdbarch_data(%struct.gdbarch* %4, i32 %5)
  store %struct.dwarf2_frame_ops* %6, %struct.dwarf2_frame_ops** %3, align 8
  %7 = load %struct.dwarf2_frame_ops*, %struct.dwarf2_frame_ops** %3, align 8
  %8 = icmp eq %struct.dwarf2_frame_ops* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.gdbarch*, %struct.gdbarch** %2, align 8
  %11 = call %struct.dwarf2_frame_ops* @dwarf2_frame_init(%struct.gdbarch* %10)
  store %struct.dwarf2_frame_ops* %11, %struct.dwarf2_frame_ops** %3, align 8
  %12 = load %struct.gdbarch*, %struct.gdbarch** %2, align 8
  %13 = load i32, i32* @dwarf2_frame_data, align 4
  %14 = load %struct.dwarf2_frame_ops*, %struct.dwarf2_frame_ops** %3, align 8
  %15 = call i32 @set_gdbarch_data(%struct.gdbarch* %12, i32 %13, %struct.dwarf2_frame_ops* %14)
  br label %16

16:                                               ; preds = %9, %1
  %17 = load %struct.dwarf2_frame_ops*, %struct.dwarf2_frame_ops** %3, align 8
  ret %struct.dwarf2_frame_ops* %17
}

declare dso_local %struct.dwarf2_frame_ops* @gdbarch_data(%struct.gdbarch*, i32) #1

declare dso_local %struct.dwarf2_frame_ops* @dwarf2_frame_init(%struct.gdbarch*) #1

declare dso_local i32 @set_gdbarch_data(%struct.gdbarch*, i32, %struct.dwarf2_frame_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

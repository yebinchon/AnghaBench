; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame-base.c_frame_base_set_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame-base.c_frame_base_set_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.frame_base = type { i32 }
%struct.frame_base_table = type { %struct.frame_base* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @frame_base_set_default(%struct.gdbarch* %0, %struct.frame_base* %1) #0 {
  %3 = alloca %struct.gdbarch*, align 8
  %4 = alloca %struct.frame_base*, align 8
  %5 = alloca %struct.frame_base_table*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %3, align 8
  store %struct.frame_base* %1, %struct.frame_base** %4, align 8
  %6 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %7 = call %struct.frame_base_table* @frame_base_table(%struct.gdbarch* %6)
  store %struct.frame_base_table* %7, %struct.frame_base_table** %5, align 8
  %8 = load %struct.frame_base*, %struct.frame_base** %4, align 8
  %9 = load %struct.frame_base_table*, %struct.frame_base_table** %5, align 8
  %10 = getelementptr inbounds %struct.frame_base_table, %struct.frame_base_table* %9, i32 0, i32 0
  store %struct.frame_base* %8, %struct.frame_base** %10, align 8
  ret void
}

declare dso_local %struct.frame_base_table* @frame_base_table(%struct.gdbarch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

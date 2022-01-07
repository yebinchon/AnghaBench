; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame-unwind.c_frame_unwind_append_sniffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame-unwind.c_frame_unwind_append_sniffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.frame_unwind_table = type { i32 }

@frame_unwind_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @frame_unwind_append_sniffer(%struct.gdbarch* %0, i32* %1) #0 {
  %3 = alloca %struct.gdbarch*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.frame_unwind_table*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %7 = load i32, i32* @frame_unwind_data, align 4
  %8 = call %struct.frame_unwind_table* @gdbarch_data(%struct.gdbarch* %6, i32 %7)
  store %struct.frame_unwind_table* %8, %struct.frame_unwind_table** %5, align 8
  %9 = load %struct.frame_unwind_table*, %struct.frame_unwind_table** %5, align 8
  %10 = icmp eq %struct.frame_unwind_table* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %13 = call %struct.frame_unwind_table* @frame_unwind_init(%struct.gdbarch* %12)
  store %struct.frame_unwind_table* %13, %struct.frame_unwind_table** %5, align 8
  %14 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %15 = load i32, i32* @frame_unwind_data, align 4
  %16 = load %struct.frame_unwind_table*, %struct.frame_unwind_table** %5, align 8
  %17 = call i32 @set_gdbarch_data(%struct.gdbarch* %14, i32 %15, %struct.frame_unwind_table* %16)
  br label %18

18:                                               ; preds = %11, %2
  %19 = load %struct.frame_unwind_table*, %struct.frame_unwind_table** %5, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @append_predicate(%struct.frame_unwind_table* %19, i32* %20)
  ret void
}

declare dso_local %struct.frame_unwind_table* @gdbarch_data(%struct.gdbarch*, i32) #1

declare dso_local %struct.frame_unwind_table* @frame_unwind_init(%struct.gdbarch*) #1

declare dso_local i32 @set_gdbarch_data(%struct.gdbarch*, i32, %struct.frame_unwind_table*) #1

declare dso_local i32 @append_predicate(%struct.frame_unwind_table*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

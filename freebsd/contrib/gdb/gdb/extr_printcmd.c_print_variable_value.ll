; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_print_variable_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_print_variable_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.frame_info = type { i32 }
%struct.ui_file = type { i32 }
%struct.value = type { i32 }

@Val_pretty_default = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_variable_value(%struct.symbol* %0, %struct.frame_info* %1, %struct.ui_file* %2) #0 {
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca %struct.frame_info*, align 8
  %6 = alloca %struct.ui_file*, align 8
  %7 = alloca %struct.value*, align 8
  store %struct.symbol* %0, %struct.symbol** %4, align 8
  store %struct.frame_info* %1, %struct.frame_info** %5, align 8
  store %struct.ui_file* %2, %struct.ui_file** %6, align 8
  %8 = load %struct.symbol*, %struct.symbol** %4, align 8
  %9 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %10 = call %struct.value* @read_var_value(%struct.symbol* %8, %struct.frame_info* %9)
  store %struct.value* %10, %struct.value** %7, align 8
  %11 = load %struct.value*, %struct.value** %7, align 8
  %12 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %13 = load i32, i32* @Val_pretty_default, align 4
  %14 = call i32 @value_print(%struct.value* %11, %struct.ui_file* %12, i32 0, i32 %13)
  ret void
}

declare dso_local %struct.value* @read_var_value(%struct.symbol*, %struct.frame_info*) #1

declare dso_local i32 @value_print(%struct.value*, %struct.ui_file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2loc.c_locexpr_read_variable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2loc.c_locexpr_read_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.symbol = type { i32 }
%struct.frame_info = type { i32 }
%struct.dwarf2_locexpr_baton = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%struct.symbol*, %struct.frame_info*)* @locexpr_read_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @locexpr_read_variable(%struct.symbol* %0, %struct.frame_info* %1) #0 {
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca %struct.frame_info*, align 8
  %5 = alloca %struct.dwarf2_locexpr_baton*, align 8
  %6 = alloca %struct.value*, align 8
  store %struct.symbol* %0, %struct.symbol** %3, align 8
  store %struct.frame_info* %1, %struct.frame_info** %4, align 8
  %7 = load %struct.symbol*, %struct.symbol** %3, align 8
  %8 = call %struct.dwarf2_locexpr_baton* @SYMBOL_LOCATION_BATON(%struct.symbol* %7)
  store %struct.dwarf2_locexpr_baton* %8, %struct.dwarf2_locexpr_baton** %5, align 8
  %9 = load %struct.symbol*, %struct.symbol** %3, align 8
  %10 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %11 = load %struct.dwarf2_locexpr_baton*, %struct.dwarf2_locexpr_baton** %5, align 8
  %12 = getelementptr inbounds %struct.dwarf2_locexpr_baton, %struct.dwarf2_locexpr_baton* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.dwarf2_locexpr_baton*, %struct.dwarf2_locexpr_baton** %5, align 8
  %15 = getelementptr inbounds %struct.dwarf2_locexpr_baton, %struct.dwarf2_locexpr_baton* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dwarf2_locexpr_baton*, %struct.dwarf2_locexpr_baton** %5, align 8
  %18 = getelementptr inbounds %struct.dwarf2_locexpr_baton, %struct.dwarf2_locexpr_baton* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.value* @dwarf2_evaluate_loc_desc(%struct.symbol* %9, %struct.frame_info* %10, i32 %13, i32 %16, i32 %19)
  store %struct.value* %20, %struct.value** %6, align 8
  %21 = load %struct.value*, %struct.value** %6, align 8
  ret %struct.value* %21
}

declare dso_local %struct.dwarf2_locexpr_baton* @SYMBOL_LOCATION_BATON(%struct.symbol*) #1

declare dso_local %struct.value* @dwarf2_evaluate_loc_desc(%struct.symbol*, %struct.frame_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

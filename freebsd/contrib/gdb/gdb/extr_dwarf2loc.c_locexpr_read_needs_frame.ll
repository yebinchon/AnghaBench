; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2loc.c_locexpr_read_needs_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2loc.c_locexpr_read_needs_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.dwarf2_locexpr_baton = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.symbol*)* @locexpr_read_needs_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @locexpr_read_needs_frame(%struct.symbol* %0) #0 {
  %2 = alloca %struct.symbol*, align 8
  %3 = alloca %struct.dwarf2_locexpr_baton*, align 8
  store %struct.symbol* %0, %struct.symbol** %2, align 8
  %4 = load %struct.symbol*, %struct.symbol** %2, align 8
  %5 = call %struct.dwarf2_locexpr_baton* @SYMBOL_LOCATION_BATON(%struct.symbol* %4)
  store %struct.dwarf2_locexpr_baton* %5, %struct.dwarf2_locexpr_baton** %3, align 8
  %6 = load %struct.dwarf2_locexpr_baton*, %struct.dwarf2_locexpr_baton** %3, align 8
  %7 = getelementptr inbounds %struct.dwarf2_locexpr_baton, %struct.dwarf2_locexpr_baton* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.dwarf2_locexpr_baton*, %struct.dwarf2_locexpr_baton** %3, align 8
  %10 = getelementptr inbounds %struct.dwarf2_locexpr_baton, %struct.dwarf2_locexpr_baton* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dwarf2_loc_desc_needs_frame(i32 %8, i32 %11)
  ret i32 %12
}

declare dso_local %struct.dwarf2_locexpr_baton* @SYMBOL_LOCATION_BATON(%struct.symbol*) #1

declare dso_local i32 @dwarf2_loc_desc_needs_frame(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

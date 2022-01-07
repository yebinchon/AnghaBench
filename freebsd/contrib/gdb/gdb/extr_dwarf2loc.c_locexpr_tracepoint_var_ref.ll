; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2loc.c_locexpr_tracepoint_var_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2loc.c_locexpr_tracepoint_var_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.agent_expr = type { i32 }
%struct.axs_value = type { i32 }
%struct.dwarf2_locexpr_baton = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.symbol*, %struct.agent_expr*, %struct.axs_value*)* @locexpr_tracepoint_var_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @locexpr_tracepoint_var_ref(%struct.symbol* %0, %struct.agent_expr* %1, %struct.axs_value* %2) #0 {
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca %struct.agent_expr*, align 8
  %6 = alloca %struct.axs_value*, align 8
  %7 = alloca %struct.dwarf2_locexpr_baton*, align 8
  store %struct.symbol* %0, %struct.symbol** %4, align 8
  store %struct.agent_expr* %1, %struct.agent_expr** %5, align 8
  store %struct.axs_value* %2, %struct.axs_value** %6, align 8
  %8 = load %struct.symbol*, %struct.symbol** %4, align 8
  %9 = call %struct.dwarf2_locexpr_baton* @SYMBOL_LOCATION_BATON(%struct.symbol* %8)
  store %struct.dwarf2_locexpr_baton* %9, %struct.dwarf2_locexpr_baton** %7, align 8
  %10 = load %struct.symbol*, %struct.symbol** %4, align 8
  %11 = load %struct.agent_expr*, %struct.agent_expr** %5, align 8
  %12 = load %struct.axs_value*, %struct.axs_value** %6, align 8
  %13 = load %struct.dwarf2_locexpr_baton*, %struct.dwarf2_locexpr_baton** %7, align 8
  %14 = getelementptr inbounds %struct.dwarf2_locexpr_baton, %struct.dwarf2_locexpr_baton* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dwarf2_locexpr_baton*, %struct.dwarf2_locexpr_baton** %7, align 8
  %17 = getelementptr inbounds %struct.dwarf2_locexpr_baton, %struct.dwarf2_locexpr_baton* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dwarf2_tracepoint_var_ref(%struct.symbol* %10, %struct.agent_expr* %11, %struct.axs_value* %12, i32 %15, i32 %18)
  ret void
}

declare dso_local %struct.dwarf2_locexpr_baton* @SYMBOL_LOCATION_BATON(%struct.symbol*) #1

declare dso_local i32 @dwarf2_tracepoint_var_ref(%struct.symbol*, %struct.agent_expr*, %struct.axs_value*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

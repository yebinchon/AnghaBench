; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_create_internal_breakpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_create_internal_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.breakpoint = type { i32, i32 }
%struct.symtab_and_line = type { i32, i32 }

@create_internal_breakpoint.internal_breakpoint_number = internal global i32 -1, align 4
@disp_donttouch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.breakpoint* (i32, i32)* @create_internal_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.breakpoint* @create_internal_breakpoint(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.symtab_and_line, align 4
  %6 = alloca %struct.breakpoint*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = call i32 @init_sal(%struct.symtab_and_line* %5)
  %8 = load i32, i32* %3, align 4
  %9 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %5, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %5, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @find_pc_overlay(i32 %11)
  %13 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %5, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = bitcast %struct.symtab_and_line* %5 to i64*
  %16 = load i64, i64* %15, align 4
  %17 = call %struct.breakpoint* @set_raw_breakpoint(i64 %16, i32 %14)
  store %struct.breakpoint* %17, %struct.breakpoint** %6, align 8
  %18 = load i32, i32* @create_internal_breakpoint.internal_breakpoint_number, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* @create_internal_breakpoint.internal_breakpoint_number, align 4
  %20 = load %struct.breakpoint*, %struct.breakpoint** %6, align 8
  %21 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @disp_donttouch, align 4
  %23 = load %struct.breakpoint*, %struct.breakpoint** %6, align 8
  %24 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.breakpoint*, %struct.breakpoint** %6, align 8
  ret %struct.breakpoint* %25
}

declare dso_local i32 @init_sal(%struct.symtab_and_line*) #1

declare dso_local i32 @find_pc_overlay(i32) #1

declare dso_local %struct.breakpoint* @set_raw_breakpoint(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

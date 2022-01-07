; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_die_is_declaration.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_die_is_declaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_info = type { i32 }
%struct.dwarf2_cu = type { i32 }

@DW_AT_declaration = common dso_local global i32 0, align 4
@DW_AT_specification = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.die_info*, %struct.dwarf2_cu*)* @die_is_declaration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @die_is_declaration(%struct.die_info* %0, %struct.dwarf2_cu* %1) #0 {
  %3 = alloca %struct.die_info*, align 8
  %4 = alloca %struct.dwarf2_cu*, align 8
  store %struct.die_info* %0, %struct.die_info** %3, align 8
  store %struct.dwarf2_cu* %1, %struct.dwarf2_cu** %4, align 8
  %5 = load %struct.die_info*, %struct.die_info** %3, align 8
  %6 = load i32, i32* @DW_AT_declaration, align 4
  %7 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %8 = call i64 @dwarf2_attr(%struct.die_info* %5, i32 %6, %struct.dwarf2_cu* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.die_info*, %struct.die_info** %3, align 8
  %12 = load i32, i32* @DW_AT_specification, align 4
  %13 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %14 = call i64 @dwarf2_attr(%struct.die_info* %11, i32 %12, %struct.dwarf2_cu* %13)
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %10, %2
  %18 = phi i1 [ false, %2 ], [ %16, %10 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

declare dso_local i64 @dwarf2_attr(%struct.die_info*, i32, %struct.dwarf2_cu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

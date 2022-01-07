; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_die_specification.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_die_specification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_info = type { i32 }
%struct.dwarf2_cu = type { i32 }
%struct.attribute = type { i32 }

@DW_AT_specification = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.die_info* (%struct.die_info*, %struct.dwarf2_cu*)* @die_specification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.die_info* @die_specification(%struct.die_info* %0, %struct.dwarf2_cu* %1) #0 {
  %3 = alloca %struct.die_info*, align 8
  %4 = alloca %struct.die_info*, align 8
  %5 = alloca %struct.dwarf2_cu*, align 8
  %6 = alloca %struct.attribute*, align 8
  store %struct.die_info* %0, %struct.die_info** %4, align 8
  store %struct.dwarf2_cu* %1, %struct.dwarf2_cu** %5, align 8
  %7 = load %struct.die_info*, %struct.die_info** %4, align 8
  %8 = load i32, i32* @DW_AT_specification, align 4
  %9 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %10 = call %struct.attribute* @dwarf2_attr(%struct.die_info* %7, i32 %8, %struct.dwarf2_cu* %9)
  store %struct.attribute* %10, %struct.attribute** %6, align 8
  %11 = load %struct.attribute*, %struct.attribute** %6, align 8
  %12 = icmp eq %struct.attribute* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.die_info* null, %struct.die_info** %3, align 8
  br label %19

14:                                               ; preds = %2
  %15 = load %struct.attribute*, %struct.attribute** %6, align 8
  %16 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %17 = call i32 @dwarf2_get_ref_die_offset(%struct.attribute* %15, %struct.dwarf2_cu* %16)
  %18 = call %struct.die_info* @follow_die_ref(i32 %17)
  store %struct.die_info* %18, %struct.die_info** %3, align 8
  br label %19

19:                                               ; preds = %14, %13
  %20 = load %struct.die_info*, %struct.die_info** %3, align 8
  ret %struct.die_info* %20
}

declare dso_local %struct.attribute* @dwarf2_attr(%struct.die_info*, i32, %struct.dwarf2_cu*) #1

declare dso_local %struct.die_info* @follow_die_ref(i32) #1

declare dso_local i32 @dwarf2_get_ref_die_offset(%struct.attribute*, %struct.dwarf2_cu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

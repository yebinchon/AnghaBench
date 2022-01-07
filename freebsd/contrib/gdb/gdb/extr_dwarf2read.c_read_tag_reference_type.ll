; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_read_tag_reference_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_read_tag_reference_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_info = type { %struct.type* }
%struct.type = type { i32 }
%struct.dwarf2_cu = type { %struct.comp_unit_head }
%struct.comp_unit_head = type { i32 }
%struct.attribute = type { i32 }

@DW_AT_byte_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.die_info*, %struct.dwarf2_cu*)* @read_tag_reference_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_tag_reference_type(%struct.die_info* %0, %struct.dwarf2_cu* %1) #0 {
  %3 = alloca %struct.die_info*, align 8
  %4 = alloca %struct.dwarf2_cu*, align 8
  %5 = alloca %struct.comp_unit_head*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca %struct.attribute*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.die_info* %0, %struct.die_info** %3, align 8
  store %struct.dwarf2_cu* %1, %struct.dwarf2_cu** %4, align 8
  %10 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %11 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %10, i32 0, i32 0
  store %struct.comp_unit_head* %11, %struct.comp_unit_head** %5, align 8
  %12 = load %struct.die_info*, %struct.die_info** %3, align 8
  %13 = getelementptr inbounds %struct.die_info, %struct.die_info* %12, i32 0, i32 0
  %14 = load %struct.type*, %struct.type** %13, align 8
  %15 = icmp ne %struct.type* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %39

17:                                               ; preds = %2
  %18 = load %struct.die_info*, %struct.die_info** %3, align 8
  %19 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %20 = call i32 @die_type(%struct.die_info* %18, %struct.dwarf2_cu* %19)
  %21 = call %struct.type* @lookup_reference_type(i32 %20)
  store %struct.type* %21, %struct.type** %6, align 8
  %22 = load %struct.die_info*, %struct.die_info** %3, align 8
  %23 = load i32, i32* @DW_AT_byte_size, align 4
  %24 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %25 = call %struct.attribute* @dwarf2_attr(%struct.die_info* %22, i32 %23, %struct.dwarf2_cu* %24)
  store %struct.attribute* %25, %struct.attribute** %7, align 8
  %26 = load %struct.attribute*, %struct.attribute** %7, align 8
  %27 = icmp ne %struct.attribute* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load %struct.attribute*, %struct.attribute** %7, align 8
  %30 = call i32 @DW_UNSND(%struct.attribute* %29)
  store i32 %30, i32* %8, align 4
  br label %35

31:                                               ; preds = %17
  %32 = load %struct.comp_unit_head*, %struct.comp_unit_head** %5, align 8
  %33 = getelementptr inbounds %struct.comp_unit_head, %struct.comp_unit_head* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %31, %28
  %36 = load %struct.type*, %struct.type** %6, align 8
  %37 = load %struct.die_info*, %struct.die_info** %3, align 8
  %38 = getelementptr inbounds %struct.die_info, %struct.die_info* %37, i32 0, i32 0
  store %struct.type* %36, %struct.type** %38, align 8
  br label %39

39:                                               ; preds = %35, %16
  ret void
}

declare dso_local %struct.type* @lookup_reference_type(i32) #1

declare dso_local i32 @die_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local %struct.attribute* @dwarf2_attr(%struct.die_info*, i32, %struct.dwarf2_cu*) #1

declare dso_local i32 @DW_UNSND(%struct.attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

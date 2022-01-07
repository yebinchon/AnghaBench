; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_read_tag_ptr_to_member_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_read_tag_ptr_to_member_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_info = type { %struct.type* }
%struct.type = type { i32 }
%struct.dwarf2_cu = type { %struct.objfile* }
%struct.objfile = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.die_info*, %struct.dwarf2_cu*)* @read_tag_ptr_to_member_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_tag_ptr_to_member_type(%struct.die_info* %0, %struct.dwarf2_cu* %1) #0 {
  %3 = alloca %struct.die_info*, align 8
  %4 = alloca %struct.dwarf2_cu*, align 8
  %5 = alloca %struct.objfile*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca %struct.type*, align 8
  %8 = alloca %struct.type*, align 8
  store %struct.die_info* %0, %struct.die_info** %3, align 8
  store %struct.dwarf2_cu* %1, %struct.dwarf2_cu** %4, align 8
  %9 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %10 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %9, i32 0, i32 0
  %11 = load %struct.objfile*, %struct.objfile** %10, align 8
  store %struct.objfile* %11, %struct.objfile** %5, align 8
  %12 = load %struct.die_info*, %struct.die_info** %3, align 8
  %13 = getelementptr inbounds %struct.die_info, %struct.die_info* %12, i32 0, i32 0
  %14 = load %struct.type*, %struct.type** %13, align 8
  %15 = icmp ne %struct.type* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %33

17:                                               ; preds = %2
  %18 = load %struct.objfile*, %struct.objfile** %5, align 8
  %19 = call %struct.type* @alloc_type(%struct.objfile* %18)
  store %struct.type* %19, %struct.type** %6, align 8
  %20 = load %struct.die_info*, %struct.die_info** %3, align 8
  %21 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %22 = call %struct.type* @die_type(%struct.die_info* %20, %struct.dwarf2_cu* %21)
  store %struct.type* %22, %struct.type** %7, align 8
  %23 = load %struct.die_info*, %struct.die_info** %3, align 8
  %24 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %25 = call %struct.type* @die_containing_type(%struct.die_info* %23, %struct.dwarf2_cu* %24)
  store %struct.type* %25, %struct.type** %8, align 8
  %26 = load %struct.type*, %struct.type** %6, align 8
  %27 = load %struct.type*, %struct.type** %8, align 8
  %28 = load %struct.type*, %struct.type** %7, align 8
  %29 = call i32 @smash_to_member_type(%struct.type* %26, %struct.type* %27, %struct.type* %28)
  %30 = load %struct.type*, %struct.type** %6, align 8
  %31 = load %struct.die_info*, %struct.die_info** %3, align 8
  %32 = getelementptr inbounds %struct.die_info, %struct.die_info* %31, i32 0, i32 0
  store %struct.type* %30, %struct.type** %32, align 8
  br label %33

33:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.type* @alloc_type(%struct.objfile*) #1

declare dso_local %struct.type* @die_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local %struct.type* @die_containing_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @smash_to_member_type(%struct.type*, %struct.type*, %struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

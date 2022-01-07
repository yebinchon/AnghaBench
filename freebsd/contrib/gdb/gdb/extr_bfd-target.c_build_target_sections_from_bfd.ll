; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_bfd-target.c_build_target_sections_from_bfd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_bfd-target.c_build_target_sections_from_bfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_ops = type { %struct.section_table* }
%struct.section_table = type { i32 }
%struct.bfd = type { i32 }
%struct.section_closure = type { %struct.section_table* }

@add_to_section_table = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @build_target_sections_from_bfd(%struct.target_ops* %0, %struct.bfd* %1) #0 {
  %3 = alloca %struct.target_ops*, align 8
  %4 = alloca %struct.bfd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.section_table*, align 8
  %7 = alloca %struct.section_closure, align 8
  store %struct.target_ops* %0, %struct.target_ops** %3, align 8
  store %struct.bfd* %1, %struct.bfd** %4, align 8
  %8 = load %struct.bfd*, %struct.bfd** %4, align 8
  %9 = call i32 @bfd_count_sections(%struct.bfd* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.target_ops*, %struct.target_ops** %3, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @target_resize_to_sections(%struct.target_ops* %10, i32 %11)
  %13 = load %struct.target_ops*, %struct.target_ops** %3, align 8
  %14 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %13, i32 0, i32 0
  %15 = load %struct.section_table*, %struct.section_table** %14, align 8
  store %struct.section_table* %15, %struct.section_table** %6, align 8
  %16 = load %struct.target_ops*, %struct.target_ops** %3, align 8
  %17 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %16, i32 0, i32 0
  %18 = load %struct.section_table*, %struct.section_table** %17, align 8
  %19 = getelementptr inbounds %struct.section_closure, %struct.section_closure* %7, i32 0, i32 0
  store %struct.section_table* %18, %struct.section_table** %19, align 8
  %20 = load %struct.bfd*, %struct.bfd** %4, align 8
  %21 = load i32, i32* @add_to_section_table, align 4
  %22 = call i32 @bfd_map_over_sections(%struct.bfd* %20, i32 %21, %struct.section_closure* %7)
  %23 = getelementptr inbounds %struct.section_closure, %struct.section_closure* %7, i32 0, i32 0
  %24 = load %struct.section_table*, %struct.section_table** %23, align 8
  %25 = load %struct.section_table*, %struct.section_table** %6, align 8
  %26 = ptrtoint %struct.section_table* %24 to i64
  %27 = ptrtoint %struct.section_table* %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 4
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = icmp sle i64 %29, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @gdb_assert(i32 %33)
  ret void
}

declare dso_local i32 @bfd_count_sections(%struct.bfd*) #1

declare dso_local i32 @target_resize_to_sections(%struct.target_ops*, i32) #1

declare dso_local i32 @bfd_map_over_sections(%struct.bfd*, i32, %struct.section_closure*) #1

declare dso_local i32 @gdb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

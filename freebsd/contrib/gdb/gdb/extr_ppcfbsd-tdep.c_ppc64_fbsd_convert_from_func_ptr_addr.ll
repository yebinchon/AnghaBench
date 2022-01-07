; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcfbsd-tdep.c_ppc64_fbsd_convert_from_func_ptr_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcfbsd-tdep.c_ppc64_fbsd_convert_from_func_ptr_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.target_ops = type { i32 }
%struct.section_table = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c".opd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, i32, %struct.target_ops*)* @ppc64_fbsd_convert_from_func_ptr_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc64_fbsd_convert_from_func_ptr_addr(%struct.gdbarch* %0, i32 %1, %struct.target_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gdbarch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.target_ops*, align 8
  %8 = alloca %struct.section_table*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.target_ops* %2, %struct.target_ops** %7, align 8
  %9 = load %struct.target_ops*, %struct.target_ops** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.section_table* @target_section_by_addr(%struct.target_ops* %9, i32 %10)
  store %struct.section_table* %11, %struct.section_table** %8, align 8
  %12 = load %struct.section_table*, %struct.section_table** %8, align 8
  %13 = icmp ne %struct.section_table* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load %struct.section_table*, %struct.section_table** %8, align 8
  %16 = getelementptr inbounds %struct.section_table, %struct.section_table* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @strcmp(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load %struct.target_ops*, %struct.target_ops** %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @get_target_memory_unsigned(%struct.target_ops* %23, i32 %24, i32 8)
  store i32 %25, i32* %4, align 4
  br label %28

26:                                               ; preds = %14, %3
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.section_table* @target_section_by_addr(%struct.target_ops*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @get_target_memory_unsigned(%struct.target_ops*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

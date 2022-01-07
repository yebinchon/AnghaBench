; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_blockframe.c_find_pc_sect_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_blockframe.c_find_pc_sect_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.bfd_section = type { i32 }
%struct.block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol* @find_pc_sect_function(i32 %0, %struct.bfd_section* %1) #0 {
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfd_section*, align 8
  %6 = alloca %struct.block*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.bfd_section* %1, %struct.bfd_section** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %9 = call %struct.block* @block_for_pc_sect(i32 %7, %struct.bfd_section* %8)
  store %struct.block* %9, %struct.block** %6, align 8
  %10 = load %struct.block*, %struct.block** %6, align 8
  %11 = icmp eq %struct.block* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.symbol* null, %struct.symbol** %3, align 8
  br label %16

13:                                               ; preds = %2
  %14 = load %struct.block*, %struct.block** %6, align 8
  %15 = call %struct.symbol* @block_function(%struct.block* %14)
  store %struct.symbol* %15, %struct.symbol** %3, align 8
  br label %16

16:                                               ; preds = %13, %12
  %17 = load %struct.symbol*, %struct.symbol** %3, align 8
  ret %struct.symbol* %17
}

declare dso_local %struct.block* @block_for_pc_sect(i32, %struct.bfd_section*) #1

declare dso_local %struct.symbol* @block_function(%struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

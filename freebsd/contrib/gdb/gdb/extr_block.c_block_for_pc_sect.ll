; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_block.c_block_for_pc_sect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_block.c_block_for_pc_sect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.bfd_section = type { i32 }
%struct.blockvector = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @block_for_pc_sect(i32 %0, %struct.bfd_section* %1) #0 {
  %3 = alloca %struct.block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfd_section*, align 8
  %6 = alloca %struct.blockvector*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.bfd_section* %1, %struct.bfd_section** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %10 = call %struct.blockvector* @blockvector_for_pc_sect(i32 %8, %struct.bfd_section* %9, i32* %7, i32* null)
  store %struct.blockvector* %10, %struct.blockvector** %6, align 8
  %11 = load %struct.blockvector*, %struct.blockvector** %6, align 8
  %12 = icmp ne %struct.blockvector* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.blockvector*, %struct.blockvector** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.block* @BLOCKVECTOR_BLOCK(%struct.blockvector* %14, i32 %15)
  store %struct.block* %16, %struct.block** %3, align 8
  br label %18

17:                                               ; preds = %2
  store %struct.block* null, %struct.block** %3, align 8
  br label %18

18:                                               ; preds = %17, %13
  %19 = load %struct.block*, %struct.block** %3, align 8
  ret %struct.block* %19
}

declare dso_local %struct.blockvector* @blockvector_for_pc_sect(i32, %struct.bfd_section*, i32*, i32*) #1

declare dso_local %struct.block* @BLOCKVECTOR_BLOCK(%struct.blockvector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

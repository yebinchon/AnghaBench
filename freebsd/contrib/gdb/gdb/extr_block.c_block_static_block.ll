; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_block.c_block_static_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_block.c_block_static_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @block_static_block(%struct.block* %0) #0 {
  %2 = alloca %struct.block*, align 8
  %3 = alloca %struct.block*, align 8
  store %struct.block* %0, %struct.block** %3, align 8
  %4 = load %struct.block*, %struct.block** %3, align 8
  %5 = icmp eq %struct.block* %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load %struct.block*, %struct.block** %3, align 8
  %8 = call %struct.block* @BLOCK_SUPERBLOCK(%struct.block* %7)
  %9 = icmp eq %struct.block* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %1
  store %struct.block* null, %struct.block** %2, align 8
  br label %22

11:                                               ; preds = %6
  br label %12

12:                                               ; preds = %17, %11
  %13 = load %struct.block*, %struct.block** %3, align 8
  %14 = call %struct.block* @BLOCK_SUPERBLOCK(%struct.block* %13)
  %15 = call %struct.block* @BLOCK_SUPERBLOCK(%struct.block* %14)
  %16 = icmp ne %struct.block* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.block*, %struct.block** %3, align 8
  %19 = call %struct.block* @BLOCK_SUPERBLOCK(%struct.block* %18)
  store %struct.block* %19, %struct.block** %3, align 8
  br label %12

20:                                               ; preds = %12
  %21 = load %struct.block*, %struct.block** %3, align 8
  store %struct.block* %21, %struct.block** %2, align 8
  br label %22

22:                                               ; preds = %20, %10
  %23 = load %struct.block*, %struct.block** %2, align 8
  ret %struct.block* %23
}

declare dso_local %struct.block* @BLOCK_SUPERBLOCK(%struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

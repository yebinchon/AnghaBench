; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_block.c_block_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_block.c_block_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol* @block_function(%struct.block* %0) #0 {
  %2 = alloca %struct.block*, align 8
  store %struct.block* %0, %struct.block** %2, align 8
  br label %3

3:                                                ; preds = %13, %1
  %4 = load %struct.block*, %struct.block** %2, align 8
  %5 = call %struct.symbol* @BLOCK_FUNCTION(%struct.block* %4)
  %6 = icmp eq %struct.symbol* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = load %struct.block*, %struct.block** %2, align 8
  %9 = call %struct.block* @BLOCK_SUPERBLOCK(%struct.block* %8)
  %10 = icmp ne %struct.block* %9, null
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i1 [ false, %3 ], [ %10, %7 ]
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = load %struct.block*, %struct.block** %2, align 8
  %15 = call %struct.block* @BLOCK_SUPERBLOCK(%struct.block* %14)
  store %struct.block* %15, %struct.block** %2, align 8
  br label %3

16:                                               ; preds = %11
  %17 = load %struct.block*, %struct.block** %2, align 8
  %18 = call %struct.symbol* @BLOCK_FUNCTION(%struct.block* %17)
  ret %struct.symbol* %18
}

declare dso_local %struct.symbol* @BLOCK_FUNCTION(%struct.block*) #1

declare dso_local %struct.block* @BLOCK_SUPERBLOCK(%struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

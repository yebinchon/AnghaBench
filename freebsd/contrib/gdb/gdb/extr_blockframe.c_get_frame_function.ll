; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_blockframe.c_get_frame_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_blockframe.c_get_frame_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.frame_info = type { i32 }
%struct.block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol* @get_frame_function(%struct.frame_info* %0) #0 {
  %2 = alloca %struct.symbol*, align 8
  %3 = alloca %struct.frame_info*, align 8
  %4 = alloca %struct.block*, align 8
  store %struct.frame_info* %0, %struct.frame_info** %3, align 8
  %5 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %6 = call %struct.block* @get_frame_block(%struct.frame_info* %5, i32 0)
  store %struct.block* %6, %struct.block** %4, align 8
  %7 = load %struct.block*, %struct.block** %4, align 8
  %8 = icmp eq %struct.block* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.symbol* null, %struct.symbol** %2, align 8
  br label %13

10:                                               ; preds = %1
  %11 = load %struct.block*, %struct.block** %4, align 8
  %12 = call %struct.symbol* @block_function(%struct.block* %11)
  store %struct.symbol* %12, %struct.symbol** %2, align 8
  br label %13

13:                                               ; preds = %10, %9
  %14 = load %struct.symbol*, %struct.symbol** %2, align 8
  ret %struct.symbol* %14
}

declare dso_local %struct.block* @get_frame_block(%struct.frame_info*, i32) #1

declare dso_local %struct.symbol* @block_function(%struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

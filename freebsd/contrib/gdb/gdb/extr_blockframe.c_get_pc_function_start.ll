; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_blockframe.c_get_pc_function_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_blockframe.c_get_pc_function_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.minimal_symbol = type { i32 }
%struct.symbol = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_pc_function_start(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.block*, align 8
  %5 = alloca %struct.minimal_symbol*, align 8
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.block* @block_for_pc(i32 %8)
  store %struct.block* %9, %struct.block** %4, align 8
  %10 = load %struct.block*, %struct.block** %4, align 8
  %11 = icmp ne %struct.block* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.block*, %struct.block** %4, align 8
  %14 = call %struct.symbol* @block_function(%struct.block* %13)
  store %struct.symbol* %14, %struct.symbol** %6, align 8
  %15 = load %struct.symbol*, %struct.symbol** %6, align 8
  %16 = icmp ne %struct.symbol* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.symbol*, %struct.symbol** %6, align 8
  %19 = call %struct.block* @SYMBOL_BLOCK_VALUE(%struct.symbol* %18)
  store %struct.block* %19, %struct.block** %4, align 8
  %20 = load %struct.block*, %struct.block** %4, align 8
  %21 = call i32 @BLOCK_START(%struct.block* %20)
  store i32 %21, i32* %2, align 4
  br label %38

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22, %1
  %24 = load i32, i32* %3, align 4
  %25 = call %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i32 %24)
  store %struct.minimal_symbol* %25, %struct.minimal_symbol** %5, align 8
  %26 = load %struct.minimal_symbol*, %struct.minimal_symbol** %5, align 8
  %27 = icmp ne %struct.minimal_symbol* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.minimal_symbol*, %struct.minimal_symbol** %5, align 8
  %30 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @find_pc_section(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %2, align 4
  br label %38

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %23
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %34, %17
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.block* @block_for_pc(i32) #1

declare dso_local %struct.symbol* @block_function(%struct.block*) #1

declare dso_local %struct.block* @SYMBOL_BLOCK_VALUE(%struct.symbol*) #1

declare dso_local i32 @BLOCK_START(%struct.block*) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i32) #1

declare dso_local i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol*) #1

declare dso_local i64 @find_pc_section(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

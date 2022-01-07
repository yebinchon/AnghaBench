; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_block.c_contained_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_block.c_contained_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @contained_in(%struct.block* %0, %struct.block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.block*, align 8
  %5 = alloca %struct.block*, align 8
  store %struct.block* %0, %struct.block** %4, align 8
  store %struct.block* %1, %struct.block** %5, align 8
  %6 = load %struct.block*, %struct.block** %4, align 8
  %7 = icmp ne %struct.block* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.block*, %struct.block** %5, align 8
  %10 = icmp ne %struct.block* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4
  br label %27

12:                                               ; preds = %8
  %13 = load %struct.block*, %struct.block** %4, align 8
  %14 = call i64 @BLOCK_START(%struct.block* %13)
  %15 = load %struct.block*, %struct.block** %5, align 8
  %16 = call i64 @BLOCK_START(%struct.block* %15)
  %17 = icmp sge i64 %14, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load %struct.block*, %struct.block** %4, align 8
  %20 = call i64 @BLOCK_END(%struct.block* %19)
  %21 = load %struct.block*, %struct.block** %5, align 8
  %22 = call i64 @BLOCK_END(%struct.block* %21)
  %23 = icmp sle i64 %20, %22
  br label %24

24:                                               ; preds = %18, %12
  %25 = phi i1 [ false, %12 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %11
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @BLOCK_START(%struct.block*) #1

declare dso_local i64 @BLOCK_END(%struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

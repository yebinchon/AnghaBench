; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_snapshot.c_free_basic_memory_bitmaps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_snapshot.c_free_basic_memory_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_bitmap = type { i32 }

@forbidden_pages_map = common dso_local global %struct.memory_bitmap* null, align 8
@free_pages_map = common dso_local global %struct.memory_bitmap* null, align 8
@PG_UNSAFE_CLEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"PM: Basic memory bitmaps freed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_basic_memory_bitmaps() #0 {
  %1 = alloca %struct.memory_bitmap*, align 8
  %2 = alloca %struct.memory_bitmap*, align 8
  %3 = load %struct.memory_bitmap*, %struct.memory_bitmap** @forbidden_pages_map, align 8
  %4 = icmp ne %struct.memory_bitmap* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load %struct.memory_bitmap*, %struct.memory_bitmap** @free_pages_map, align 8
  %7 = icmp ne %struct.memory_bitmap* %6, null
  br label %8

8:                                                ; preds = %5, %0
  %9 = phi i1 [ false, %0 ], [ %7, %5 ]
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.memory_bitmap*, %struct.memory_bitmap** @forbidden_pages_map, align 8
  store %struct.memory_bitmap* %13, %struct.memory_bitmap** %1, align 8
  %14 = load %struct.memory_bitmap*, %struct.memory_bitmap** @free_pages_map, align 8
  store %struct.memory_bitmap* %14, %struct.memory_bitmap** %2, align 8
  store %struct.memory_bitmap* null, %struct.memory_bitmap** @forbidden_pages_map, align 8
  store %struct.memory_bitmap* null, %struct.memory_bitmap** @free_pages_map, align 8
  %15 = load %struct.memory_bitmap*, %struct.memory_bitmap** %1, align 8
  %16 = load i32, i32* @PG_UNSAFE_CLEAR, align 4
  %17 = call i32 @memory_bm_free(%struct.memory_bitmap* %15, i32 %16)
  %18 = load %struct.memory_bitmap*, %struct.memory_bitmap** %1, align 8
  %19 = call i32 @kfree(%struct.memory_bitmap* %18)
  %20 = load %struct.memory_bitmap*, %struct.memory_bitmap** %2, align 8
  %21 = load i32, i32* @PG_UNSAFE_CLEAR, align 4
  %22 = call i32 @memory_bm_free(%struct.memory_bitmap* %20, i32 %21)
  %23 = load %struct.memory_bitmap*, %struct.memory_bitmap** %2, align 8
  %24 = call i32 @kfree(%struct.memory_bitmap* %23)
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memory_bm_free(%struct.memory_bitmap*, i32) #1

declare dso_local i32 @kfree(%struct.memory_bitmap*) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_snapshot.c_create_basic_memory_bitmaps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_snapshot.c_create_basic_memory_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_bitmap = type { i32 }

@forbidden_pages_map = common dso_local global %struct.memory_bitmap* null, align 8
@free_pages_map = common dso_local global %struct.memory_bitmap* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PG_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"PM: Basic memory bitmaps created\0A\00", align 1
@PG_UNSAFE_CLEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_basic_memory_bitmaps() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.memory_bitmap*, align 8
  %3 = alloca %struct.memory_bitmap*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.memory_bitmap*, %struct.memory_bitmap** @forbidden_pages_map, align 8
  %6 = icmp ne %struct.memory_bitmap* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load %struct.memory_bitmap*, %struct.memory_bitmap** @free_pages_map, align 8
  %9 = icmp ne %struct.memory_bitmap* %8, null
  br label %10

10:                                               ; preds = %7, %0
  %11 = phi i1 [ true, %0 ], [ %9, %7 ]
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.memory_bitmap* @kzalloc(i32 4, i32 %14)
  store %struct.memory_bitmap* %15, %struct.memory_bitmap** %2, align 8
  %16 = load %struct.memory_bitmap*, %struct.memory_bitmap** %2, align 8
  %17 = icmp ne %struct.memory_bitmap* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %10
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %1, align 4
  br label %61

21:                                               ; preds = %10
  %22 = load %struct.memory_bitmap*, %struct.memory_bitmap** %2, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = load i32, i32* @PG_ANY, align 4
  %25 = call i32 @memory_bm_create(%struct.memory_bitmap* %22, i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %56

29:                                               ; preds = %21
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.memory_bitmap* @kzalloc(i32 4, i32 %30)
  store %struct.memory_bitmap* %31, %struct.memory_bitmap** %3, align 8
  %32 = load %struct.memory_bitmap*, %struct.memory_bitmap** %3, align 8
  %33 = icmp ne %struct.memory_bitmap* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %52

35:                                               ; preds = %29
  %36 = load %struct.memory_bitmap*, %struct.memory_bitmap** %3, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = load i32, i32* @PG_ANY, align 4
  %39 = call i32 @memory_bm_create(%struct.memory_bitmap* %36, i32 %37, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %49

43:                                               ; preds = %35
  %44 = load %struct.memory_bitmap*, %struct.memory_bitmap** %2, align 8
  store %struct.memory_bitmap* %44, %struct.memory_bitmap** @forbidden_pages_map, align 8
  %45 = load %struct.memory_bitmap*, %struct.memory_bitmap** %3, align 8
  store %struct.memory_bitmap* %45, %struct.memory_bitmap** @free_pages_map, align 8
  %46 = load %struct.memory_bitmap*, %struct.memory_bitmap** @forbidden_pages_map, align 8
  %47 = call i32 @mark_nosave_pages(%struct.memory_bitmap* %46)
  %48 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %61

49:                                               ; preds = %42
  %50 = load %struct.memory_bitmap*, %struct.memory_bitmap** %3, align 8
  %51 = call i32 @kfree(%struct.memory_bitmap* %50)
  br label %52

52:                                               ; preds = %49, %34
  %53 = load %struct.memory_bitmap*, %struct.memory_bitmap** %2, align 8
  %54 = load i32, i32* @PG_UNSAFE_CLEAR, align 4
  %55 = call i32 @memory_bm_free(%struct.memory_bitmap* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %28
  %57 = load %struct.memory_bitmap*, %struct.memory_bitmap** %2, align 8
  %58 = call i32 @kfree(%struct.memory_bitmap* %57)
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %1, align 4
  br label %61

61:                                               ; preds = %56, %43, %18
  %62 = load i32, i32* %1, align 4
  ret i32 %62
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.memory_bitmap* @kzalloc(i32, i32) #1

declare dso_local i32 @memory_bm_create(%struct.memory_bitmap*, i32, i32) #1

declare dso_local i32 @mark_nosave_pages(%struct.memory_bitmap*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @kfree(%struct.memory_bitmap*) #1

declare dso_local i32 @memory_bm_free(%struct.memory_bitmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

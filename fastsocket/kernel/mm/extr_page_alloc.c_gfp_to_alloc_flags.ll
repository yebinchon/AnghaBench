; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_gfp_to_alloc_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_gfp_to_alloc_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@ALLOC_WMARK_MIN = common dso_local global i32 0, align 4
@ALLOC_CPUSET = common dso_local global i32 0, align 4
@__GFP_WAIT = common dso_local global i32 0, align 4
@__GFP_HIGH = common dso_local global i32 0, align 4
@ALLOC_HIGH = common dso_local global i32 0, align 4
@__GFP_NOMEMALLOC = common dso_local global i32 0, align 4
@ALLOC_HARDER = common dso_local global i32 0, align 4
@PF_MEMALLOC = common dso_local global i32 0, align 4
@TIF_MEMDIE = common dso_local global i32 0, align 4
@ALLOC_NO_WATERMARKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gfp_to_alloc_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfp_to_alloc_flags(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %6, %struct.task_struct** %3, align 8
  %7 = load i32, i32* @ALLOC_WMARK_MIN, align 4
  %8 = load i32, i32* @ALLOC_CPUSET, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @__GFP_WAIT, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @__GFP_HIGH, align 4
  %14 = load i32, i32* @ALLOC_HIGH, align 4
  %15 = icmp ne i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUILD_BUG_ON(i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @__GFP_HIGH, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @__GFP_NOMEMALLOC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ALLOC_HARDER, align 4
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32, i32* @ALLOC_CPUSET, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %52

39:                                               ; preds = %1
  %40 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %41 = call i32 @rt_task(%struct.task_struct* %40)
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = call i32 (...) @in_interrupt()
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @ALLOC_HARDER, align 4
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %44, %39
  br label %52

52:                                               ; preds = %51, %34
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* @__GFP_NOMEMALLOC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @likely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %52
  %62 = call i32 (...) @in_interrupt()
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %80, label %64

64:                                               ; preds = %61
  %65 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %66 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PF_MEMALLOC, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* @TIF_MEMDIE, align 4
  %73 = call i32 @test_thread_flag(i32 %72)
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71, %64
  %77 = load i32, i32* @ALLOC_NO_WATERMARKS, align 4
  %78 = load i32, i32* %4, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %76, %71, %61
  br label %81

81:                                               ; preds = %80, %52
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt_task(%struct.task_struct*) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @test_thread_flag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

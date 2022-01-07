; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_fork.c_dup_mm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_fork.c_dup_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { %struct.TYPE_3__*, i32, i32, i32, i32*, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.task_struct = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mm_struct* @dup_mm(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  store %struct.mm_struct* %9, %struct.mm_struct** %5, align 8
  %10 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %11 = icmp ne %struct.mm_struct* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.mm_struct* null, %struct.mm_struct** %2, align 8
  br label %83

13:                                               ; preds = %1
  %14 = call %struct.mm_struct* (...) @allocate_mm()
  store %struct.mm_struct* %14, %struct.mm_struct** %4, align 8
  %15 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %16 = icmp ne %struct.mm_struct* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %77

18:                                               ; preds = %13
  %19 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %20 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %21 = call i32 @memcpy(%struct.mm_struct* %19, %struct.mm_struct* %20, i32 48)
  %22 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %23 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %22, i32 0, i32 6
  store i64 0, i64* %23, align 8
  %24 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %25 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %24, i32 0, i32 5
  store i64 0, i64* %25, align 8
  %26 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %27 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %28 = call i32 @mm_init(%struct.mm_struct* %26, %struct.task_struct* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %18
  br label %77

31:                                               ; preds = %18
  %32 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %33 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %34 = call i64 @init_new_context(%struct.task_struct* %32, %struct.mm_struct* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %78

37:                                               ; preds = %31
  %38 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %39 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %40 = call i32 @dup_mm_exe_file(%struct.mm_struct* %38, %struct.mm_struct* %39)
  %41 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %42 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %43 = call i32 @dup_mmap(%struct.mm_struct* %41, %struct.mm_struct* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %72

47:                                               ; preds = %37
  %48 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %49 = call i32 @get_mm_rss(%struct.mm_struct* %48)
  %50 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %51 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %53 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %56 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %58 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = icmp ne %struct.TYPE_3__* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %47
  %62 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %63 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @try_module_get(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %61
  br label %72

70:                                               ; preds = %61, %47
  %71 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  store %struct.mm_struct* %71, %struct.mm_struct** %2, align 8
  br label %83

72:                                               ; preds = %69, %46
  %73 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %74 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %73, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %74, align 8
  %75 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %76 = call i32 @mmput(%struct.mm_struct* %75)
  br label %77

77:                                               ; preds = %72, %30, %17
  store %struct.mm_struct* null, %struct.mm_struct** %2, align 8
  br label %83

78:                                               ; preds = %36
  %79 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %80 = call i32 @mm_free_pgd(%struct.mm_struct* %79)
  %81 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %82 = call i32 @free_mm(%struct.mm_struct* %81)
  store %struct.mm_struct* null, %struct.mm_struct** %2, align 8
  br label %83

83:                                               ; preds = %78, %77, %70, %12
  %84 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  ret %struct.mm_struct* %84
}

declare dso_local %struct.mm_struct* @allocate_mm(...) #1

declare dso_local i32 @memcpy(%struct.mm_struct*, %struct.mm_struct*, i32) #1

declare dso_local i32 @mm_init(%struct.mm_struct*, %struct.task_struct*) #1

declare dso_local i64 @init_new_context(%struct.task_struct*, %struct.mm_struct*) #1

declare dso_local i32 @dup_mm_exe_file(%struct.mm_struct*, %struct.mm_struct*) #1

declare dso_local i32 @dup_mmap(%struct.mm_struct*, %struct.mm_struct*) #1

declare dso_local i32 @get_mm_rss(%struct.mm_struct*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

declare dso_local i32 @mm_free_pgd(%struct.mm_struct*) #1

declare dso_local i32 @free_mm(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

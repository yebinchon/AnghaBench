; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_exec_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_exec_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.mm_struct*, %struct.TYPE_2__*, %struct.mm_struct* }
%struct.TYPE_2__ = type { i64 }
%struct.mm_struct = type { i32, i32, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@EINTR = common dso_local global i32 0, align 4
@OOM_SCORE_ADJ_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*)* @exec_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_mmap(%struct.mm_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.mm_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %7, %struct.task_struct** %4, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 0
  %10 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  store %struct.mm_struct* %10, %struct.mm_struct** %5, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %12 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %13 = call i32 @mm_release(%struct.task_struct* %11, %struct.mm_struct* %12)
  %14 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %15 = icmp ne %struct.mm_struct* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %1
  %17 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %18 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %17, i32 0, i32 0
  %19 = call i32 @down_read(i32* %18)
  %20 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %21 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %27 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %26, i32 0, i32 0
  %28 = call i32 @up_read(i32* %27)
  %29 = load i32, i32* @EINTR, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %89

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %34 = call i32 @task_lock(%struct.task_struct* %33)
  %35 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %36 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %35, i32 0, i32 2
  %37 = load %struct.mm_struct*, %struct.mm_struct** %36, align 8
  store %struct.mm_struct* %37, %struct.mm_struct** %6, align 8
  %38 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %39 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %40 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %39, i32 0, i32 0
  store %struct.mm_struct* %38, %struct.mm_struct** %40, align 8
  %41 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %42 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %43 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %42, i32 0, i32 2
  store %struct.mm_struct* %41, %struct.mm_struct** %43, align 8
  %44 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %45 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %46 = call i32 @activate_mm(%struct.mm_struct* %44, %struct.mm_struct* %45)
  %47 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %48 = icmp ne %struct.mm_struct* %47, null
  br i1 %48, label %49, label %66

49:                                               ; preds = %32
  %50 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %51 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @OOM_SCORE_ADJ_MIN, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %49
  %58 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %59 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %58, i32 0, i32 1
  %60 = call i32 @atomic_dec(i32* %59)
  %61 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %62 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %61, i32 0, i32 0
  %63 = load %struct.mm_struct*, %struct.mm_struct** %62, align 8
  %64 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %63, i32 0, i32 1
  %65 = call i32 @atomic_inc(i32* %64)
  br label %66

66:                                               ; preds = %57, %49, %32
  %67 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %68 = call i32 @task_unlock(%struct.task_struct* %67)
  %69 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %70 = call i32 @arch_pick_mmap_layout(%struct.mm_struct* %69)
  %71 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %72 = icmp ne %struct.mm_struct* %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %66
  %74 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %75 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %74, i32 0, i32 0
  %76 = call i32 @up_read(i32* %75)
  %77 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %78 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %79 = icmp ne %struct.mm_struct* %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @BUG_ON(i32 %80)
  %82 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %83 = call i32 @mm_update_next_owner(%struct.mm_struct* %82)
  %84 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %85 = call i32 @mmput(%struct.mm_struct* %84)
  store i32 0, i32* %2, align 4
  br label %89

86:                                               ; preds = %66
  %87 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %88 = call i32 @mmdrop(%struct.mm_struct* %87)
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %86, %73, %25
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @mm_release(%struct.task_struct*, %struct.mm_struct*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @activate_mm(%struct.mm_struct*, %struct.mm_struct*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

declare dso_local i32 @arch_pick_mmap_layout(%struct.mm_struct*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mm_update_next_owner(%struct.mm_struct*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

declare dso_local i32 @mmdrop(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

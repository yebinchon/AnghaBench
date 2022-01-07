; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_fork.c_copy_mm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_fork.c_copy_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32, i64, i64, i32 }
%struct.task_struct = type { %struct.mm_struct*, %struct.mm_struct*, %struct.TYPE_3__*, i64, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i64 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@CLONE_VM = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@OOM_SCORE_ADJ_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.task_struct*)* @copy_mm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_mm(i64 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 6
  store i64 0, i64* %10, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 7
  store i64 0, i64* %12, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %18 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %17, i32 0, i32 1
  store %struct.mm_struct* null, %struct.mm_struct** %18, align 8
  %19 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 0
  store %struct.mm_struct* null, %struct.mm_struct** %20, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.mm_struct*, %struct.mm_struct** %22, align 8
  store %struct.mm_struct* %23, %struct.mm_struct** %7, align 8
  %24 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %25 = icmp ne %struct.mm_struct* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %71

27:                                               ; preds = %2
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @CLONE_VM, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %34 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %33, i32 0, i32 3
  %35 = call i32 @atomic_inc(i32* %34)
  %36 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  store %struct.mm_struct* %36, %struct.mm_struct** %6, align 8
  br label %46

37:                                               ; preds = %27
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  %40 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %41 = call %struct.mm_struct* @dup_mm(%struct.task_struct* %40)
  store %struct.mm_struct* %41, %struct.mm_struct** %6, align 8
  %42 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %43 = icmp ne %struct.mm_struct* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %69

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %32
  %47 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %48 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %50 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %52 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @OOM_SCORE_ADJ_MIN, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %46
  %59 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %60 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %59, i32 0, i32 0
  %61 = call i32 @atomic_inc(i32* %60)
  br label %62

62:                                               ; preds = %58, %46
  %63 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %64 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %65 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %64, i32 0, i32 1
  store %struct.mm_struct* %63, %struct.mm_struct** %65, align 8
  %66 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %67 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %68 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %67, i32 0, i32 0
  store %struct.mm_struct* %66, %struct.mm_struct** %68, align 8
  store i32 0, i32* %3, align 4
  br label %71

69:                                               ; preds = %44
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %62, %26
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.mm_struct* @dup_mm(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

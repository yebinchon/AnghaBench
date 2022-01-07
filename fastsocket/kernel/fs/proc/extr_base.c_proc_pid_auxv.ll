; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_pid_auxv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_pid_auxv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.mm_struct = type { i64* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i8*)* @proc_pid_auxv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_pid_auxv(%struct.task_struct* %0, i8* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %9 = call %struct.mm_struct* @mm_for_maps(%struct.task_struct* %8)
  store %struct.mm_struct* %9, %struct.mm_struct** %5, align 8
  %10 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %11 = call i32 @PTR_ERR(%struct.mm_struct* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %13 = icmp ne %struct.mm_struct* %12, null
  br i1 %13, label %14, label %51

14:                                               ; preds = %2
  %15 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %16 = call i32 @IS_ERR(%struct.mm_struct* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %51, label %18

18:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %22, %18
  %20 = load i32, i32* %7, align 4
  %21 = add i32 %20, 2
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %19
  %23 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %24 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sub i32 %26, 2
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %25, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %19, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %40, %32
  %43 = load i8*, i8** %4, align 8
  %44 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %45 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @memcpy(i8* %43, i64* %46, i32 %47)
  %49 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %50 = call i32 @mmput(%struct.mm_struct* %49)
  br label %51

51:                                               ; preds = %42, %14, %2
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local %struct.mm_struct* @mm_for_maps(%struct.task_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.mm_struct*) #1

declare dso_local i32 @IS_ERR(%struct.mm_struct*) #1

declare dso_local i32 @memcpy(i8*, i64*, i32) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

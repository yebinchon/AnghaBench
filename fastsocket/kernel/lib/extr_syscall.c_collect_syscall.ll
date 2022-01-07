; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_syscall.c_collect_syscall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_syscall.c_collect_syscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pt_regs = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i64*, i64*, i32, i64*, i64*)* @collect_syscall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_syscall(%struct.task_struct* %0, i64* %1, i64* %2, i32 %3, i64* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.pt_regs*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64* %2, i64** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %16 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %15)
  store %struct.pt_regs* %16, %struct.pt_regs** %14, align 8
  %17 = load %struct.pt_regs*, %struct.pt_regs** %14, align 8
  %18 = icmp ne %struct.pt_regs* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %50

26:                                               ; preds = %6
  %27 = load %struct.pt_regs*, %struct.pt_regs** %14, align 8
  %28 = call i64 @user_stack_pointer(%struct.pt_regs* %27)
  %29 = load i64*, i64** %12, align 8
  store i64 %28, i64* %29, align 8
  %30 = load %struct.pt_regs*, %struct.pt_regs** %14, align 8
  %31 = call i64 @instruction_pointer(%struct.pt_regs* %30)
  %32 = load i64*, i64** %13, align 8
  store i64 %31, i64* %32, align 8
  %33 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %34 = load %struct.pt_regs*, %struct.pt_regs** %14, align 8
  %35 = call i64 @syscall_get_nr(%struct.task_struct* %33, %struct.pt_regs* %34)
  %36 = load i64*, i64** %9, align 8
  store i64 %35, i64* %36, align 8
  %37 = load i64*, i64** %9, align 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, -1
  br i1 %39, label %40, label %49

40:                                               ; preds = %26
  %41 = load i32, i32* %11, align 4
  %42 = icmp ugt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %45 = load %struct.pt_regs*, %struct.pt_regs** %14, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i64*, i64** %10, align 8
  %48 = call i32 @syscall_get_arguments(%struct.task_struct* %44, %struct.pt_regs* %45, i32 0, i32 %46, i64* %47)
  br label %49

49:                                               ; preds = %43, %40, %26
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %49, %23
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @user_stack_pointer(%struct.pt_regs*) #1

declare dso_local i64 @instruction_pointer(%struct.pt_regs*) #1

declare dso_local i64 @syscall_get_nr(%struct.task_struct*, %struct.pt_regs*) #1

declare dso_local i32 @syscall_get_arguments(%struct.task_struct*, %struct.pt_regs*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

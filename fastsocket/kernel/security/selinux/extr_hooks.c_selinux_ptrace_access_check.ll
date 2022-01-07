; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_ptrace_access_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_ptrace_access_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@PTRACE_MODE_READ = common dso_local global i32 0, align 4
@SECCLASS_FILE = common dso_local global i32 0, align 4
@FILE__READ = common dso_local global i32 0, align 4
@PROCESS__PTRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i32)* @selinux_ptrace_access_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_ptrace_access_check(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @cap_ptrace_access_check(%struct.task_struct* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %33

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PTRACE_MODE_READ, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = call i32 (...) @current_sid()
  store i32 %21, i32* %7, align 4
  %22 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %23 = call i32 @task_sid(%struct.task_struct* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @SECCLASS_FILE, align 4
  %27 = load i32, i32* @FILE__READ, align 4
  %28 = call i32 @avc_has_perm(i32 %24, i32 %25, i32 %26, i32 %27, i32* null)
  store i32 %28, i32* %3, align 4
  br label %33

29:                                               ; preds = %16
  %30 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %31 = load i32, i32* @PROCESS__PTRACE, align 4
  %32 = call i32 @current_has_perm(%struct.task_struct* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %20, %14
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @cap_ptrace_access_check(%struct.task_struct*, i32) #1

declare dso_local i32 @current_sid(...) #1

declare dso_local i32 @task_sid(%struct.task_struct*) #1

declare dso_local i32 @avc_has_perm(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @current_has_perm(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

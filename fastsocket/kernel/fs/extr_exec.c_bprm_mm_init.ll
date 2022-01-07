; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_bprm_mm_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_bprm_mm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bprm_mm_init(%struct.linux_binprm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linux_binprm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mm_struct*, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %3, align 8
  store %struct.mm_struct* null, %struct.mm_struct** %5, align 8
  %6 = call %struct.mm_struct* (...) @mm_alloc()
  store %struct.mm_struct* %6, %struct.mm_struct** %5, align 8
  %7 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %8 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %7, i32 0, i32 0
  store %struct.mm_struct* %6, %struct.mm_struct** %8, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %4, align 4
  %11 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %12 = icmp ne %struct.mm_struct* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %28

14:                                               ; preds = %1
  %15 = load i32, i32* @current, align 4
  %16 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %17 = call i32 @init_new_context(i32 %15, %struct.mm_struct* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %28

21:                                               ; preds = %14
  %22 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %23 = call i32 @__bprm_mm_init(%struct.linux_binprm* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %28

27:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %38

28:                                               ; preds = %26, %20, %13
  %29 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %30 = icmp ne %struct.mm_struct* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %33 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %32, i32 0, i32 0
  store %struct.mm_struct* null, %struct.mm_struct** %33, align 8
  %34 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %35 = call i32 @mmdrop(%struct.mm_struct* %34)
  br label %36

36:                                               ; preds = %31, %28
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %27
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.mm_struct* @mm_alloc(...) #1

declare dso_local i32 @init_new_context(i32, %struct.mm_struct*) #1

declare dso_local i32 @__bprm_mm_init(%struct.linux_binprm*) #1

declare dso_local i32 @mmdrop(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

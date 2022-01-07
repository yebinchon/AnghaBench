; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_generic.c_proc_alloc_inum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_generic.c_proc_alloc_inum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@proc_inum_ida = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@proc_inum_lock = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@PROC_DYNAMIC_FIRST = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_alloc_inum(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i32 @ida_pre_get(i32* @proc_inum_ida, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %46

13:                                               ; preds = %6
  %14 = call i32 @spin_lock_irq(i32* @proc_inum_lock)
  %15 = call i32 @ida_get_new(i32* @proc_inum_ida, i32* %4)
  store i32 %15, i32* %5, align 4
  %16 = call i32 @spin_unlock_irq(i32* @proc_inum_lock)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @EAGAIN, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %6

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %46

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @UINT_MAX, align 4
  %31 = load i32, i32* @PROC_DYNAMIC_FIRST, align 4
  %32 = sub i32 %30, %31
  %33 = icmp ugt i32 %29, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = call i32 @spin_lock_irq(i32* @proc_inum_lock)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @ida_remove(i32* @proc_inum_ida, i32 %36)
  %38 = call i32 @spin_unlock_irq(i32* @proc_inum_lock)
  %39 = load i32, i32* @ENOSPC, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %46

41:                                               ; preds = %28
  %42 = load i32, i32* @PROC_DYNAMIC_FIRST, align 4
  %43 = load i32, i32* %4, align 4
  %44 = add i32 %42, %43
  %45 = load i32*, i32** %3, align 8
  store i32 %44, i32* %45, align 4
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %41, %34, %25, %10
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @ida_pre_get(i32*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @ida_get_new(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ida_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

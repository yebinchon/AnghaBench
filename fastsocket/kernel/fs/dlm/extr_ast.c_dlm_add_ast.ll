; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_ast.c_dlm_add_ast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_ast.c_dlm_add_ast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lkb = type { i32, i32, i32 }

@ast_queue_lock = common dso_local global i32 0, align 4
@ast_seq_count = common dso_local global i64 0, align 8
@DLM_IFL_USER = common dso_local global i32 0, align 4
@ast_queue = common dso_local global i32 0, align 4
@WAKE_ASTS = common dso_local global i32 0, align 4
@astd_wakeflags = common dso_local global i32 0, align 4
@astd_task = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_add_ast(%struct.dlm_lkb* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dlm_lkb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.dlm_lkb* %0, %struct.dlm_lkb** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = call i32 @spin_lock(i32* @ast_queue_lock)
  %14 = load i64, i64* @ast_seq_count, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* @ast_seq_count, align 8
  store i64 %15, i64* %11, align 8
  %16 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %17 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DLM_IFL_USER, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %5
  %23 = call i32 @spin_unlock(i32* @ast_queue_lock)
  %24 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @dlm_user_add_ast(%struct.dlm_lkb* %24, i32 %25, i32 %26, i32 %27, i32 %28, i64 %29)
  br label %61

31:                                               ; preds = %5
  %32 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @dlm_add_lkb_callback(%struct.dlm_lkb* %32, i32 %33, i32 %34, i32 %35, i32 %36, i64 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = call i32 @spin_unlock(i32* @ast_queue_lock)
  br label %61

43:                                               ; preds = %31
  %44 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %45 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %44, i32 0, i32 1
  %46 = call i64 @list_empty(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %50 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %49, i32 0, i32 2
  %51 = call i32 @kref_get(i32* %50)
  %52 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %53 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %52, i32 0, i32 1
  %54 = call i32 @list_add_tail(i32* %53, i32* @ast_queue)
  br label %55

55:                                               ; preds = %48, %43
  %56 = call i32 @spin_unlock(i32* @ast_queue_lock)
  %57 = load i32, i32* @WAKE_ASTS, align 4
  %58 = call i32 @set_bit(i32 %57, i32* @astd_wakeflags)
  %59 = load i32, i32* @astd_task, align 4
  %60 = call i32 @wake_up_process(i32 %59)
  br label %61

61:                                               ; preds = %55, %41, %22
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_user_add_ast(%struct.dlm_lkb*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @dlm_add_lkb_callback(%struct.dlm_lkb*, i32, i32, i32, i32, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_process_if_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_process_if_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ce_if_block = type { i64 }

@reload_completed = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@HAVE_conditional_move = common dso_local global i64 0, align 8
@HAVE_conditional_execution = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ce_if_block*)* @process_if_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_if_block(%struct.ce_if_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ce_if_block*, align 8
  store %struct.ce_if_block* %0, %struct.ce_if_block** %3, align 8
  %4 = load i64, i64* @reload_completed, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load %struct.ce_if_block*, %struct.ce_if_block** %3, align 8
  %8 = call i64 @noce_process_if_block(%struct.ce_if_block* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load i32, i32* @TRUE, align 4
  store i32 %11, i32* %2, align 4
  br label %51

12:                                               ; preds = %6, %1
  %13 = load i64, i64* @HAVE_conditional_move, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.ce_if_block*, %struct.ce_if_block** %3, align 8
  %17 = call i64 @cond_move_process_if_block(%struct.ce_if_block* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @TRUE, align 4
  store i32 %20, i32* %2, align 4
  br label %51

21:                                               ; preds = %15, %12
  %22 = load i64, i64* @HAVE_conditional_execution, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %21
  %25 = load i64, i64* @reload_completed, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = load %struct.ce_if_block*, %struct.ce_if_block** %3, align 8
  %29 = load i32, i32* @TRUE, align 4
  %30 = call i64 @cond_exec_process_if_block(%struct.ce_if_block* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %2, align 4
  br label %51

34:                                               ; preds = %27
  %35 = load %struct.ce_if_block*, %struct.ce_if_block** %3, align 8
  %36 = getelementptr inbounds %struct.ce_if_block, %struct.ce_if_block* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = call i32 @cancel_changes(i32 0)
  %41 = load %struct.ce_if_block*, %struct.ce_if_block** %3, align 8
  %42 = load i32, i32* @FALSE, align 4
  %43 = call i64 @cond_exec_process_if_block(%struct.ce_if_block* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @TRUE, align 4
  store i32 %46, i32* %2, align 4
  br label %51

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %34
  br label %49

49:                                               ; preds = %48, %24, %21
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %45, %32, %19, %10
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @noce_process_if_block(%struct.ce_if_block*) #1

declare dso_local i64 @cond_move_process_if_block(%struct.ce_if_block*) #1

declare dso_local i64 @cond_exec_process_if_block(%struct.ce_if_block*, i32) #1

declare dso_local i32 @cancel_changes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

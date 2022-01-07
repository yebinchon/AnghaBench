; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_can_use_return_insn_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_can_use_return_insn_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ix86_frame = type { i64, i64 }

@reload_completed = common dso_local global i32 0, align 4
@frame_pointer_needed = common dso_local global i64 0, align 8
@current_function_pops_args = common dso_local global i64 0, align 8
@current_function_args_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_can_use_return_insn_p() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ix86_frame, align 8
  %3 = load i32, i32* @reload_completed, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i64, i64* @frame_pointer_needed, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %0
  store i32 0, i32* %1, align 4
  br label %28

9:                                                ; preds = %5
  %10 = load i64, i64* @current_function_pops_args, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, i32* @current_function_args_size, align 4
  %14 = icmp sge i32 %13, 32768
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %28

16:                                               ; preds = %12, %9
  %17 = call i32 @ix86_compute_frame_layout(%struct.ix86_frame* %2)
  %18 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %2, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %2, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br label %25

25:                                               ; preds = %21, %16
  %26 = phi i1 [ false, %16 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %1, align 4
  br label %28

28:                                               ; preds = %25, %15, %8
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @ix86_compute_frame_layout(%struct.ix86_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

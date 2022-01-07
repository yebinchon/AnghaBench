; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_direct_return.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_direct_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64 }

@reload_completed = common dso_local global i64 0, align 8
@frame_pointer_needed = common dso_local global i32 0, align 4
@current_frame_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ia64_direct_return() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @reload_completed, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %33

4:                                                ; preds = %0
  %5 = load i32, i32* @frame_pointer_needed, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %4
  %8 = call i32 (...) @get_frame_size()
  %9 = call i32 @ia64_compute_frame_size(i32 %8)
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 0), align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %7
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 1), align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 2), align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 3), align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 4), align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 5), align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 6), align 8
  %29 = icmp eq i64 %28, 0
  br label %30

30:                                               ; preds = %27, %24, %21, %18, %15, %12, %7
  %31 = phi i1 [ false, %24 ], [ false, %21 ], [ false, %18 ], [ false, %15 ], [ false, %12 ], [ false, %7 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %1, align 4
  br label %34

33:                                               ; preds = %4, %0
  store i32 0, i32* %1, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i32 @ia64_compute_frame_size(i32) #1

declare dso_local i32 @get_frame_size(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

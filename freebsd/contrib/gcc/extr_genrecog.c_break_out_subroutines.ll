; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_break_out_subroutines.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_break_out_subroutines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decision_head = type { %struct.decision* }
%struct.decision = type { i64, %struct.decision_head, %struct.decision* }

@SUBROUTINE_THRESHOLD = common dso_local global i32 0, align 4
@next_subroutine_number = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.decision_head*, i32)* @break_out_subroutines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @break_out_subroutines(%struct.decision_head* %0, i32 %1) #0 {
  %3 = alloca %struct.decision_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.decision*, align 8
  store %struct.decision_head* %0, %struct.decision_head** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.decision_head*, %struct.decision_head** %3, align 8
  %8 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %7, i32 0, i32 0
  %9 = load %struct.decision*, %struct.decision** %8, align 8
  store %struct.decision* %9, %struct.decision** %6, align 8
  br label %10

10:                                               ; preds = %20, %2
  %11 = load %struct.decision*, %struct.decision** %6, align 8
  %12 = icmp ne %struct.decision* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load %struct.decision*, %struct.decision** %6, align 8
  %15 = getelementptr inbounds %struct.decision, %struct.decision* %14, i32 0, i32 1
  %16 = call i32 @break_out_subroutines(%struct.decision_head* %15, i32 0)
  %17 = add nsw i32 1, %16
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %13
  %21 = load %struct.decision*, %struct.decision** %6, align 8
  %22 = getelementptr inbounds %struct.decision, %struct.decision* %21, i32 0, i32 2
  %23 = load %struct.decision*, %struct.decision** %22, align 8
  store %struct.decision* %23, %struct.decision** %6, align 8
  br label %10

24:                                               ; preds = %10
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SUBROUTINE_THRESHOLD, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* @next_subroutine_number, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* @next_subroutine_number, align 8
  %34 = load %struct.decision_head*, %struct.decision_head** %3, align 8
  %35 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %34, i32 0, i32 0
  %36 = load %struct.decision*, %struct.decision** %35, align 8
  %37 = getelementptr inbounds %struct.decision, %struct.decision* %36, i32 0, i32 0
  store i64 %33, i64* %37, align 8
  store i32 1, i32* %5, align 4
  br label %38

38:                                               ; preds = %31, %28, %24
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

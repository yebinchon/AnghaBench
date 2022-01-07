; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lambda-code.c_phi_loop_edge_uses_def.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lambda-code.c_phi_loop_edge_uses_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop*, i64, i64)* @phi_loop_edge_uses_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phi_loop_edge_uses_def(%struct.loop* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.loop*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %32, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @PHI_NUM_ARGS(i64 %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %9
  %15 = load %struct.loop*, %struct.loop** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.TYPE_2__* @PHI_ARG_EDGE(i64 %16, i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @flow_bb_inside_loop_p(%struct.loop* %15, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @PHI_ARG_DEF(i64 %24, i32 %25)
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %36

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %14
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %9

35:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %29
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @PHI_NUM_ARGS(i64) #1

declare dso_local i64 @flow_bb_inside_loop_p(%struct.loop*, i32) #1

declare dso_local %struct.TYPE_2__* @PHI_ARG_EDGE(i64, i32) #1

declare dso_local i64 @PHI_ARG_DEF(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

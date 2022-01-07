; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgrtl.c_cfg_layout_can_merge_blocks_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgrtl.c_cfg_layout_can_merge_blocks_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@EDGE_COMPLEX = common dso_local global i32 0, align 4
@ENTRY_BLOCK_PTR = common dso_local global i64 0, align 8
@EXIT_BLOCK_PTR = common dso_local global i64 0, align 8
@reload_completed = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @cfg_layout_can_merge_blocks_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg_layout_can_merge_blocks_p(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i64 @BB_PARTITION(i64 %6)
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @BB_PARTITION(i64 %8)
  %10 = icmp ne i64 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @single_succ_p(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %66

16:                                               ; preds = %12
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @single_succ(i64 %17)
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %66

21:                                               ; preds = %16
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @single_pred_p(i64 %22)
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %66

25:                                               ; preds = %21
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %25
  %30 = load i64, i64* %4, align 8
  %31 = call %struct.TYPE_2__* @single_succ_edge(i64 %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @EDGE_COMPLEX, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %66, label %37

37:                                               ; preds = %29
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @ENTRY_BLOCK_PTR, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %37
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @EXIT_BLOCK_PTR, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %41
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @BB_END(i64 %46)
  %48 = call i32 @JUMP_P(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %45
  %51 = load i64, i64* @reload_completed, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @BB_END(i64 %54)
  %56 = call i64 @simplejump_p(i32 %55)
  br label %61

57:                                               ; preds = %50
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @BB_END(i64 %58)
  %60 = call i64 @onlyjump_p(i32 %59)
  br label %61

61:                                               ; preds = %57, %53
  %62 = phi i64 [ %56, %53 ], [ %60, %57 ]
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %61, %45
  %65 = phi i1 [ true, %45 ], [ %63, %61 ]
  br label %66

66:                                               ; preds = %64, %41, %37, %29, %25, %21, %16, %12
  %67 = phi i1 [ false, %41 ], [ false, %37 ], [ false, %29 ], [ false, %25 ], [ false, %21 ], [ false, %16 ], [ false, %12 ], [ %65, %64 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %11
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @BB_PARTITION(i64) #1

declare dso_local i64 @single_succ_p(i64) #1

declare dso_local i64 @single_succ(i64) #1

declare dso_local i32 @single_pred_p(i64) #1

declare dso_local %struct.TYPE_2__* @single_succ_edge(i64) #1

declare dso_local i32 @JUMP_P(i32) #1

declare dso_local i32 @BB_END(i64) #1

declare dso_local i64 @simplejump_p(i32) #1

declare dso_local i64 @onlyjump_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

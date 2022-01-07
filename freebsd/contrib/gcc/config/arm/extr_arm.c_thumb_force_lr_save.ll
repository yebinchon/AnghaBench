; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_force_lr_save.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_force_lr_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@regs_ever_live = common dso_local global i64* null, align 8
@LR_REGNUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @thumb_force_lr_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thumb_force_lr_save() #0 {
  %1 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %2 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %0
  %8 = call i32 (...) @leaf_function_p()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = call i64 (...) @thumb_far_jump_used_p()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = load i64*, i64** @regs_ever_live, align 8
  %15 = load i64, i64* @LR_REGNUM, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %13, %10, %7
  %20 = phi i1 [ true, %10 ], [ true, %7 ], [ %18, %13 ]
  br label %21

21:                                               ; preds = %19, %0
  %22 = phi i1 [ false, %0 ], [ %20, %19 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local i32 @leaf_function_p(...) #1

declare dso_local i64 @thumb_far_jump_used_p(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

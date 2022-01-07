; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_current_loadgp_style.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_current_loadgp_style.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@TARGET_ABICALLS = common dso_local global i32 0, align 4
@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@LOADGP_NONE = common dso_local global i32 0, align 4
@TARGET_ABSOLUTE_ABICALLS = common dso_local global i64 0, align 8
@LOADGP_ABSOLUTE = common dso_local global i32 0, align 4
@TARGET_NEWABI = common dso_local global i64 0, align 8
@LOADGP_NEWABI = common dso_local global i32 0, align 4
@LOADGP_OLDABI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mips_current_loadgp_style() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @TARGET_ABICALLS, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %4, %0
  %12 = load i32, i32* @LOADGP_NONE, align 4
  store i32 %12, i32* %1, align 4
  br label %27

13:                                               ; preds = %4
  %14 = load i64, i64* @TARGET_ABSOLUTE_ABICALLS, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @LOADGP_ABSOLUTE, align 4
  store i32 %17, i32* %1, align 4
  br label %27

18:                                               ; preds = %13
  %19 = load i64, i64* @TARGET_NEWABI, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @LOADGP_NEWABI, align 4
  br label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @LOADGP_OLDABI, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %25, %16, %11
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

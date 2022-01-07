; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_secondary_reload_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_secondary_reload_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32, i32, i32, i32, %struct.TYPE_4__*)* }
%struct.TYPE_4__ = type { i32, i32* }

@CODE_FOR_nothing = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@NO_REGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @secondary_reload_class(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @CODE_FOR_nothing, align 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load i32 (i32, i32, i32, i32, %struct.TYPE_4__*)*, i32 (i32, i32, i32, i32, %struct.TYPE_4__*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @targetm, i32 0, i32 0), align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 %15(i32 %16, i32 %17, i32 %18, i32 %19, %struct.TYPE_4__* %11)
  store i32 %20, i32* %7, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @CODE_FOR_nothing, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @NO_REGS, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %4
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %5, align 4
  br label %35

32:                                               ; preds = %26
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @scratch_reload_class(i32 %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %32, %30
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @scratch_reload_class(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

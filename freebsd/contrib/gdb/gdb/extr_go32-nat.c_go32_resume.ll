; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_go32-nat.c_go32_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_go32-nat.c_go32_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@resume_is_step = common dso_local global i32 0, align 4
@TARGET_SIGNAL_0 = common dso_local global i32 0, align 4
@TARGET_SIGNAL_TRAP = common dso_local global i32 0, align 4
@resume_signal = common dso_local global i32 0, align 4
@excepn_map = common dso_local global %struct.TYPE_2__* null, align 8
@TARGET_SIGNAL_LAST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Cannot deliver signal %s on this platform.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @go32_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @go32_resume(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  store i32 %8, i32* @resume_is_step, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @TARGET_SIGNAL_0, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %55

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @TARGET_SIGNAL_TRAP, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  store i32 -1, i32* @resume_signal, align 4
  br label %17

17:                                               ; preds = %44, %16
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @excepn_map, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TARGET_SIGNAL_LAST, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %17
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @excepn_map, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = icmp eq i64 %32, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %26
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @excepn_map, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* @resume_signal, align 4
  br label %47

43:                                               ; preds = %26
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %17

47:                                               ; preds = %36, %17
  %48 = load i32, i32* @resume_signal, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @target_signal_to_name(i32 %51)
  %53 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %47
  br label %55

55:                                               ; preds = %54, %12, %3
  ret void
}

declare dso_local i32 @printf_unfiltered(i8*, i32) #1

declare dso_local i32 @target_signal_to_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

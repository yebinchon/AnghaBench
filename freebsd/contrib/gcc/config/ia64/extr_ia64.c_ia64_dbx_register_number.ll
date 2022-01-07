; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_dbx_register_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_dbx_register_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@current_frame_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@HARD_FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ia64_dbx_register_number(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 0), align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @HARD_FRAME_POINTER_REGNUM, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 0), align 4
  store i32 %11, i32* %3, align 4
  br label %19

12:                                               ; preds = %6
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 0), align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @HARD_FRAME_POINTER_REGNUM, align 4
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %16, %12
  br label %19

19:                                               ; preds = %18, %10
  br label %20

20:                                               ; preds = %19, %1
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @IN_REGNO_P(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 32, %25
  %27 = call i32 @IN_REG(i32 0)
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* %2, align 4
  br label %55

29:                                               ; preds = %20
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @LOC_REGNO_P(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 1), align 4
  %35 = add nsw i32 32, %34
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i32 @LOC_REG(i32 0)
  %39 = sub nsw i32 %37, %38
  store i32 %39, i32* %2, align 4
  br label %55

40:                                               ; preds = %29
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @OUT_REGNO_P(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 1), align 4
  %46 = add nsw i32 32, %45
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 2), align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %48, %49
  %51 = call i32 @OUT_REG(i32 0)
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %2, align 4
  br label %55

53:                                               ; preds = %40
  %54 = load i32, i32* %3, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %44, %33, %24
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @IN_REGNO_P(i32) #1

declare dso_local i32 @IN_REG(i32) #1

declare dso_local i64 @LOC_REGNO_P(i32) #1

declare dso_local i32 @LOC_REG(i32) #1

declare dso_local i64 @OUT_REGNO_P(i32) #1

declare dso_local i32 @OUT_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

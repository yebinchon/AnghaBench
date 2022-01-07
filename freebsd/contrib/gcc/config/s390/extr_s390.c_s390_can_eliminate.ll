; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_can_eliminate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_can_eliminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@BASE_REGNUM = common dso_local global i32 0, align 4
@TARGET_CPU_ZARCH = common dso_local global i64 0, align 8
@cfun = common dso_local global %struct.TYPE_6__* null, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@STACK_POINTER_REGNUM = common dso_local global i32 0, align 4
@HARD_FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@ARG_POINTER_REGNUM = common dso_local global i32 0, align 4
@RETURN_ADDRESS_POINTER_REGNUM = common dso_local global i32 0, align 4
@current_function_calls_eh_return = common dso_local global i32 0, align 4
@current_function_stdarg = common dso_local global i32 0, align 4
@cfun_frame_layout = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s390_can_eliminate(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @BASE_REGNUM, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @BASE_REGNUM, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load i64, i64* @TARGET_CPU_ZARCH, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = call i32 (...) @s390_init_frame_layout()
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NULL_RTX, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %69

26:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %69

27:                                               ; preds = %9, %2
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @STACK_POINTER_REGNUM, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @HARD_FRAME_POINTER_REGNUM, align 4
  %34 = icmp eq i32 %32, %33
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i1 [ true, %27 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @gcc_assert(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @FRAME_POINTER_REGNUM, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @ARG_POINTER_REGNUM, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @RETURN_ADDRESS_POINTER_REGNUM, align 4
  %49 = icmp eq i32 %47, %48
  br label %50

50:                                               ; preds = %46, %42, %35
  %51 = phi i1 [ true, %42 ], [ true, %35 ], [ %49, %46 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @gcc_assert(i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @RETURN_ADDRESS_POINTER_REGNUM, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %50
  %58 = load i32, i32* @current_function_calls_eh_return, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* @current_function_stdarg, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cfun_frame_layout, i32 0, i32 0), align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %69

67:                                               ; preds = %63, %60, %57
  br label %68

68:                                               ; preds = %67, %50
  store i32 1, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %66, %26, %16
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @s390_init_frame_layout(...) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

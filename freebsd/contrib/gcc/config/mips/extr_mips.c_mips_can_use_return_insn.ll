; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_can_use_return_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_can_use_return_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@reload_completed = common dso_local global i32 0, align 4
@regs_ever_live = common dso_local global i64* null, align 8
@current_function_profile = common dso_local global i64 0, align 8
@current_function_decl = common dso_local global i32 0, align 4
@TARGET_MIPS16 = common dso_local global i64 0, align 8
@mips16_hard_float = common dso_local global i64 0, align 8
@MODE_FLOAT = common dso_local global i64 0, align 8
@UNITS_PER_FPVALUE = common dso_local global i64 0, align 8
@cfun = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mips_can_use_return_insn() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @reload_completed, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %63

6:                                                ; preds = %0
  %7 = load i64*, i64** @regs_ever_live, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 31
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = load i64, i64* @current_function_profile, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %6
  store i32 0, i32* %1, align 4
  br label %63

15:                                               ; preds = %11
  %16 = load i32, i32* @current_function_decl, align 4
  %17 = call i32 @DECL_RESULT(i32 %16)
  store i32 %17, i32* %2, align 4
  %18 = load i64, i64* @TARGET_MIPS16, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %15
  %21 = load i64, i64* @mips16_hard_float, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @current_function_decl, align 4
  %26 = call i32 @aggregate_value_p(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @DECL_MODE(i32 %29)
  %31 = call i64 @GET_MODE_CLASS(i32 %30)
  %32 = load i64, i64* @MODE_FLOAT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @DECL_MODE(i32 %35)
  %37 = call i64 @GET_MODE_SIZE(i32 %36)
  %38 = load i64, i64* @UNITS_PER_FPVALUE, align 8
  %39 = icmp sle i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %1, align 4
  br label %63

41:                                               ; preds = %34, %28, %23, %20, %15
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %1, align 4
  br label %63

58:                                               ; preds = %41
  %59 = call i32 (...) @get_frame_size()
  %60 = call i64 @compute_frame_size(i32 %59)
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %1, align 4
  br label %63

63:                                               ; preds = %58, %49, %40, %14, %5
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

declare dso_local i32 @DECL_RESULT(i32) #1

declare dso_local i32 @aggregate_value_p(i32, i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @DECL_MODE(i32) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @compute_frame_size(i32) #1

declare dso_local i32 @get_frame_size(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

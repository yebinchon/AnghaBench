; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_init_frame_layout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_init_frame_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i8* }
%struct.TYPE_5__ = type { i64 }

@TARGET_CPU_ZARCH = common dso_local global i32 0, align 4
@cfun = common dso_local global %struct.TYPE_6__* null, align 8
@cfun_frame_layout = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@current_function_uses_const_pool = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i8* null, align 8
@current_function_is_leaf = common dso_local global i64 0, align 8
@regs_ever_live = common dso_local global i32* null, align 8
@Pmode = common dso_local global i32 0, align 4
@BASE_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @s390_init_frame_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s390_init_frame_layout() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca [16 x i32], align 16
  %4 = load i32, i32* @TARGET_CPU_ZARCH, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  br label %11

11:                                               ; preds = %6, %0
  br label %12

12:                                               ; preds = %73, %11
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cfun_frame_layout, i32 0, i32 0), align 8
  store i64 %13, i64* %1, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %12
  %21 = load i64, i64* @current_function_uses_const_pool, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* %1, align 8
  %25 = call i32 @DISP_IN_RANGE(i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %1, align 8
  %29 = call i32 @CONST_OK_FOR_K(i64 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi i1 [ false, %23 ], [ %31, %27 ]
  br label %34

34:                                               ; preds = %32, %20, %12
  %35 = phi i1 [ true, %20 ], [ true, %12 ], [ %33, %32 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** @NULL_RTX, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i8* %40, i8** %44, align 8
  br label %69

45:                                               ; preds = %34
  %46 = load i64, i64* @current_function_is_leaf, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load i32*, i32** @regs_ever_live, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 5
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @Pmode, align 4
  %55 = call i8* @gen_rtx_REG(i32 %54, i32 5)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i8* %55, i8** %59, align 8
  br label %68

60:                                               ; preds = %48, %45
  %61 = load i32, i32* @Pmode, align 4
  %62 = load i32, i32* @BASE_REGNUM, align 4
  %63 = call i8* @gen_rtx_REG(i32 %61, i32 %62)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i8* %63, i8** %67, align 8
  br label %68

68:                                               ; preds = %60, %53
  br label %69

69:                                               ; preds = %68, %39
  %70 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %71 = call i32 @s390_register_info(i32* %70)
  %72 = call i32 (...) @s390_frame_info()
  br label %73

73:                                               ; preds = %69
  %74 = load i64, i64* %1, align 8
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cfun_frame_layout, i32 0, i32 0), align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %12, label %77

77:                                               ; preds = %73
  ret void
}

declare dso_local i32 @DISP_IN_RANGE(i64) #1

declare dso_local i32 @CONST_OK_FOR_K(i64) #1

declare dso_local i8* @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @s390_register_info(i32*) #1

declare dso_local i32 @s390_frame_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

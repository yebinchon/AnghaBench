; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_assign_parm_is_stack_parm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_assign_parm_is_stack_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assign_parm_data_all = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.assign_parm_data_one = type { i64, %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@PARALLEL = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.assign_parm_data_all*, %struct.assign_parm_data_one*)* @assign_parm_is_stack_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assign_parm_is_stack_parm(%struct.assign_parm_data_all* %0, %struct.assign_parm_data_one* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.assign_parm_data_all*, align 8
  %5 = alloca %struct.assign_parm_data_one*, align 8
  store %struct.assign_parm_data_all* %0, %struct.assign_parm_data_all** %4, align 8
  store %struct.assign_parm_data_one* %1, %struct.assign_parm_data_one** %5, align 8
  %6 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %5, align 8
  %7 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %43

11:                                               ; preds = %2
  %12 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %5, align 8
  %13 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %42

17:                                               ; preds = %11
  %18 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %5, align 8
  %19 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = call i64 @GET_CODE(i32* %20)
  %22 = load i64, i64* @PARALLEL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %5, align 8
  %26 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @XVECEXP(i32* %27, i32 0, i32 0)
  %29 = call i64 @XEXP(i32 %28, i32 0)
  %30 = load i64, i64* @NULL_RTX, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %41

33:                                               ; preds = %24, %17
  %34 = load %struct.assign_parm_data_all*, %struct.assign_parm_data_all** %4, align 8
  %35 = getelementptr inbounds %struct.assign_parm_data_all, %struct.assign_parm_data_all* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %40

39:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %74

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %40, %32
  br label %42

42:                                               ; preds = %41, %16
  br label %43

43:                                               ; preds = %42, %10
  %44 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %5, align 8
  %45 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.assign_parm_data_all*, %struct.assign_parm_data_all** %4, align 8
  %50 = getelementptr inbounds %struct.assign_parm_data_all, %struct.assign_parm_data_all* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %48
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 8
  %56 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %5, align 8
  %57 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %43
  %63 = load %struct.assign_parm_data_all*, %struct.assign_parm_data_all** %4, align 8
  %64 = getelementptr inbounds %struct.assign_parm_data_all, %struct.assign_parm_data_all* %63, i32 0, i32 1
  %65 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %5, align 8
  %66 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @ADD_PARM_SIZE(i32 %71, i64 %69)
  br label %73

73:                                               ; preds = %62, %43
  store i32 1, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %39
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @GET_CODE(i32*) #1

declare dso_local i64 @XEXP(i32, i32) #1

declare dso_local i32 @XVECEXP(i32*, i32, i32) #1

declare dso_local i32 @ADD_PARM_SIZE(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

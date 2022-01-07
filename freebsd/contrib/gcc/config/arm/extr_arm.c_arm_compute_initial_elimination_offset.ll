; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_compute_initial_elimination_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_compute_initial_elimination_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@frame_pointer_needed = common dso_local global i32 0, align 4
@cfun = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_compute_initial_elimination_offset(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = call %struct.TYPE_6__* (...) @arm_get_frame_offsets()
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %6, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %85 [
    i32 132, label %9
    i32 130, label %62
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %58 [
    i32 128, label %11
    i32 130, label %12
    i32 131, label %20
    i32 129, label %49
  ]

11:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %87

12:                                               ; preds = %9
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %15, %18
  store i32 %19, i32* %3, align 4
  br label %87

20:                                               ; preds = %9
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %87

29:                                               ; preds = %20
  %30 = load i32, i32* @frame_pointer_needed, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cfun, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cfun, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %37, %32, %29
  %46 = phi i1 [ false, %32 ], [ false, %29 ], [ %44, %37 ]
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 4, i32 0
  store i32 %48, i32* %3, align 4
  br label %87

49:                                               ; preds = %9
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 4
  %57 = sub nsw i32 %52, %56
  store i32 %57, i32* %3, align 4
  br label %87

58:                                               ; preds = %9
  %59 = call i32 (...) @gcc_unreachable()
  br label %60

60:                                               ; preds = %58
  %61 = call i32 (...) @gcc_unreachable()
  br label %62

62:                                               ; preds = %2, %60
  %63 = load i32, i32* %5, align 4
  switch i32 %63, label %81 [
    i32 128, label %64
    i32 131, label %65
    i32 129, label %73
  ]

64:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %87

65:                                               ; preds = %62
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %68, %71
  store i32 %72, i32* %3, align 4
  br label %87

73:                                               ; preds = %62
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %76, %79
  store i32 %80, i32* %3, align 4
  br label %87

81:                                               ; preds = %62
  %82 = call i32 (...) @gcc_unreachable()
  br label %83

83:                                               ; preds = %81
  %84 = call i32 (...) @gcc_unreachable()
  br label %85

85:                                               ; preds = %2, %83
  %86 = call i32 (...) @gcc_unreachable()
  br label %87

87:                                               ; preds = %11, %12, %28, %45, %49, %64, %65, %73, %85
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.TYPE_6__* @arm_get_frame_offsets(...) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

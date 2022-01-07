; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_normalize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_normalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64*, i32, i32, i64 }

@SIGSZ = common dso_local global i32 0, align 4
@HOST_BITS_PER_LONG = common dso_local global i32 0, align 4
@rvc_zero = common dso_local global i32 0, align 4
@MAX_EXP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @normalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @normalize(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %108

12:                                               ; preds = %1
  %13 = load i32, i32* @SIGSZ, align 4
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %33, %12
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %15
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %18
  br label %36

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %5, align 4
  br label %15

36:                                               ; preds = %31, %15
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* @rvc_zero, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %44 = call i32 @SET_REAL_EXP(%struct.TYPE_9__* %43, i32 0)
  br label %108

45:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %64, %45
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %55 = sub nsw i32 %54, 1
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %55, %56
  %58 = zext i32 %57 to i64
  %59 = shl i64 1, %58
  %60 = and i64 %53, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %46
  br label %67

63:                                               ; preds = %46
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %46

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %108

73:                                               ; preds = %67
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %75 = call i32 @REAL_EXP(%struct.TYPE_9__* %74)
  %76 = load i32, i32* %3, align 4
  %77 = sub nsw i32 %75, %76
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @MAX_EXP, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @get_inf(%struct.TYPE_9__* %82, i32 %85)
  br label %107

87:                                               ; preds = %73
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @MAX_EXP, align 4
  %90 = sub nsw i32 0, %89
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @get_zero(%struct.TYPE_9__* %93, i32 %96)
  br label %106

98:                                               ; preds = %87
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @SET_REAL_EXP(%struct.TYPE_9__* %99, i32 %100)
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @lshift_significand(%struct.TYPE_9__* %102, %struct.TYPE_9__* %103, i32 %104)
  br label %106

106:                                              ; preds = %98, %92
  br label %107

107:                                              ; preds = %106, %81
  br label %108

108:                                              ; preds = %11, %39, %107, %67
  ret void
}

declare dso_local i32 @SET_REAL_EXP(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @REAL_EXP(%struct.TYPE_9__*) #1

declare dso_local i32 @get_inf(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @get_zero(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @lshift_significand(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/extr_w1.c_w1_search.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/extr_w1.c_w1_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_master = type { i32, i32 }
%struct.w1_master.0 = type opaque

@.str = private unnamed_addr constant [33 x i8] c"No devices present on the wire.\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Abort w1_search\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @w1_search(%struct.w1_master* %0, i32 %1, i32 (%struct.w1_master.0*, i32)* %2) #0 {
  %4 = alloca %struct.w1_master*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32 (%struct.w1_master.0*, i32)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.w1_master* %0, %struct.w1_master** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 (%struct.w1_master.0*, i32)* %2, i32 (%struct.w1_master.0*, i32)** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %13, align 4
  store i32 -1, i32* %12, align 4
  store i32 64, i32* %15, align 4
  br label %17

17:                                               ; preds = %111, %3
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %11, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %11, align 4
  %23 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %24 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %21, %25
  br label %27

27:                                               ; preds = %20, %17
  %28 = phi i1 [ false, %17 ], [ %26, %20 ]
  br i1 %28, label %29, label %112

29:                                               ; preds = %27
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %31 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %32 = call i64 @w1_reset_bus(%struct.w1_master* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %36 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %35, i32 0, i32 0
  %37 = call i32 @dev_dbg(i32* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %112

38:                                               ; preds = %29
  %39 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @w1_write_8(%struct.w1_master* %39, i32 %40)
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %89, %38
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 64
  br i1 %44, label %45, label %92

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 1, i32* %14, align 4
  br label %61

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 0, i32* %14, align 4
  br label %60

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %10, align 4
  %58 = ashr i32 %56, %57
  %59 = and i32 %58, 1
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %55, %54
  br label %61

61:                                               ; preds = %60, %49
  %62 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @w1_triplet(%struct.w1_master* %62, i32 %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = and i32 %65, 3
  %67 = icmp eq i32 %66, 3
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %92

69:                                               ; preds = %61
  %70 = load i32, i32* %16, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %72, %69
  %75 = load i32, i32* %16, align 4
  %76 = ashr i32 %75, 2
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = shl i32 %77, %78
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = call i64 (...) @kthread_should_stop()
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %74
  %85 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %86 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %85, i32 0, i32 0
  %87 = call i32 @dev_dbg(i32* %86, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %112

88:                                               ; preds = %74
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %42

92:                                               ; preds = %68, %42
  %93 = load i32, i32* %16, align 4
  %94 = and i32 %93, 3
  %95 = icmp ne i32 %94, 3
  br i1 %95, label %96, label %111

96:                                               ; preds = %92
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %12, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100, %96
  store i32 1, i32* %13, align 4
  br label %104

104:                                              ; preds = %103, %100
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %15, align 4
  %106 = load i32 (%struct.w1_master.0*, i32)*, i32 (%struct.w1_master.0*, i32)** %6, align 8
  %107 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %108 = bitcast %struct.w1_master* %107 to %struct.w1_master.0*
  %109 = load i32, i32* %8, align 4
  %110 = call i32 %106(%struct.w1_master.0* %108, i32 %109)
  br label %111

111:                                              ; preds = %104, %92
  br label %17

112:                                              ; preds = %84, %34, %27
  ret void
}

declare dso_local i64 @w1_reset_bus(%struct.w1_master*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @w1_write_8(%struct.w1_master*, i32) #1

declare dso_local i32 @w1_triplet(%struct.w1_master*, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

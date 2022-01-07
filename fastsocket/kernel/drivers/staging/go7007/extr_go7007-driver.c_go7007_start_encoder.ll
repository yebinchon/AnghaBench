; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-driver.c_go7007_start_encoder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-driver.c_go7007_start_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32, i32, i64, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"error transferring firmware\0A\00", align 1
@STATE_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"error starting stream transfer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @go7007_start_encoder(%struct.go7007* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.go7007*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.go7007*, %struct.go7007** %3, align 8
  %11 = getelementptr inbounds %struct.go7007, %struct.go7007* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.go7007*, %struct.go7007** %3, align 8
  %13 = getelementptr inbounds %struct.go7007, %struct.go7007* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %59, label %16

16:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %55, %16
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %58

20:                                               ; preds = %17
  %21 = load %struct.go7007*, %struct.go7007** %3, align 8
  %22 = getelementptr inbounds %struct.go7007, %struct.go7007* %21, i32 0, i32 5
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load %struct.go7007*, %struct.go7007** %3, align 8
  %32 = getelementptr inbounds %struct.go7007, %struct.go7007* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  br label %55

33:                                               ; preds = %20
  %34 = load %struct.go7007*, %struct.go7007** %3, align 8
  %35 = getelementptr inbounds %struct.go7007, %struct.go7007* %34, i32 0, i32 5
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 32767, i32* %40, align 8
  %41 = load %struct.go7007*, %struct.go7007** %3, align 8
  %42 = getelementptr inbounds %struct.go7007, %struct.go7007* %41, i32 0, i32 5
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 32767, i32* %47, align 4
  %48 = load %struct.go7007*, %struct.go7007** %3, align 8
  %49 = getelementptr inbounds %struct.go7007, %struct.go7007* %48, i32 0, i32 5
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  store i32 32767, i32* %54, align 8
  br label %55

55:                                               ; preds = %33, %30
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %17

58:                                               ; preds = %17
  br label %59

59:                                               ; preds = %58, %1
  %60 = load %struct.go7007*, %struct.go7007** %3, align 8
  %61 = call i64 @go7007_construct_fw_image(%struct.go7007* %60, i32** %4, i32* %5)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 -1, i32* %2, align 4
  br label %100

64:                                               ; preds = %59
  %65 = load %struct.go7007*, %struct.go7007** %3, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @go7007_send_firmware(%struct.go7007* %65, i32* %66, i32 %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %64
  %71 = load %struct.go7007*, %struct.go7007** %3, align 8
  %72 = call i64 @go7007_read_interrupt(%struct.go7007* %71, i32* %8, i32* %9)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70, %64
  %75 = load %struct.go7007*, %struct.go7007** %3, align 8
  %76 = getelementptr inbounds %struct.go7007, %struct.go7007* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @v4l2_err(i32 %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %96

79:                                               ; preds = %70
  %80 = load i32, i32* @STATE_DATA, align 4
  %81 = load %struct.go7007*, %struct.go7007** %3, align 8
  %82 = getelementptr inbounds %struct.go7007, %struct.go7007* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load %struct.go7007*, %struct.go7007** %3, align 8
  %84 = getelementptr inbounds %struct.go7007, %struct.go7007* %83, i32 0, i32 3
  store i64 0, i64* %84, align 8
  %85 = load %struct.go7007*, %struct.go7007** %3, align 8
  %86 = getelementptr inbounds %struct.go7007, %struct.go7007* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load %struct.go7007*, %struct.go7007** %3, align 8
  %88 = call i64 @go7007_stream_start(%struct.go7007* %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %79
  %91 = load %struct.go7007*, %struct.go7007** %3, align 8
  %92 = getelementptr inbounds %struct.go7007, %struct.go7007* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @v4l2_err(i32 %93, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %96

95:                                               ; preds = %79
  br label %96

96:                                               ; preds = %95, %90, %74
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @kfree(i32* %97)
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %96, %63
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i64 @go7007_construct_fw_image(%struct.go7007*, i32**, i32*) #1

declare dso_local i64 @go7007_send_firmware(%struct.go7007*, i32*, i32) #1

declare dso_local i64 @go7007_read_interrupt(%struct.go7007*, i32*, i32*) #1

declare dso_local i32 @v4l2_err(i32, i8*) #1

declare dso_local i64 @go7007_stream_start(%struct.go7007*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

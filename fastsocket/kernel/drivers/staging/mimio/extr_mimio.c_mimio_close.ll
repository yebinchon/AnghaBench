; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/mimio/extr_mimio.c_mimio_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/mimio/extr_mimio.c_mimio_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.mimio = type { i64, i64 }

@.str = private unnamed_addr constant [37 x i8] c"null mimio attached to input device\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"mimio not open.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @mimio_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mimio_close(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.mimio*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %4 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %5 = call %struct.mimio* @input_get_drvdata(%struct.input_dev* %4)
  store %struct.mimio* %5, %struct.mimio** %3, align 8
  %6 = load %struct.mimio*, %struct.mimio** %3, align 8
  %7 = icmp ne %struct.mimio* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %10 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %9, i32 0, i32 0
  %11 = call i32 @dev_err(i32* %10, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.mimio*, %struct.mimio** %3, align 8
  %14 = getelementptr inbounds %struct.mimio, %struct.mimio* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %19 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %26

21:                                               ; preds = %12
  %22 = load %struct.mimio*, %struct.mimio** %3, align 8
  %23 = getelementptr inbounds %struct.mimio, %struct.mimio* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %23, align 8
  br label %26

26:                                               ; preds = %21, %17
  %27 = load %struct.mimio*, %struct.mimio** %3, align 8
  %28 = getelementptr inbounds %struct.mimio, %struct.mimio* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.mimio*, %struct.mimio** %3, align 8
  %33 = getelementptr inbounds %struct.mimio, %struct.mimio* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.mimio*, %struct.mimio** %3, align 8
  %38 = call i32 @mimio_dealloc(%struct.mimio* %37)
  br label %39

39:                                               ; preds = %8, %36, %31, %26
  ret void
}

declare dso_local %struct.mimio* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mimio_dealloc(%struct.mimio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

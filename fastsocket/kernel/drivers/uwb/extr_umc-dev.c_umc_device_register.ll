; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_umc-dev.c_umc_device_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_umc-dev.c_umc_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umc_dev = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [52 x i8] c"can't allocate resource range %016Lx to %016Lx: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @umc_device_register(%struct.umc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.umc_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.umc_dev* %0, %struct.umc_dev** %3, align 8
  %5 = load %struct.umc_dev*, %struct.umc_dev** %3, align 8
  %6 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.umc_dev*, %struct.umc_dev** %3, align 8
  %10 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %9, i32 0, i32 0
  %11 = call i32 @request_resource(i32 %8, %struct.TYPE_3__* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load %struct.umc_dev*, %struct.umc_dev** %3, align 8
  %16 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %15, i32 0, i32 1
  %17 = load %struct.umc_dev*, %struct.umc_dev** %3, align 8
  %18 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.umc_dev*, %struct.umc_dev** %3, align 8
  %22 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %24, i32 %25)
  br label %39

27:                                               ; preds = %1
  %28 = load %struct.umc_dev*, %struct.umc_dev** %3, align 8
  %29 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %28, i32 0, i32 1
  %30 = call i32 @device_register(i32* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %35

34:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %41

35:                                               ; preds = %33
  %36 = load %struct.umc_dev*, %struct.umc_dev** %3, align 8
  %37 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %36, i32 0, i32 0
  %38 = call i32 @release_resource(%struct.TYPE_3__* %37)
  br label %39

39:                                               ; preds = %35, %14
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %34
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @request_resource(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i64, i32) #1

declare dso_local i32 @device_register(i32*) #1

declare dso_local i32 @release_resource(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

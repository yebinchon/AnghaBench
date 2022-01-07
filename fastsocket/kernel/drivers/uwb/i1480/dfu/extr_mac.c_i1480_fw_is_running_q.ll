; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/dfu/extr_mac.c_i1480_fw_is_running_q.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/dfu/extr_mac.c_i1480_fw_is_running_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i1480 = type { i32 (%struct.i1480*, i32, i32)*, i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"Can't read 0x8008000: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Timed out waiting for fw to start\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i1480*)* @i1480_fw_is_running_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i1480_fw_is_running_q(%struct.i1480* %0) #0 {
  %2 = alloca %struct.i1480*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.i1480* %0, %struct.i1480** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.i1480*, %struct.i1480** %2, align 8
  %7 = getelementptr inbounds %struct.i1480, %struct.i1480* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %5, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %35, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 10
  br i1 %12, label %13, label %38

13:                                               ; preds = %10
  %14 = call i32 @msleep(i32 100)
  %15 = load %struct.i1480*, %struct.i1480** %2, align 8
  %16 = getelementptr inbounds %struct.i1480, %struct.i1480* %15, i32 0, i32 0
  %17 = load i32 (%struct.i1480*, i32, i32)*, i32 (%struct.i1480*, i32, i32)** %16, align 8
  %18 = load %struct.i1480*, %struct.i1480** %2, align 8
  %19 = call i32 %17(%struct.i1480* %18, i32 -2146959360, i32 4)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load %struct.i1480*, %struct.i1480** %2, align 8
  %24 = getelementptr inbounds %struct.i1480, %struct.i1480* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 (i32, i8*, ...) @dev_err(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %45

28:                                               ; preds = %13
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp eq i64 %31, 1431655765
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %45

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %10

38:                                               ; preds = %10
  %39 = load %struct.i1480*, %struct.i1480** %2, align 8
  %40 = getelementptr inbounds %struct.i1480, %struct.i1480* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i32, i8*, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %38, %33, %22
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

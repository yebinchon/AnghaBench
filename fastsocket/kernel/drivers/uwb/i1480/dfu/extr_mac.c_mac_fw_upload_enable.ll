; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/dfu/extr_mac.c_mac_fw_upload_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/dfu/extr_mac.c_mac_fw_upload_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i1480 = type { i32, i32 (%struct.i1480*, i32, i32)*, i32 (%struct.i1480*, i32, i32*, i32)*, i32, i64 }

@i1480_FW_UPLOAD_MODE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"can't enable fw upload mode: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i1480*)* @mac_fw_upload_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_fw_upload_enable(%struct.i1480* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i1480*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.i1480* %0, %struct.i1480** %3, align 8
  store i32 -2147483456, i32* %5, align 4
  %7 = load %struct.i1480*, %struct.i1480** %3, align 8
  %8 = getelementptr inbounds %struct.i1480, %struct.i1480* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %6, align 8
  %11 = load %struct.i1480*, %struct.i1480** %3, align 8
  %12 = getelementptr inbounds %struct.i1480, %struct.i1480* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 -2147430188, i32* %5, align 4
  br label %16

16:                                               ; preds = %15, %1
  %17 = load %struct.i1480*, %struct.i1480** %3, align 8
  %18 = getelementptr inbounds %struct.i1480, %struct.i1480* %17, i32 0, i32 1
  %19 = load i32 (%struct.i1480*, i32, i32)*, i32 (%struct.i1480*, i32, i32)** %18, align 8
  %20 = load %struct.i1480*, %struct.i1480** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 %19(%struct.i1480* %20, i32 %21, i32 4)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %43

26:                                               ; preds = %16
  %27 = load i32, i32* @i1480_FW_UPLOAD_MODE_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %28
  store i32 %31, i32* %29, align 4
  %32 = load %struct.i1480*, %struct.i1480** %3, align 8
  %33 = getelementptr inbounds %struct.i1480, %struct.i1480* %32, i32 0, i32 2
  %34 = load i32 (%struct.i1480*, i32, i32*, i32)*, i32 (%struct.i1480*, i32, i32*, i32)** %33, align 8
  %35 = load %struct.i1480*, %struct.i1480** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 %34(%struct.i1480* %35, i32 %36, i32* %37, i32 4)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %26
  br label %43

42:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %50

43:                                               ; preds = %41, %25
  %44 = load %struct.i1480*, %struct.i1480** %3, align 8
  %45 = getelementptr inbounds %struct.i1480, %struct.i1480* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %43, %42
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

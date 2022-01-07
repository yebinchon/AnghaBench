; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audpp.c_audpp_set_volume_and_pan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audpp.c_audpp_set_volume_and_pan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@AUDPP_CMD_CFG_OBJECT_PARAMS = common dso_local global i32 0, align 4
@AUDPP_CMD_CFG_OBJ_UPDATE = common dso_local global i32 0, align 4
@AUDPP_CMD_VOLUME_PAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audpp_set_volume_and_pan(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [11 x i32], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ugt i32 %9, 6
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %32

14:                                               ; preds = %3
  %15 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 0
  %16 = call i32 @memset(i32* %15, i32 0, i32 44)
  %17 = load i32, i32* @AUDPP_CMD_CFG_OBJECT_PARAMS, align 4
  %18 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 0
  store i32 %17, i32* %18, align 16
  %19 = load i32, i32* @AUDPP_CMD_CFG_OBJ_UPDATE, align 4
  %20 = load i32, i32* %5, align 4
  %21 = add i32 1, %20
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 %22
  store i32 %19, i32* %23, align 4
  %24 = load i32, i32* @AUDPP_CMD_VOLUME_PAN, align 4
  %25 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 8
  store i32 %24, i32* %25, align 16
  %26 = load i32, i32* %6, align 4
  %27 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 9
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 10
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 0
  %31 = call i32 @audpp_send_queue3(i32* %30, i32 44)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %14, %11
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @audpp_send_queue3(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

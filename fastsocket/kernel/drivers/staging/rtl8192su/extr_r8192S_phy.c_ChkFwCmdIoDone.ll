; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_ChkFwCmdIoDone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_ChkFwCmdIoDone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@WFM5 = common dso_local global i32 0, align 4
@COMP_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"[FW CMD] Set FW Cmd success!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"[FW CMD] Polling FW Cmd PollingCnt(%d)!!\0A\00", align 1
@COMP_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"[FW CMD] Set FW Cmd fail!!\0A\00", align 1
@Adapter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ChkFwCmdIoDone(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i64 1000, i64* %3, align 8
  br label %5

5:                                                ; preds = %20, %1
  %6 = call i32 @udelay(i32 10)
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = load i32, i32* @WFM5, align 4
  %9 = call i64 @read_nic_dword(%struct.net_device* %7, i32 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = load i32, i32* @COMP_CMD, align 4
  %14 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %24

15:                                               ; preds = %5
  %16 = load i32, i32* @COMP_CMD, align 4
  %17 = load i64, i64* %3, align 8
  %18 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  br label %19

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %19
  %21 = load i64, i64* %3, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %3, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %5, label %24

24:                                               ; preds = %20, %12
  %25 = load i64, i64* %3, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @COMP_ERR, align 4
  %29 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %24
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @read_nic_dword(%struct.net_device*, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

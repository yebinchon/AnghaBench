; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_whc-rc.c_whcrc_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_whc-rc.c_whcrc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.whcrc* }
%struct.whcrc = type { i32, i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.uwb_rccb = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@URCSTS = common dso_local global i64 0, align 8
@URCSTS_HALTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"requesting reset of halted radio controller\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@URCCMD = common dso_local global i64 0, align 8
@URCCMD_ACTIVE = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"device is not ready to execute commands\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@URCCMDADDR = common dso_local global i64 0, align 8
@URCCMD_EARV = common dso_local global i64 0, align 8
@URCCMD_SIZE_MASK = common dso_local global i64 0, align 8
@URCCMD_IWR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uwb_rc*, %struct.uwb_rccb*, i64)* @whcrc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whcrc_cmd(%struct.uwb_rc* %0, %struct.uwb_rccb* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uwb_rc*, align 8
  %6 = alloca %struct.uwb_rccb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.whcrc*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i64, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %5, align 8
  store %struct.uwb_rccb* %1, %struct.uwb_rccb** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %13 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %12, i32 0, i32 0
  %14 = load %struct.whcrc*, %struct.whcrc** %13, align 8
  store %struct.whcrc* %14, %struct.whcrc** %9, align 8
  %15 = load %struct.whcrc*, %struct.whcrc** %9, align 8
  %16 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %15, i32 0, i32 5
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %10, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp uge i64 %19, 4096
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %114

24:                                               ; preds = %3
  %25 = load %struct.whcrc*, %struct.whcrc** %9, align 8
  %26 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @URCSTS, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i64 @le_readl(i64 %29)
  %31 = load i32, i32* @URCSTS_HALTED, align 4
  %32 = sext i32 %31 to i64
  %33 = and i64 %30, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %24
  %36 = load %struct.device*, %struct.device** %10, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %39 = call i32 @uwb_rc_reset_all(%struct.uwb_rc* %38)
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %114

42:                                               ; preds = %24
  %43 = load %struct.whcrc*, %struct.whcrc** %9, align 8
  %44 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.whcrc*, %struct.whcrc** %9, align 8
  %47 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @URCCMD, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i64 @le_readl(i64 %50)
  %52 = load i64, i64* @URCCMD_ACTIVE, align 8
  %53 = and i64 %51, %52
  %54 = icmp ne i64 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* @HZ, align 4
  %58 = sdiv i32 %57, 2
  %59 = call i32 @wait_event_timeout(i32 %45, i32 %56, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %42
  %63 = load %struct.device*, %struct.device** %10, align 8
  %64 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @ETIMEDOUT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %114

67:                                               ; preds = %42
  %68 = load %struct.whcrc*, %struct.whcrc** %9, align 8
  %69 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.uwb_rccb*, %struct.uwb_rccb** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @memmove(i32 %70, %struct.uwb_rccb* %71, i64 %72)
  %74 = load %struct.whcrc*, %struct.whcrc** %9, align 8
  %75 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.whcrc*, %struct.whcrc** %9, align 8
  %78 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @URCCMDADDR, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @le_writeq(i32 %76, i64 %81)
  %83 = load %struct.whcrc*, %struct.whcrc** %9, align 8
  %84 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %83, i32 0, i32 0
  %85 = call i32 @spin_lock(i32* %84)
  %86 = load %struct.whcrc*, %struct.whcrc** %9, align 8
  %87 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @URCCMD, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i64 @le_readl(i64 %90)
  store i64 %91, i64* %11, align 8
  %92 = load i64, i64* @URCCMD_EARV, align 8
  %93 = load i64, i64* @URCCMD_SIZE_MASK, align 8
  %94 = or i64 %92, %93
  %95 = xor i64 %94, -1
  %96 = load i64, i64* %11, align 8
  %97 = and i64 %96, %95
  store i64 %97, i64* %11, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* @URCCMD_ACTIVE, align 8
  %100 = or i64 %98, %99
  %101 = load i64, i64* @URCCMD_IWR, align 8
  %102 = or i64 %100, %101
  %103 = load i64, i64* %7, align 8
  %104 = or i64 %102, %103
  %105 = load %struct.whcrc*, %struct.whcrc** %9, align 8
  %106 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @URCCMD, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @le_writel(i64 %104, i64 %109)
  %111 = load %struct.whcrc*, %struct.whcrc** %9, align 8
  %112 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %111, i32 0, i32 0
  %113 = call i32 @spin_unlock(i32* %112)
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %67, %62, %35, %21
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i64 @le_readl(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @uwb_rc_reset_all(%struct.uwb_rc*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @memmove(i32, %struct.uwb_rccb*, i64) #1

declare dso_local i32 @le_writeq(i32, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @le_writel(i64, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

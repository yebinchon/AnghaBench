; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_dev_modem_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_dev_modem_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dlc = type { %struct.rfcomm_dev* }
%struct.rfcomm_dev = type { i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"dlc %p dev %p v24_sig 0x%02x\00", align 1
@TIOCM_CD = common dso_local global i32 0, align 4
@RFCOMM_V24_DV = common dso_local global i32 0, align 4
@RFCOMM_V24_RTC = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@RFCOMM_V24_RTR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@RFCOMM_V24_IC = common dso_local global i32 0, align 4
@TIOCM_RI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfcomm_dlc*, i32)* @rfcomm_dev_modem_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcomm_dev_modem_status(%struct.rfcomm_dlc* %0, i32 %1) #0 {
  %3 = alloca %struct.rfcomm_dlc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rfcomm_dev*, align 8
  store %struct.rfcomm_dlc* %0, %struct.rfcomm_dlc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %7 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %6, i32 0, i32 0
  %8 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %7, align 8
  store %struct.rfcomm_dev* %8, %struct.rfcomm_dev** %5, align 8
  %9 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %10 = icmp ne %struct.rfcomm_dev* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %91

12:                                               ; preds = %2
  %13 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %14 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dlc* %13, %struct.rfcomm_dev* %14, i32 %15)
  %17 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %18 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @TIOCM_CD, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %12
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @RFCOMM_V24_DV, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %23
  %29 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %30 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %35 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @C_CLOCAL(i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %41 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @tty_hangup(i64 %42)
  br label %44

44:                                               ; preds = %39, %33, %28
  br label %45

45:                                               ; preds = %44, %23, %12
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @RFCOMM_V24_RTC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @TIOCM_DSR, align 4
  %52 = load i32, i32* @TIOCM_DTR, align 4
  %53 = or i32 %51, %52
  br label %55

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i32 [ %53, %50 ], [ 0, %54 ]
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @RFCOMM_V24_RTR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32, i32* @TIOCM_RTS, align 4
  %63 = load i32, i32* @TIOCM_CTS, align 4
  %64 = or i32 %62, %63
  br label %66

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %61
  %67 = phi i32 [ %64, %61 ], [ 0, %65 ]
  %68 = or i32 %56, %67
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @RFCOMM_V24_IC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* @TIOCM_RI, align 4
  br label %76

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i32 [ %74, %73 ], [ 0, %75 ]
  %78 = or i32 %68, %77
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @RFCOMM_V24_DV, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* @TIOCM_CD, align 4
  br label %86

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %83
  %87 = phi i32 [ %84, %83 ], [ 0, %85 ]
  %88 = or i32 %78, %87
  %89 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %90 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %86, %11
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dlc*, %struct.rfcomm_dev*, i32) #1

declare dso_local i32 @C_CLOCAL(i64) #1

declare dso_local i32 @tty_hangup(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

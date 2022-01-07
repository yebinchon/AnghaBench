; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_tiocmset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64 }
%struct.file = type { i32 }
%struct.rfcomm_dev = type { %struct.rfcomm_dlc* }
%struct.rfcomm_dlc = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"tty %p dev %p set 0x%02x clear 0x%02x\00", align 1
@TIOCM_DSR = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@RFCOMM_V24_RTC = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@RFCOMM_V24_RTR = common dso_local global i32 0, align 4
@TIOCM_RI = common dso_local global i32 0, align 4
@RFCOMM_V24_IC = common dso_local global i32 0, align 4
@TIOCM_CD = common dso_local global i32 0, align 4
@RFCOMM_V24_DV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, i32, i32)* @rfcomm_tty_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_tty_tiocmset(%struct.tty_struct* %0, %struct.file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rfcomm_dev*, align 8
  %10 = alloca %struct.rfcomm_dlc*, align 8
  %11 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.rfcomm_dev*
  store %struct.rfcomm_dev* %15, %struct.rfcomm_dev** %9, align 8
  %16 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %9, align 8
  %17 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %16, i32 0, i32 0
  %18 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %17, align 8
  store %struct.rfcomm_dlc* %18, %struct.rfcomm_dlc** %10, align 8
  %19 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %20 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %9, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @BT_DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.tty_struct* %19, %struct.rfcomm_dev* %20, i32 %21, i32 %22)
  %24 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %10, align 8
  %25 = call i32 @rfcomm_dlc_get_modem_status(%struct.rfcomm_dlc* %24, i32* %11)
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @TIOCM_DSR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @TIOCM_DTR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30, %4
  %36 = load i32, i32* @RFCOMM_V24_RTC, align 4
  %37 = load i32, i32* %11, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @TIOCM_RTS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @TIOCM_CTS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44, %39
  %50 = load i32, i32* @RFCOMM_V24_RTR, align 4
  %51 = load i32, i32* %11, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @TIOCM_RI, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @RFCOMM_V24_IC, align 4
  %60 = load i32, i32* %11, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @TIOCM_CD, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* @RFCOMM_V24_DV, align 4
  %69 = load i32, i32* %11, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %67, %62
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @TIOCM_DSR, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @TIOCM_DTR, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76, %71
  %82 = load i32, i32* @RFCOMM_V24_RTC, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %11, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %81, %76
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @TIOCM_RTS, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @TIOCM_CTS, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91, %86
  %97 = load i32, i32* @RFCOMM_V24_RTR, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %11, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %96, %91
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @TIOCM_RI, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load i32, i32* @RFCOMM_V24_IC, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %11, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %106, %101
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @TIOCM_CD, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load i32, i32* @RFCOMM_V24_DV, align 4
  %118 = xor i32 %117, -1
  %119 = load i32, i32* %11, align 4
  %120 = and i32 %119, %118
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %116, %111
  %122 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %10, align 8
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @rfcomm_dlc_set_modem_status(%struct.rfcomm_dlc* %122, i32 %123)
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*, %struct.tty_struct*, %struct.rfcomm_dev*, i32, i32) #1

declare dso_local i32 @rfcomm_dlc_get_modem_status(%struct.rfcomm_dlc*, i32*) #1

declare dso_local i32 @rfcomm_dlc_set_modem_status(%struct.rfcomm_dlc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

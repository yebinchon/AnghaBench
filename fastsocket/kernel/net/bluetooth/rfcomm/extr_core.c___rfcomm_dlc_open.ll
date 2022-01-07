; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c___rfcomm_dlc_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c___rfcomm_dlc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dlc = type { i64, i32, i32, i32, i64, i32, i32, i32 }
%struct.rfcomm_session = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"dlc %p state %ld %s %s channel %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BT_OPEN = common dso_local global i64 0, align 8
@BT_CLOSED = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@BT_CONFIG = common dso_local global i64 0, align 8
@RFCOMM_CFC_UNKNOWN = common dso_local global i64 0, align 8
@BT_CONNECTED = common dso_local global i64 0, align 8
@RFCOMM_AUTH_PENDING = common dso_local global i32 0, align 4
@RFCOMM_CONN_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfcomm_dlc*, i32*, i32*, i32)* @__rfcomm_dlc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rfcomm_dlc_open(%struct.rfcomm_dlc* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rfcomm_dlc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rfcomm_session*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rfcomm_dlc* %0, %struct.rfcomm_dlc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %14 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %15 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @batostr(i32* %17)
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @batostr(i32* %19)
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @BT_DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dlc* %13, i64 %16, i32 %18, i32 %20, i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 30
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %140

31:                                               ; preds = %25
  %32 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %33 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BT_OPEN, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %39 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BT_CLOSED, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %140

44:                                               ; preds = %37, %31
  %45 = load i32*, i32** %7, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call %struct.rfcomm_session* @rfcomm_session_get(i32* %45, i32* %46)
  store %struct.rfcomm_session* %47, %struct.rfcomm_session** %10, align 8
  %48 = load %struct.rfcomm_session*, %struct.rfcomm_session** %10, align 8
  %49 = icmp ne %struct.rfcomm_session* %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %44
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call %struct.rfcomm_session* @rfcomm_session_create(i32* %51, i32* %52, i32* %11)
  store %struct.rfcomm_session* %53, %struct.rfcomm_session** %10, align 8
  %54 = load %struct.rfcomm_session*, %struct.rfcomm_session** %10, align 8
  %55 = icmp ne %struct.rfcomm_session* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %140

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %44
  %60 = load %struct.rfcomm_session*, %struct.rfcomm_session** %10, align 8
  %61 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @__dlci(i32 %65, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load %struct.rfcomm_session*, %struct.rfcomm_session** %10, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i64 @rfcomm_dlc_get(%struct.rfcomm_session* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %59
  %73 = load i32, i32* @EBUSY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %140

75:                                               ; preds = %59
  %76 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %77 = call i32 @rfcomm_dlc_clear_state(%struct.rfcomm_dlc* %76)
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %80 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load %struct.rfcomm_session*, %struct.rfcomm_session** %10, align 8
  %82 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @__addr(i32 %83, i32 %84)
  %86 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %87 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 8
  %88 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %89 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %88, i32 0, i32 2
  store i32 7, i32* %89, align 4
  %90 = load i64, i64* @BT_CONFIG, align 8
  %91 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %92 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.rfcomm_session*, %struct.rfcomm_session** %10, align 8
  %94 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %95 = call i32 @rfcomm_dlc_link(%struct.rfcomm_session* %93, %struct.rfcomm_dlc* %94)
  %96 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %97 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %96, i32 0, i32 3
  store i32 1, i32* %97, align 8
  %98 = load %struct.rfcomm_session*, %struct.rfcomm_session** %10, align 8
  %99 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %102 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %101, i32 0, i32 6
  store i32 %100, i32* %102, align 4
  %103 = load %struct.rfcomm_session*, %struct.rfcomm_session** %10, align 8
  %104 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @RFCOMM_CFC_UNKNOWN, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %75
  br label %113

109:                                              ; preds = %75
  %110 = load %struct.rfcomm_session*, %struct.rfcomm_session** %10, align 8
  %111 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  br label %113

113:                                              ; preds = %109, %108
  %114 = phi i64 [ 0, %108 ], [ %112, %109 ]
  %115 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %116 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %115, i32 0, i32 4
  store i64 %114, i64* %116, align 8
  %117 = load %struct.rfcomm_session*, %struct.rfcomm_session** %10, align 8
  %118 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @BT_CONNECTED, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %113
  %123 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %124 = call i64 @rfcomm_check_security(%struct.rfcomm_dlc* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load %struct.rfcomm_session*, %struct.rfcomm_session** %10, align 8
  %128 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %129 = call i32 @rfcomm_send_pn(%struct.rfcomm_session* %127, i32 1, %struct.rfcomm_dlc* %128)
  br label %135

130:                                              ; preds = %122
  %131 = load i32, i32* @RFCOMM_AUTH_PENDING, align 4
  %132 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %133 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %132, i32 0, i32 5
  %134 = call i32 @set_bit(i32 %131, i32* %133)
  br label %135

135:                                              ; preds = %130, %126
  br label %136

136:                                              ; preds = %135, %113
  %137 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %138 = load i32, i32* @RFCOMM_CONN_TIMEOUT, align 4
  %139 = call i32 @rfcomm_dlc_set_timer(%struct.rfcomm_dlc* %137, i32 %138)
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %136, %72, %56, %43, %28
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dlc*, i64, i32, i32, i32) #1

declare dso_local i32 @batostr(i32*) #1

declare dso_local %struct.rfcomm_session* @rfcomm_session_get(i32*, i32*) #1

declare dso_local %struct.rfcomm_session* @rfcomm_session_create(i32*, i32*, i32*) #1

declare dso_local i32 @__dlci(i32, i32) #1

declare dso_local i64 @rfcomm_dlc_get(%struct.rfcomm_session*, i32) #1

declare dso_local i32 @rfcomm_dlc_clear_state(%struct.rfcomm_dlc*) #1

declare dso_local i32 @__addr(i32, i32) #1

declare dso_local i32 @rfcomm_dlc_link(%struct.rfcomm_session*, %struct.rfcomm_dlc*) #1

declare dso_local i64 @rfcomm_check_security(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_send_pn(%struct.rfcomm_session*, i32, %struct.rfcomm_dlc*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rfcomm_dlc_set_timer(%struct.rfcomm_dlc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

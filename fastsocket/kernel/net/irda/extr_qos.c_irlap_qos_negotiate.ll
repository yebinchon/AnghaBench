; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_qos.c_irlap_qos_negotiate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_qos.c_irlap_qos_negotiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irlap_cb = type { %struct.TYPE_17__, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.sk_buff = type { i32, i32 }

@irlap_param_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Setting BAUD_RATE to %d bps.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Setting DATA_SIZE to %d bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Setting WINDOW_SIZE to %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Setting XBOFS to %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Setting MAX_TURN_TIME to %d ms.\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Setting MIN_TURN_TIME to %d usecs.\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Setting LINK_DISC to %d secs.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irlap_qos_negotiate(%struct.irlap_cb* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.irlap_cb*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.irlap_cb* %0, %struct.irlap_cb** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @irda_param_extract_all(%struct.irlap_cb* %6, i32 %9, i32 %12, i32* @irlap_param_info)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %15 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %14, i32 0, i32 0
  %16 = call i32 @irda_qos_bits_to_value(%struct.TYPE_17__* %15)
  %17 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %18 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %17, i32 0, i32 1
  %19 = call i32 @irda_qos_bits_to_value(%struct.TYPE_17__* %18)
  %20 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %21 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %20, i32 0, i32 0
  %22 = call i32 @irlap_adjust_qos_settings(%struct.TYPE_17__* %21)
  %23 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %24 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @IRDA_DEBUG(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %30 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @IRDA_DEBUG(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %36 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @IRDA_DEBUG(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %42 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @IRDA_DEBUG(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %48 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @IRDA_DEBUG(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %54 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @IRDA_DEBUG(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %57)
  %59 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %60 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @IRDA_DEBUG(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @irda_param_extract_all(%struct.irlap_cb*, i32, i32, i32*) #1

declare dso_local i32 @irda_qos_bits_to_value(%struct.TYPE_17__*) #1

declare dso_local i32 @irlap_adjust_qos_settings(%struct.TYPE_17__*) #1

declare dso_local i32 @IRDA_DEBUG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

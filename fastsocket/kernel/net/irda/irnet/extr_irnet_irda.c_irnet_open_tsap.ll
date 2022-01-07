; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_irda.c_irnet_open_tsap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_irda.c_irnet_open_tsap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__*, i32, i32, i32, i32, i32, i32 }

@IRDA_SR_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"(self=0x%p)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@IRDA_SR_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Already busy !\0A\00", align 1
@irnet_connect_confirm = common dso_local global i32 0, align 4
@irnet_connect_indication = common dso_local global i32 0, align 4
@irnet_disconnect_indication = common dso_local global i32 0, align 4
@irnet_data_indication = common dso_local global i32 0, align 4
@irnet_flow_indication = common dso_local global i32 0, align 4
@irnet_status_indication = common dso_local global i32 0, align 4
@IRNET_NOTIFY_NAME = common dso_local global i32 0, align 4
@LSAP_ANY = common dso_local global i32 0, align 4
@DEFAULT_INITIAL_CREDIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Unable to allocate TSAP !\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c" - tsap=0x%p, sel=0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @irnet_open_tsap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irnet_open_tsap(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = load i32, i32* @IRDA_SR_TRACE, align 4
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = call i32 @DENTER(i32 %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %5)
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %10 = icmp ne %struct.TYPE_11__* %9, null
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  %14 = load i32, i32* @IRDA_SR_ERROR, align 4
  %15 = call i32 @DABORT(i32 %11, i32 %13, i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @irda_notify_init(%struct.TYPE_9__* %3)
  %17 = load i32, i32* @irnet_connect_confirm, align 4
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 7
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @irnet_connect_indication, align 4
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 6
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* @irnet_disconnect_indication, align 4
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 5
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @irnet_data_indication, align 4
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 4
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* @irnet_flow_indication, align 4
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 3
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @irnet_status_indication, align 4
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IRNET_NOTIFY_NAME, align 4
  %34 = call i32 @strlcpy(i32 %32, i32 %33, i32 4)
  %35 = load i32, i32* @LSAP_ANY, align 4
  %36 = load i32, i32* @DEFAULT_INITIAL_CREDIT, align 4
  %37 = call %struct.TYPE_11__* @irttp_open_tsap(i32 %35, i32 %36, %struct.TYPE_9__* %3)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %39, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = icmp eq %struct.TYPE_11__* %42, null
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  %47 = load i32, i32* @IRDA_SR_ERROR, align 4
  %48 = call i32 @DABORT(i32 %44, i32 %46, i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @IRDA_SR_TRACE, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @DEXIT(i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_11__* %59, i32 %62)
  ret i32 0
}

declare dso_local i32 @DENTER(i32, i8*, %struct.TYPE_10__*) #1

declare dso_local i32 @DABORT(i32, i32, i32, i8*) #1

declare dso_local i32 @irda_notify_init(%struct.TYPE_9__*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_11__* @irttp_open_tsap(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @DEXIT(i32, i8*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

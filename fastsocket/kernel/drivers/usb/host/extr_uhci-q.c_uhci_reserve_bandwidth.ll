; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-q.c_uhci_reserve_bandwidth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-q.c_uhci_reserve_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { i32*, i32 }
%struct.uhci_qh = type { i32, i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"??\00", align 1
@MAX_PHASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"INT\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ISO\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"%s dev %d ep%02x-%s, period %d, phase %d, %d us\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"reserve\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uhci_hcd*, %struct.uhci_qh*)* @uhci_reserve_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhci_reserve_bandwidth(%struct.uhci_hcd* %0, %struct.uhci_qh* %1) #0 {
  %3 = alloca %struct.uhci_hcd*, align 8
  %4 = alloca %struct.uhci_qh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %3, align 8
  store %struct.uhci_qh* %1, %struct.uhci_qh** %4, align 8
  %8 = load %struct.uhci_qh*, %struct.uhci_qh** %4, align 8
  %9 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %11 = load %struct.uhci_qh*, %struct.uhci_qh** %4, align 8
  %12 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %33, %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MAX_PHASE, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %21 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, %19
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %30 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %18
  %34 = load %struct.uhci_qh*, %struct.uhci_qh** %4, align 8
  %35 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %14

39:                                               ; preds = %14
  %40 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %41 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MAX_PHASE, align 4
  %44 = sdiv i32 %42, %43
  %45 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %46 = call %struct.TYPE_10__* @uhci_to_hcd(%struct.uhci_hcd* %45)
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 4
  %49 = load %struct.uhci_qh*, %struct.uhci_qh** %4, align 8
  %50 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %66 [
    i32 129, label %52
    i32 128, label %59
  ]

52:                                               ; preds = %39
  %53 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %54 = call %struct.TYPE_10__* @uhci_to_hcd(%struct.uhci_hcd* %53)
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %66

59:                                               ; preds = %39
  %60 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %61 = call %struct.TYPE_10__* @uhci_to_hcd(%struct.uhci_hcd* %60)
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %66

66:                                               ; preds = %39, %59, %52
  %67 = load %struct.uhci_qh*, %struct.uhci_qh** %4, align 8
  %68 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %67, i32 0, i32 4
  store i32 1, i32* %68, align 8
  %69 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %70 = call i32 @uhci_dev(%struct.uhci_hcd* %69)
  %71 = load %struct.uhci_qh*, %struct.uhci_qh** %4, align 8
  %72 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %71, i32 0, i32 6
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.uhci_qh*, %struct.uhci_qh** %4, align 8
  %77 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %76, i32 0, i32 5
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = load %struct.uhci_qh*, %struct.uhci_qh** %4, align 8
  %84 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.uhci_qh*, %struct.uhci_qh** %4, align 8
  %87 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @dev_dbg(i32 %70, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %75, i32 %81, i8* %82, i32 %85, i32 %88, i32 %89)
  ret void
}

declare dso_local %struct.TYPE_10__* @uhci_to_hcd(%struct.uhci_hcd*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @uhci_dev(%struct.uhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

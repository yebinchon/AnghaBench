; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_qh_unlink_periodic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_qh_unlink_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32 }
%struct.ehci_qh = type { i32, i32, i32, i32, %struct.TYPE_9__, i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"unlink qh%d-%04x/%p start %d [%d/%d us]\0A\00", align 1
@QH_CMASK = common dso_local global i32 0, align 4
@QH_SMASK = common dso_local global i32 0, align 4
@QH_STATE_UNLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehci_hcd*, %struct.ehci_qh*)* @qh_unlink_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qh_unlink_periodic(%struct.ehci_hcd* %0, %struct.ehci_qh* %1) #0 {
  %3 = alloca %struct.ehci_hcd*, align 8
  %4 = alloca %struct.ehci_qh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %3, align 8
  store %struct.ehci_qh* %1, %struct.ehci_qh** %4, align 8
  %7 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %8 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %12

12:                                               ; preds = %11, %2
  %13 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %14 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %27, %12
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %19 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %26 = call i32 @periodic_unlink(%struct.ehci_hcd* %23, i32 %24, %struct.ehci_qh* %25)
  br label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %16

31:                                               ; preds = %16
  %32 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %33 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %38 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %41 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  %44 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %45 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = udiv i32 %43, %46
  br label %53

48:                                               ; preds = %31
  %49 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %50 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 %51, 8
  br label %53

53:                                               ; preds = %48, %36
  %54 = phi i32 [ %47, %36 ], [ %52, %48 ]
  %55 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %56 = call %struct.TYPE_10__* @ehci_to_hcd(%struct.ehci_hcd* %55)
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sub i32 %59, %54
  store i32 %60, i32* %58, align 4
  %61 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %62 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %61, i32 0, i32 7
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %66 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %69 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %70 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %69, i32 0, i32 6
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = call i32 @hc32_to_cpup(%struct.ehci_hcd* %68, i32* %72)
  %74 = load i32, i32* @QH_CMASK, align 4
  %75 = load i32, i32* @QH_SMASK, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %79 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %80 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %83 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %86 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_dbg(i32* %64, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %77, %struct.ehci_qh* %78, i32 %81, i32 %84, i32 %87)
  %89 = load i32, i32* @QH_STATE_UNLINK, align 4
  %90 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %91 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 8
  %92 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %93 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  store i32* null, i32** %94, align 8
  %95 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %96 = call i32 @qh_put(%struct.ehci_qh* %95)
  %97 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %98 = call i32 @disable_periodic(%struct.ehci_hcd* %97)
  ret i32 %98
}

declare dso_local i32 @periodic_unlink(%struct.ehci_hcd*, i32, %struct.ehci_qh*) #1

declare dso_local %struct.TYPE_10__* @ehci_to_hcd(%struct.ehci_hcd*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, %struct.ehci_qh*, i32, i32, i32) #1

declare dso_local i32 @hc32_to_cpup(%struct.ehci_hcd*, i32*) #1

declare dso_local i32 @qh_put(%struct.ehci_qh*) #1

declare dso_local i32 @disable_periodic(%struct.ehci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

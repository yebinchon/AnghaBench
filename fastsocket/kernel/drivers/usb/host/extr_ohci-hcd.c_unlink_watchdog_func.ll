; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-hcd.c_unlink_watchdog_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-hcd.c_unlink_watchdog_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ed = type { %struct.ed* }
%struct.ohci_hcd = type { i32, i32, i32, i32, %struct.TYPE_2__*, %struct.ed*, %struct.ed** }
%struct.TYPE_2__ = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@NUM_INTS = common dso_local global i32 0, align 4
@OHCI_INTR_SF = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @unlink_watchdog_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unlink_watchdog_func(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ed**, align 8
  %8 = alloca %struct.ohci_hcd*, align 8
  %9 = alloca %struct.ed*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %5, align 4
  store %struct.ed** null, %struct.ed*** %7, align 8
  %11 = load i64, i64* %2, align 8
  %12 = inttoptr i64 %11 to %struct.ohci_hcd*
  store %struct.ohci_hcd* %12, %struct.ohci_hcd** %8, align 8
  %13 = load %struct.ohci_hcd*, %struct.ohci_hcd** %8, align 8
  %14 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %13, i32 0, i32 2
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.ohci_hcd*, %struct.ohci_hcd** %8, align 8
  %18 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %136

23:                                               ; preds = %1
  %24 = load %struct.ohci_hcd*, %struct.ohci_hcd** %8, align 8
  %25 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %24, i32 0, i32 5
  %26 = load %struct.ed*, %struct.ed** %25, align 8
  %27 = icmp ne %struct.ed* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %120

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call %struct.ed** @kcalloc(i32 %30, i32 8, i32 %31)
  store %struct.ed** %32, %struct.ed*** %7, align 8
  %33 = load %struct.ed**, %struct.ed*** %7, align 8
  %34 = icmp ne %struct.ed** %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %120

36:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %116, %36
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @NUM_INTS, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %119

41:                                               ; preds = %37
  %42 = load %struct.ohci_hcd*, %struct.ohci_hcd** %8, align 8
  %43 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %42, i32 0, i32 6
  %44 = load %struct.ed**, %struct.ed*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ed*, %struct.ed** %44, i64 %46
  %48 = load %struct.ed*, %struct.ed** %47, align 8
  store %struct.ed* %48, %struct.ed** %9, align 8
  br label %49

49:                                               ; preds = %85, %41
  %50 = load %struct.ed*, %struct.ed** %9, align 8
  %51 = icmp ne %struct.ed* %50, null
  br i1 %51, label %52, label %115

52:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %67, %52
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load %struct.ed**, %struct.ed*** %7, align 8
  %59 = load i32, i32* %10, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.ed*, %struct.ed** %58, i64 %60
  %62 = load %struct.ed*, %struct.ed** %61, align 8
  %63 = load %struct.ed*, %struct.ed** %9, align 8
  %64 = icmp eq %struct.ed* %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store %struct.ed* null, %struct.ed** %9, align 8
  br label %70

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %10, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %53

70:                                               ; preds = %65, %53
  %71 = load %struct.ed*, %struct.ed** %9, align 8
  %72 = icmp ne %struct.ed* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  br label %115

74:                                               ; preds = %70
  %75 = load %struct.ed*, %struct.ed** %9, align 8
  %76 = load %struct.ed**, %struct.ed*** %7, align 8
  %77 = load i32, i32* %5, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %5, align 4
  %79 = zext i32 %77 to i64
  %80 = getelementptr inbounds %struct.ed*, %struct.ed** %76, i64 %79
  store %struct.ed* %75, %struct.ed** %80, align 8
  %81 = load %struct.ohci_hcd*, %struct.ohci_hcd** %8, align 8
  %82 = load %struct.ed*, %struct.ed** %9, align 8
  %83 = call i32 @check_ed(%struct.ohci_hcd* %81, %struct.ed* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %74
  %86 = load %struct.ed*, %struct.ed** %9, align 8
  %87 = getelementptr inbounds %struct.ed, %struct.ed* %86, i32 0, i32 0
  %88 = load %struct.ed*, %struct.ed** %87, align 8
  store %struct.ed* %88, %struct.ed** %9, align 8
  br label %49

89:                                               ; preds = %74
  %90 = load %struct.ed*, %struct.ed** %9, align 8
  %91 = load %struct.ohci_hcd*, %struct.ohci_hcd** %8, align 8
  %92 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %91, i32 0, i32 5
  store %struct.ed* %90, %struct.ed** %92, align 8
  %93 = load %struct.ohci_hcd*, %struct.ohci_hcd** %8, align 8
  %94 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %93, i32 0, i32 1
  store i32 2, i32* %94, align 4
  %95 = load %struct.ohci_hcd*, %struct.ohci_hcd** %8, align 8
  %96 = load i32, i32* @OHCI_INTR_SF, align 4
  %97 = load %struct.ohci_hcd*, %struct.ohci_hcd** %8, align 8
  %98 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %97, i32 0, i32 4
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = call i32 @ohci_writel(%struct.ohci_hcd* %95, i32 %96, i32* %100)
  %102 = load %struct.ohci_hcd*, %struct.ohci_hcd** %8, align 8
  %103 = load i32, i32* @OHCI_INTR_SF, align 4
  %104 = load %struct.ohci_hcd*, %struct.ohci_hcd** %8, align 8
  %105 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %104, i32 0, i32 4
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = call i32 @ohci_writel(%struct.ohci_hcd* %102, i32 %103, i32* %107)
  %109 = load %struct.ohci_hcd*, %struct.ohci_hcd** %8, align 8
  %110 = load %struct.ohci_hcd*, %struct.ohci_hcd** %8, align 8
  %111 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %110, i32 0, i32 4
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = call i32 @ohci_readl(%struct.ohci_hcd* %109, i32* %113)
  br label %120

115:                                              ; preds = %73, %49
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %6, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %37

119:                                              ; preds = %37
  br label %120

120:                                              ; preds = %119, %89, %35, %28
  %121 = load %struct.ed**, %struct.ed*** %7, align 8
  %122 = call i32 @kfree(%struct.ed** %121)
  %123 = load %struct.ohci_hcd*, %struct.ohci_hcd** %8, align 8
  %124 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %120
  %128 = load %struct.ohci_hcd*, %struct.ohci_hcd** %8, align 8
  %129 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %128, i32 0, i32 3
  %130 = load i64, i64* @jiffies, align 8
  %131 = load i64, i64* @HZ, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @round_jiffies(i64 %132)
  %134 = call i32 @mod_timer(i32* %129, i32 %133)
  br label %135

135:                                              ; preds = %127, %120
  br label %136

136:                                              ; preds = %135, %22
  %137 = load %struct.ohci_hcd*, %struct.ohci_hcd** %8, align 8
  %138 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %137, i32 0, i32 2
  %139 = load i64, i64* %3, align 8
  %140 = call i32 @spin_unlock_irqrestore(i32* %138, i64 %139)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ed** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @check_ed(%struct.ohci_hcd*, %struct.ed*) #1

declare dso_local i32 @ohci_writel(%struct.ohci_hcd*, i32, i32*) #1

declare dso_local i32 @ohci_readl(%struct.ohci_hcd*, i32*) #1

declare dso_local i32 @kfree(%struct.ed**) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

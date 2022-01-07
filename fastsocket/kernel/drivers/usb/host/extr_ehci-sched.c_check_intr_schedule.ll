; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_check_intr_schedule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_check_intr_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32 }
%struct.ehci_qh = type { i32, i64, i32, i32, i32, i64 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehci_hcd*, i32, i32, %struct.ehci_qh*, i32*)* @check_intr_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_intr_schedule(%struct.ehci_hcd* %0, i32 %1, i32 %2, %struct.ehci_qh* %3, i32* %4) #0 {
  %6 = alloca %struct.ehci_hcd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ehci_qh*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ehci_qh* %3, %struct.ehci_qh** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32, i32* @ENOSPC, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.ehci_qh*, %struct.ehci_qh** %9, align 8
  %16 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = icmp uge i32 %20, 6
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %107

23:                                               ; preds = %19, %5
  %24 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.ehci_qh*, %struct.ehci_qh** %9, align 8
  %28 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ehci_qh*, %struct.ehci_qh** %9, align 8
  %31 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @check_period(%struct.ehci_hcd* %24, i32 %25, i32 %26, i32 %29, i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %23
  br label %107

36:                                               ; preds = %23
  %37 = load %struct.ehci_qh*, %struct.ehci_qh** %9, align 8
  %38 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  store i32 0, i32* %11, align 4
  %42 = load i32*, i32** %10, align 8
  store i32 0, i32* %42, align 4
  br label %107

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.ehci_qh*, %struct.ehci_qh** %9, align 8
  %46 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add i32 %44, %47
  %49 = shl i32 3, %48
  store i32 %49, i32* %12, align 4
  %50 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %51 = load i32, i32* %12, align 4
  %52 = shl i32 %51, 8
  %53 = call i32 @cpu_to_hc32(%struct.ehci_hcd* %50, i32 %52)
  %54 = load i32*, i32** %10, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %8, align 4
  %56 = shl i32 1, %55
  %57 = load i32, i32* %12, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %12, align 4
  %59 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %60 = load %struct.ehci_qh*, %struct.ehci_qh** %9, align 8
  %61 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ehci_qh*, %struct.ehci_qh** %9, align 8
  %64 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i64 @tt_no_collision(%struct.ehci_hcd* %59, i32 %62, i32 %65, i32 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %106

70:                                               ; preds = %43
  %71 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.ehci_qh*, %struct.ehci_qh** %9, align 8
  %75 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add i32 %73, %76
  %78 = add i32 %77, 1
  %79 = load %struct.ehci_qh*, %struct.ehci_qh** %9, align 8
  %80 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ehci_qh*, %struct.ehci_qh** %9, align 8
  %83 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @check_period(%struct.ehci_hcd* %71, i32 %72, i32 %78, i32 %81, i64 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %70
  br label %107

88:                                               ; preds = %70
  %89 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.ehci_qh*, %struct.ehci_qh** %9, align 8
  %93 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add i32 %91, %94
  %96 = load %struct.ehci_qh*, %struct.ehci_qh** %9, align 8
  %97 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.ehci_qh*, %struct.ehci_qh** %9, align 8
  %100 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @check_period(%struct.ehci_hcd* %89, i32 %90, i32 %95, i32 %98, i64 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %88
  br label %107

105:                                              ; preds = %88
  store i32 0, i32* %11, align 4
  br label %106

106:                                              ; preds = %105, %43
  br label %107

107:                                              ; preds = %106, %104, %87, %41, %35, %22
  %108 = load i32, i32* %11, align 4
  ret i32 %108
}

declare dso_local i32 @check_period(%struct.ehci_hcd*, i32, i32, i32, i64) #1

declare dso_local i32 @cpu_to_hc32(%struct.ehci_hcd*, i32) #1

declare dso_local i64 @tt_no_collision(%struct.ehci_hcd*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

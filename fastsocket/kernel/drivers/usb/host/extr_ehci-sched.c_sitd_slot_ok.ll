; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_sitd_slot_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_sitd_slot_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32 }
%struct.ehci_iso_stream = type { i32, i32, i32, i32, i32, i32 }
%struct.ehci_iso_sched = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehci_hcd*, i32, %struct.ehci_iso_stream*, i32, %struct.ehci_iso_sched*, i32)* @sitd_slot_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sitd_slot_ok(%struct.ehci_hcd* %0, i32 %1, %struct.ehci_iso_stream* %2, i32 %3, %struct.ehci_iso_sched* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ehci_hcd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ehci_iso_stream*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ehci_iso_sched*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.ehci_iso_stream* %2, %struct.ehci_iso_stream** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.ehci_iso_sched* %4, %struct.ehci_iso_sched** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %10, align 8
  %20 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %11, align 4
  %23 = and i32 %22, 7
  %24 = shl i32 %21, %23
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = and i32 %25, -65536
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %132

29:                                               ; preds = %6
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %11, align 4
  %32 = srem i32 %31, %30
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %117, %29
  %34 = load i32, i32* %11, align 4
  %35 = ashr i32 %34, 3
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %36, 7
  store i32 %37, i32* %17, align 4
  %38 = load %struct.ehci_hcd*, %struct.ehci_hcd** %8, align 8
  %39 = load i32, i32* %13, align 4
  %40 = shl i32 %39, 3
  %41 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %10, align 8
  %42 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @tt_no_collision(%struct.ehci_hcd* %38, i32 %40, i32 %43, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %132

49:                                               ; preds = %33
  %50 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %10, align 8
  %51 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 100, %52
  store i32 %53, i32* %18, align 4
  %54 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %10, align 8
  %55 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 255
  store i32 %57, i32* %15, align 4
  br label %58

58:                                               ; preds = %70, %49
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = load %struct.ehci_hcd*, %struct.ehci_hcd** %8, align 8
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %17, align 4
  %65 = call i32 @periodic_usecs(%struct.ehci_hcd* %62, i32 %63, i32 %64)
  %66 = load i32, i32* %18, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 0, i32* %7, align 4
  br label %132

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %15, align 4
  %72 = ashr i32 %71, 1
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %17, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %17, align 4
  br label %58

75:                                               ; preds = %58
  %76 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %10, align 8
  %77 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %113

80:                                               ; preds = %75
  %81 = load i32, i32* %11, align 4
  %82 = and i32 %81, 7
  store i32 %82, i32* %17, align 4
  %83 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %10, align 8
  %84 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 100, %85
  store i32 %86, i32* %18, align 4
  br label %87

87:                                               ; preds = %108, %80
  %88 = load i32, i32* %17, align 4
  %89 = shl i32 1, %88
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = shl i32 %90, 8
  store i32 %91, i32* %15, align 4
  %92 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %10, align 8
  %93 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %15, align 4
  %96 = and i32 %94, %95
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  br label %108

99:                                               ; preds = %87
  %100 = load %struct.ehci_hcd*, %struct.ehci_hcd** %8, align 8
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @periodic_usecs(%struct.ehci_hcd* %100, i32 %101, i32 %102)
  %104 = load i32, i32* %18, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  store i32 0, i32* %7, align 4
  br label %132

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107, %98
  %109 = load i32, i32* %17, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %17, align 4
  %111 = icmp slt i32 %110, 8
  br i1 %111, label %87, label %112

112:                                              ; preds = %108
  br label %113

113:                                              ; preds = %112, %75
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %33, label %121

121:                                              ; preds = %117
  %122 = load %struct.ehci_hcd*, %struct.ehci_hcd** %8, align 8
  %123 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %10, align 8
  %124 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %11, align 4
  %127 = and i32 %126, 7
  %128 = shl i32 %125, %127
  %129 = call i32 @cpu_to_hc32(%struct.ehci_hcd* %122, i32 %128)
  %130 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %10, align 8
  %131 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  store i32 1, i32* %7, align 4
  br label %132

132:                                              ; preds = %121, %106, %68, %48, %28
  %133 = load i32, i32* %7, align 4
  ret i32 %133
}

declare dso_local i32 @tt_no_collision(%struct.ehci_hcd*, i32, i32, i32, i32) #1

declare dso_local i32 @periodic_usecs(%struct.ehci_hcd*, i32, i32) #1

declare dso_local i32 @cpu_to_hc32(%struct.ehci_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

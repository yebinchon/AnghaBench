; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-q.c_qtd_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-q.c_qtd_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32 }
%struct.ehci_qtd = type { i32, i8*, i8**, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehci_hcd*, %struct.ehci_qtd*, i32, i64, i32, i32)* @qtd_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtd_fill(%struct.ehci_hcd* %0, %struct.ehci_qtd* %1, i32 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ehci_hcd*, align 8
  %8 = alloca %struct.ehci_qtd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %7, align 8
  store %struct.ehci_qtd* %1, %struct.ehci_qtd** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %15, align 4
  %17 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %18 = load i32, i32* %15, align 4
  %19 = call i8* @cpu_to_hc32(%struct.ehci_hcd* %17, i32 %18)
  %20 = load %struct.ehci_qtd*, %struct.ehci_qtd** %8, align 8
  %21 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %20, i32 0, i32 3
  %22 = load i8**, i8*** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  store i8* %19, i8** %23, align 8
  %24 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %25 = load i32, i32* %15, align 4
  %26 = ashr i32 %25, 32
  %27 = call i8* @cpu_to_hc32(%struct.ehci_hcd* %24, i32 %26)
  %28 = load %struct.ehci_qtd*, %struct.ehci_qtd** %8, align 8
  %29 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %28, i32 0, i32 2
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  store i8* %27, i8** %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, 4095
  %34 = sub nsw i32 4096, %33
  store i32 %34, i32* %14, align 4
  %35 = load i64, i64* %10, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %35, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @likely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %6
  %43 = load i64, i64* %10, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %14, align 4
  br label %110

45:                                               ; preds = %6
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 4096
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, -4096
  store i32 %49, i32* %9, align 4
  store i32 1, i32* %13, align 4
  br label %50

50:                                               ; preds = %95, %45
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %10, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %56, 5
  br label %58

58:                                               ; preds = %55, %50
  %59 = phi i1 [ false, %50 ], [ %57, %55 ]
  br i1 %59, label %60, label %98

60:                                               ; preds = %58
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %15, align 4
  %62 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %63 = load i32, i32* %15, align 4
  %64 = call i8* @cpu_to_hc32(%struct.ehci_hcd* %62, i32 %63)
  %65 = load %struct.ehci_qtd*, %struct.ehci_qtd** %8, align 8
  %66 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %65, i32 0, i32 3
  %67 = load i8**, i8*** %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  store i8* %64, i8** %70, align 8
  %71 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %72 = load i32, i32* %15, align 4
  %73 = ashr i32 %72, 32
  %74 = call i8* @cpu_to_hc32(%struct.ehci_hcd* %71, i32 %73)
  %75 = load %struct.ehci_qtd*, %struct.ehci_qtd** %8, align 8
  %76 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %75, i32 0, i32 2
  %77 = load i8**, i8*** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  store i8* %74, i8** %80, align 8
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 4096
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, 4096
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %10, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %60
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 4096
  store i32 %90, i32* %14, align 4
  br label %94

91:                                               ; preds = %60
  %92 = load i64, i64* %10, align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %14, align 4
  br label %94

94:                                               ; preds = %91, %88
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %50

98:                                               ; preds = %58
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* %10, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %12, align 4
  %106 = srem i32 %104, %105
  %107 = load i32, i32* %14, align 4
  %108 = sub nsw i32 %107, %106
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %103, %98
  br label %110

110:                                              ; preds = %109, %42
  %111 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %112 = load i32, i32* %14, align 4
  %113 = shl i32 %112, 16
  %114 = load i32, i32* %11, align 4
  %115 = or i32 %113, %114
  %116 = call i8* @cpu_to_hc32(%struct.ehci_hcd* %111, i32 %115)
  %117 = load %struct.ehci_qtd*, %struct.ehci_qtd** %8, align 8
  %118 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.ehci_qtd*, %struct.ehci_qtd** %8, align 8
  %121 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* %14, align 4
  ret i32 %122
}

declare dso_local i8* @cpu_to_hc32(%struct.ehci_hcd*, i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

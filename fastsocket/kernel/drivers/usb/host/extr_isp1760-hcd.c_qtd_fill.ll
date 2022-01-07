; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1760-hcd.c_qtd_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1760-hcd.c_qtd_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1760_qtd = type { i32, i32, i32, i8* }

@HC_ATL_PL_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp1760_qtd*, i8*, i64, i32)* @qtd_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtd_fill(%struct.isp1760_qtd* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.isp1760_qtd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.isp1760_qtd* %0, %struct.isp1760_qtd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %5, align 8
  %12 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %11, i32 0, i32 3
  store i8* %10, i8** %12, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @GET_QTD_TOKEN_TYPE(i32 %13)
  %15 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %5, align 8
  %16 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @GET_DATA_TOGGLE(i32 %17)
  %19 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %5, align 8
  %20 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @HC_ATL_PL_SIZE, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i64, i64* @HC_ATL_PL_SIZE, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %9, align 4
  br label %30

27:                                               ; preds = %4
  %28 = load i64, i64* %7, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %5, align 8
  %33 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %9, align 4
  ret i32 %34
}

declare dso_local i32 @GET_QTD_TOKEN_TYPE(i32) #1

declare dso_local i32 @GET_DATA_TOGGLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-mem.c_ohci_mem_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-mem.c_ohci_mem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohci_hcd = type { i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"ohci_td\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ohci_ed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ohci_hcd*)* @ohci_mem_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_mem_init(%struct.ohci_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ohci_hcd*, align 8
  store %struct.ohci_hcd* %0, %struct.ohci_hcd** %3, align 8
  %4 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %5 = call %struct.TYPE_4__* @ohci_to_hcd(%struct.ohci_hcd* %4)
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i8* @dma_pool_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %8, i32 4, i32 32, i32 0)
  %10 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %11 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %13 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %40

19:                                               ; preds = %1
  %20 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %21 = call %struct.TYPE_4__* @ohci_to_hcd(%struct.ohci_hcd* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @dma_pool_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 4, i32 16, i32 0)
  %26 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %27 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %29 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %19
  %33 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %34 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @dma_pool_destroy(i8* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %32, %16
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i8* @dma_pool_create(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @ohci_to_hcd(%struct.ohci_hcd*) #1

declare dso_local i32 @dma_pool_destroy(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

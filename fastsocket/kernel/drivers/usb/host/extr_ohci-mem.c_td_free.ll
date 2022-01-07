; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-mem.c_td_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-mem.c_td_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohci_hcd = type { i32, %struct.td** }
%struct.td = type { i32, i32, %struct.td* }

@TD_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"no hash for td %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ohci_hcd*, %struct.td*)* @td_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @td_free(%struct.ohci_hcd* %0, %struct.td* %1) #0 {
  %3 = alloca %struct.ohci_hcd*, align 8
  %4 = alloca %struct.td*, align 8
  %5 = alloca %struct.td**, align 8
  store %struct.ohci_hcd* %0, %struct.ohci_hcd** %3, align 8
  store %struct.td* %1, %struct.td** %4, align 8
  %6 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %7 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %6, i32 0, i32 1
  %8 = load %struct.td**, %struct.td*** %7, align 8
  %9 = load %struct.td*, %struct.td** %4, align 8
  %10 = getelementptr inbounds %struct.td, %struct.td* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @TD_HASH_FUNC(i32 %11)
  %13 = getelementptr inbounds %struct.td*, %struct.td** %8, i64 %12
  store %struct.td** %13, %struct.td*** %5, align 8
  br label %14

14:                                               ; preds = %25, %2
  %15 = load %struct.td**, %struct.td*** %5, align 8
  %16 = load %struct.td*, %struct.td** %15, align 8
  %17 = icmp ne %struct.td* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.td**, %struct.td*** %5, align 8
  %20 = load %struct.td*, %struct.td** %19, align 8
  %21 = load %struct.td*, %struct.td** %4, align 8
  %22 = icmp ne %struct.td* %20, %21
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi i1 [ false, %14 ], [ %22, %18 ]
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  %26 = load %struct.td**, %struct.td*** %5, align 8
  %27 = load %struct.td*, %struct.td** %26, align 8
  %28 = getelementptr inbounds %struct.td, %struct.td* %27, i32 0, i32 2
  store %struct.td** %28, %struct.td*** %5, align 8
  br label %14

29:                                               ; preds = %23
  %30 = load %struct.td**, %struct.td*** %5, align 8
  %31 = load %struct.td*, %struct.td** %30, align 8
  %32 = icmp ne %struct.td* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.td*, %struct.td** %4, align 8
  %35 = getelementptr inbounds %struct.td, %struct.td* %34, i32 0, i32 2
  %36 = load %struct.td*, %struct.td** %35, align 8
  %37 = load %struct.td**, %struct.td*** %5, align 8
  store %struct.td* %36, %struct.td** %37, align 8
  br label %52

38:                                               ; preds = %29
  %39 = load %struct.td*, %struct.td** %4, align 8
  %40 = getelementptr inbounds %struct.td, %struct.td* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %43 = load i32, i32* @TD_DONE, align 4
  %44 = call i32 @cpu_to_hc32(%struct.ohci_hcd* %42, i32 %43)
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %49 = load %struct.td*, %struct.td** %4, align 8
  %50 = call i32 @ohci_dbg(%struct.ohci_hcd* %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.td* %49)
  br label %51

51:                                               ; preds = %47, %38
  br label %52

52:                                               ; preds = %51, %33
  %53 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %54 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.td*, %struct.td** %4, align 8
  %57 = load %struct.td*, %struct.td** %4, align 8
  %58 = getelementptr inbounds %struct.td, %struct.td* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dma_pool_free(i32 %55, %struct.td* %56, i32 %59)
  ret void
}

declare dso_local i64 @TD_HASH_FUNC(i32) #1

declare dso_local i32 @cpu_to_hc32(%struct.ohci_hcd*, i32) #1

declare dso_local i32 @ohci_dbg(%struct.ohci_hcd*, i8*, %struct.td*) #1

declare dso_local i32 @dma_pool_free(i32, %struct.td*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

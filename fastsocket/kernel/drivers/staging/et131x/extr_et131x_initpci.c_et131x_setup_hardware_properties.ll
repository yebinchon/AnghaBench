; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et131x_initpci.c_et131x_setup_hardware_properties.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et131x_initpci.c_et131x_setup_hardware_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i32*, i32* }

@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @et131x_setup_hardware_properties(%struct.et131x_adapter* %0) #0 {
  %2 = alloca %struct.et131x_adapter*, align 8
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %2, align 8
  %3 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %58

9:                                                ; preds = %1
  %10 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %58

16:                                               ; preds = %9
  %17 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %16
  %24 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %23
  %31 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %30
  %38 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 5
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %37
  %45 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 5
  %49 = call i32 @get_random_bytes(i32* %48, i32 1)
  %50 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %54 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* @ETH_ALEN, align 4
  %57 = call i32 @memcpy(i32* %52, i32* %55, i32 %56)
  br label %67

58:                                               ; preds = %37, %30, %23, %16, %9, %1
  %59 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %60 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* @ETH_ALEN, align 4
  %66 = call i32 @memcpy(i32* %61, i32* %64, i32 %65)
  br label %67

67:                                               ; preds = %58, %44
  ret void
}

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

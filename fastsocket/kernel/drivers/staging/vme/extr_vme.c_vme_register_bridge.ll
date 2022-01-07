; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/extr_vme.c_vme_register_bridge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/extr_vme.c_vme_register_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_bridge = type { i32, %struct.device*, i32 }
%struct.device = type { %struct.vme_bridge*, i32*, i32 }

@VME_SLOTS_MAX = common dso_local global i32 0, align 4
@vme_bus_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"vme-%x.%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vme_register_bridge(%struct.vme_bridge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vme_bridge*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vme_bridge* %0, %struct.vme_bridge** %3, align 8
  %7 = call i32 (...) @vme_alloc_bus_num()
  %8 = load %struct.vme_bridge*, %struct.vme_bridge** %3, align 8
  %9 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %46, %1
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @VME_SLOTS_MAX, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %10
  %15 = load %struct.vme_bridge*, %struct.vme_bridge** %3, align 8
  %16 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %15, i32 0, i32 1
  %17 = load %struct.device*, %struct.device** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.device, %struct.device* %17, i64 %19
  store %struct.device* %20, %struct.device** %4, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @memset(%struct.device* %21, i32 0, i32 24)
  %23 = load %struct.vme_bridge*, %struct.vme_bridge** %3, align 8
  %24 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 1
  store i32* @vme_bus_type, i32** %29, align 8
  %30 = load %struct.vme_bridge*, %struct.vme_bridge** %3, align 8
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 0
  store %struct.vme_bridge* %30, %struct.vme_bridge** %32, align 8
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load %struct.vme_bridge*, %struct.vme_bridge** %3, align 8
  %35 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  %39 = call i32 @dev_set_name(%struct.device* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %38)
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = call i32 @device_register(%struct.device* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %14
  br label %51

45:                                               ; preds = %14
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %10

49:                                               ; preds = %10
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %70

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %55, %51
  %53 = load i32, i32* %6, align 4
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load %struct.vme_bridge*, %struct.vme_bridge** %3, align 8
  %57 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %56, i32 0, i32 1
  %58 = load %struct.device*, %struct.device** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.device, %struct.device* %58, i64 %60
  store %struct.device* %61, %struct.device** %4, align 8
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i32 @device_unregister(%struct.device* %62)
  br label %52

64:                                               ; preds = %52
  %65 = load %struct.vme_bridge*, %struct.vme_bridge** %3, align 8
  %66 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @vme_free_bus_num(i32 %67)
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %64, %49
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @vme_alloc_bus_num(...) #1

declare dso_local i32 @memset(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @device_register(%struct.device*) #1

declare dso_local i32 @device_unregister(%struct.device*) #1

declare dso_local i32 @vme_free_bus_num(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

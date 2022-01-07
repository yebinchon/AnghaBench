; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_mpc8610_hpcd.c_mpc8610_hpcd_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_mpc8610_hpcd.c_mpc8610_hpcd_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_device = type { i32 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mpc8610_hpcd_data* }
%struct.mpc8610_hpcd_data = type { i64, i64*, i64*, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.of_device*)* @mpc8610_hpcd_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc8610_hpcd_remove(%struct.of_device* %0) #0 {
  %2 = alloca %struct.of_device*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mpc8610_hpcd_data*, align 8
  store %struct.of_device* %0, %struct.of_device** %2, align 8
  %5 = load %struct.of_device*, %struct.of_device** %2, align 8
  %6 = getelementptr inbounds %struct.of_device, %struct.of_device* %5, i32 0, i32 0
  %7 = call %struct.platform_device* @dev_get_drvdata(i32* %6)
  store %struct.platform_device* %7, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %10, align 8
  store %struct.mpc8610_hpcd_data* %11, %struct.mpc8610_hpcd_data** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = call i32 @platform_device_unregister(%struct.platform_device* %12)
  %14 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %4, align 8
  %15 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %4, align 8
  %21 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @fsl_ssi_destroy_dai(i64 %23)
  br label %25

25:                                               ; preds = %19, %1
  %26 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %4, align 8
  %27 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %4, align 8
  %32 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @iounmap(i64 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %4, align 8
  %37 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %36, i32 0, i32 2
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %4, align 8
  %44 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @iounmap(i64 %47)
  br label %49

49:                                               ; preds = %42, %35
  %50 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %4, align 8
  %51 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %4, align 8
  %58 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %57, i32 0, i32 2
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @iounmap(i64 %61)
  br label %63

63:                                               ; preds = %56, %49
  %64 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %4, align 8
  %65 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %4, align 8
  %72 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @irq_dispose_mapping(i64 %75)
  br label %77

77:                                               ; preds = %70, %63
  %78 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %4, align 8
  %79 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %4, align 8
  %86 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @irq_dispose_mapping(i64 %89)
  br label %91

91:                                               ; preds = %84, %77
  %92 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %4, align 8
  %93 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %4, align 8
  %98 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @iounmap(i64 %99)
  br label %101

101:                                              ; preds = %96, %91
  %102 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %4, align 8
  %103 = call i32 @kfree(%struct.mpc8610_hpcd_data* %102)
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store %struct.mpc8610_hpcd_data* null, %struct.mpc8610_hpcd_data** %106, align 8
  %107 = load %struct.of_device*, %struct.of_device** %2, align 8
  %108 = getelementptr inbounds %struct.of_device, %struct.of_device* %107, i32 0, i32 0
  %109 = call i32 @dev_set_drvdata(i32* %108, i32* null)
  ret i32 0
}

declare dso_local %struct.platform_device* @dev_get_drvdata(i32*) #1

declare dso_local i32 @platform_device_unregister(%struct.platform_device*) #1

declare dso_local i32 @fsl_ssi_destroy_dai(i64) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @irq_dispose_mapping(i64) #1

declare dso_local i32 @kfree(%struct.mpc8610_hpcd_data*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

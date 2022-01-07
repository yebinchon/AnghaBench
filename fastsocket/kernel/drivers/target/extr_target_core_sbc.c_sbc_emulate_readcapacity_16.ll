; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_sbc.c_sbc_emulate_readcapacity_16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_sbc.c_sbc_emulate_readcapacity_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, %struct.se_device* }
%struct.se_device = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.TYPE_3__ = type { i64 (%struct.se_device*)* }

@u32 = common dso_local global i32 0, align 4
@GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @sbc_emulate_readcapacity_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbc_emulate_readcapacity_16(%struct.se_cmd* %0) #0 {
  %2 = alloca %struct.se_cmd*, align 8
  %3 = alloca %struct.se_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca i64, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %2, align 8
  %7 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %8 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %7, i32 0, i32 1
  %9 = load %struct.se_device*, %struct.se_device** %8, align 8
  store %struct.se_device* %9, %struct.se_device** %3, align 8
  %10 = load %struct.se_device*, %struct.se_device** %3, align 8
  %11 = getelementptr inbounds %struct.se_device, %struct.se_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64 (%struct.se_device*)*, i64 (%struct.se_device*)** %13, align 8
  %15 = load %struct.se_device*, %struct.se_device** %3, align 8
  %16 = call i64 %14(%struct.se_device* %15)
  store i64 %16, i64* %6, align 8
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %18 = call i32 @memset(i8* %17, i32 0, i32 32)
  %19 = load i64, i64* %6, align 8
  %20 = lshr i64 %19, 56
  %21 = and i64 %20, 255
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  store i8 %22, i8* %23, align 16
  %24 = load i64, i64* %6, align 8
  %25 = lshr i64 %24, 48
  %26 = and i64 %25, 255
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 1
  store i8 %27, i8* %28, align 1
  %29 = load i64, i64* %6, align 8
  %30 = lshr i64 %29, 40
  %31 = and i64 %30, 255
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 2
  store i8 %32, i8* %33, align 2
  %34 = load i64, i64* %6, align 8
  %35 = lshr i64 %34, 32
  %36 = and i64 %35, 255
  %37 = trunc i64 %36 to i8
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 3
  store i8 %37, i8* %38, align 1
  %39 = load i64, i64* %6, align 8
  %40 = lshr i64 %39, 24
  %41 = and i64 %40, 255
  %42 = trunc i64 %41 to i8
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 4
  store i8 %42, i8* %43, align 4
  %44 = load i64, i64* %6, align 8
  %45 = lshr i64 %44, 16
  %46 = and i64 %45, 255
  %47 = trunc i64 %46 to i8
  %48 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 5
  store i8 %47, i8* %48, align 1
  %49 = load i64, i64* %6, align 8
  %50 = lshr i64 %49, 8
  %51 = and i64 %50, 255
  %52 = trunc i64 %51 to i8
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 6
  store i8 %52, i8* %53, align 2
  %54 = load i64, i64* %6, align 8
  %55 = and i64 %54, 255
  %56 = trunc i64 %55 to i8
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 7
  store i8 %56, i8* %57, align 1
  %58 = load %struct.se_device*, %struct.se_device** %3, align 8
  %59 = getelementptr inbounds %struct.se_device, %struct.se_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = ashr i32 %61, 24
  %63 = and i32 %62, 255
  %64 = trunc i32 %63 to i8
  %65 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 8
  store i8 %64, i8* %65, align 8
  %66 = load %struct.se_device*, %struct.se_device** %3, align 8
  %67 = getelementptr inbounds %struct.se_device, %struct.se_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = ashr i32 %69, 16
  %71 = and i32 %70, 255
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 9
  store i8 %72, i8* %73, align 1
  %74 = load %struct.se_device*, %struct.se_device** %3, align 8
  %75 = getelementptr inbounds %struct.se_device, %struct.se_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = ashr i32 %77, 8
  %79 = and i32 %78, 255
  %80 = trunc i32 %79 to i8
  %81 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 10
  store i8 %80, i8* %81, align 2
  %82 = load %struct.se_device*, %struct.se_device** %3, align 8
  %83 = getelementptr inbounds %struct.se_device, %struct.se_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, 255
  %87 = trunc i32 %86 to i8
  %88 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 11
  store i8 %87, i8* %88, align 1
  %89 = load %struct.se_device*, %struct.se_device** %3, align 8
  %90 = getelementptr inbounds %struct.se_device, %struct.se_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %1
  %95 = load %struct.se_device*, %struct.se_device** %3, align 8
  %96 = getelementptr inbounds %struct.se_device, %struct.se_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94, %1
  %101 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 14
  store i8 -128, i8* %101, align 2
  br label %102

102:                                              ; preds = %100, %94
  %103 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %104 = call i8* @transport_kmap_data_sg(%struct.se_cmd* %103)
  store i8* %104, i8** %4, align 8
  %105 = load i8*, i8** %4, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %118

107:                                              ; preds = %102
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %110 = load i32, i32* @u32, align 4
  %111 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %112 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @min_t(i32 %110, i32 32, i32 %113)
  %115 = call i32 @memcpy(i8* %108, i8* %109, i32 %114)
  %116 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %117 = call i32 @transport_kunmap_data_sg(%struct.se_cmd* %116)
  br label %118

118:                                              ; preds = %107, %102
  %119 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %120 = load i32, i32* @GOOD, align 4
  %121 = call i32 @target_complete_cmd(%struct.se_cmd* %119, i32 %120)
  ret i32 0
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @transport_kmap_data_sg(%struct.se_cmd*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @transport_kunmap_data_sg(%struct.se_cmd*) #1

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

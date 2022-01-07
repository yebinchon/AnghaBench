; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_core_scsi3_pri_report_capabilities.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_core_scsi3_pri_report_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, %struct.se_device* }
%struct.se_device = type { %struct.t10_reservation }
%struct.t10_reservation = type { i64 }

@.str = private unnamed_addr constant [60 x i8] c"PRIN SA REPORT_CAPABILITIES SCSI Data Length: %u too small\0A\00", align 1
@TCM_INVALID_CDB_FIELD = common dso_local global i32 0, align 4
@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @core_scsi3_pri_report_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_scsi3_pri_report_capabilities(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.se_device*, align 8
  %5 = alloca %struct.t10_reservation*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %8 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %8, i32 0, i32 1
  %10 = load %struct.se_device*, %struct.se_device** %9, align 8
  store %struct.se_device* %10, %struct.se_device** %4, align 8
  %11 = load %struct.se_device*, %struct.se_device** %4, align 8
  %12 = getelementptr inbounds %struct.se_device, %struct.se_device* %11, i32 0, i32 0
  store %struct.t10_reservation* %12, %struct.t10_reservation** %5, align 8
  store i32 8, i32* %7, align 4
  %13 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 6
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %19 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @TCM_INVALID_CDB_FIELD, align 4
  store i32 %22, i32* %2, align 4
  br label %128

23:                                               ; preds = %1
  %24 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %25 = call i8* @transport_kmap_data_sg(%struct.se_cmd* %24)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %29, i32* %2, align 4
  br label %128

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 %31, 8
  %33 = and i32 %32, 255
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  store i8 %34, i8* %36, align 1
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 255
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  store i8 %39, i8* %41, align 1
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = or i32 %45, 16
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %43, align 1
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %51, 8
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %49, align 1
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = or i32 %57, 4
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %55, align 1
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = or i32 %63, 1
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %61, align 1
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 3
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = or i32 %69, 128
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %67, align 1
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 3
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = or i32 %75, 16
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %73, align 1
  %78 = load %struct.t10_reservation*, %struct.t10_reservation** %5, align 8
  %79 = getelementptr inbounds %struct.t10_reservation, %struct.t10_reservation* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %30
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 3
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = or i32 %86, 1
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %84, align 1
  br label %89

89:                                               ; preds = %82, %30
  %90 = load i8*, i8** %6, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 4
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = or i32 %93, 128
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %91, align 1
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 4
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = or i32 %99, 64
  %101 = trunc i32 %100 to i8
  store i8 %101, i8* %97, align 1
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 4
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = or i32 %105, 32
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %103, align 1
  %108 = load i8*, i8** %6, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 4
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = or i32 %111, 8
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %109, align 1
  %114 = load i8*, i8** %6, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 4
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = or i32 %117, 2
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %115, align 1
  %120 = load i8*, i8** %6, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 5
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = or i32 %123, 1
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %121, align 1
  %126 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %127 = call i32 @transport_kunmap_data_sg(%struct.se_cmd* %126)
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %89, %28, %17
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i8* @transport_kmap_data_sg(%struct.se_cmd*) #1

declare dso_local i32 @transport_kunmap_data_sg(%struct.se_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

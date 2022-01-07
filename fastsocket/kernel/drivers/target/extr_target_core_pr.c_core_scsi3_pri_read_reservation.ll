; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_core_scsi3_pri_read_reservation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_core_scsi3_pri_read_reservation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, %struct.se_device* }
%struct.se_device = type { i32, %struct.t10_pr_registration*, %struct.TYPE_2__ }
%struct.t10_pr_registration = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"PRIN SA READ_RESERVATIONS SCSI Data Length: %u too small\0A\00", align 1
@TCM_INVALID_CDB_FIELD = common dso_local global i32 0, align 4
@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i32 0, align 4
@PR_TYPE_WRITE_EXCLUSIVE_ALLREG = common dso_local global i32 0, align 4
@PR_TYPE_EXCLUSIVE_ACCESS_ALLREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @core_scsi3_pri_read_reservation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_scsi3_pri_read_reservation(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.se_device*, align 8
  %5 = alloca %struct.t10_pr_registration*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %9 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %10 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %9, i32 0, i32 1
  %11 = load %struct.se_device*, %struct.se_device** %10, align 8
  store %struct.se_device* %11, %struct.se_device** %4, align 8
  store i32 16, i32* %8, align 4
  %12 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %18 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @TCM_INVALID_CDB_FIELD, align 4
  store i32 %21, i32* %2, align 4
  br label %186

22:                                               ; preds = %1
  %23 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %24 = call i8* @transport_kmap_data_sg(%struct.se_cmd* %23)
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %28, i32* %2, align 4
  br label %186

29:                                               ; preds = %22
  %30 = load %struct.se_device*, %struct.se_device** %4, align 8
  %31 = getelementptr inbounds %struct.se_device, %struct.se_device* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = ashr i32 %33, 24
  %35 = and i32 %34, 255
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 %36, i8* %38, align 1
  %39 = load %struct.se_device*, %struct.se_device** %4, align 8
  %40 = getelementptr inbounds %struct.se_device, %struct.se_device* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = ashr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8 %45, i8* %47, align 1
  %48 = load %struct.se_device*, %struct.se_device** %4, align 8
  %49 = getelementptr inbounds %struct.se_device, %struct.se_device* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = ashr i32 %51, 8
  %53 = and i32 %52, 255
  %54 = trunc i32 %53 to i8
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  store i8 %54, i8* %56, align 1
  %57 = load %struct.se_device*, %struct.se_device** %4, align 8
  %58 = getelementptr inbounds %struct.se_device, %struct.se_device* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 255
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  store i8 %62, i8* %64, align 1
  %65 = load %struct.se_device*, %struct.se_device** %4, align 8
  %66 = getelementptr inbounds %struct.se_device, %struct.se_device* %65, i32 0, i32 0
  %67 = call i32 @spin_lock(i32* %66)
  %68 = load %struct.se_device*, %struct.se_device** %4, align 8
  %69 = getelementptr inbounds %struct.se_device, %struct.se_device* %68, i32 0, i32 1
  %70 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %69, align 8
  store %struct.t10_pr_registration* %70, %struct.t10_pr_registration** %5, align 8
  %71 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %5, align 8
  %72 = icmp ne %struct.t10_pr_registration* %71, null
  br i1 %72, label %73, label %179

73:                                               ; preds = %29
  %74 = load i32, i32* %8, align 4
  %75 = ashr i32 %74, 24
  %76 = and i32 %75, 255
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 4
  store i8 %77, i8* %79, align 1
  %80 = load i32, i32* %8, align 4
  %81 = ashr i32 %80, 16
  %82 = and i32 %81, 255
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %6, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 5
  store i8 %83, i8* %85, align 1
  %86 = load i32, i32* %8, align 4
  %87 = ashr i32 %86, 8
  %88 = and i32 %87, 255
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %6, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 6
  store i8 %89, i8* %91, align 1
  %92 = load i32, i32* %8, align 4
  %93 = and i32 %92, 255
  %94 = trunc i32 %93 to i8
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 7
  store i8 %94, i8* %96, align 1
  %97 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %98 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %99, 22
  br i1 %100, label %101, label %102

101:                                              ; preds = %73
  br label %180

102:                                              ; preds = %73
  %103 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %5, align 8
  %104 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @PR_TYPE_WRITE_EXCLUSIVE_ALLREG, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %114, label %108

108:                                              ; preds = %102
  %109 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %5, align 8
  %110 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @PR_TYPE_EXCLUSIVE_ACCESS_ALLREG, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108, %102
  store i32 0, i32* %7, align 4
  br label %119

115:                                              ; preds = %108
  %116 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %5, align 8
  %117 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %115, %114
  %120 = load i32, i32* %7, align 4
  %121 = ashr i32 %120, 56
  %122 = and i32 %121, 255
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %6, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 8
  store i8 %123, i8* %125, align 1
  %126 = load i32, i32* %7, align 4
  %127 = ashr i32 %126, 48
  %128 = and i32 %127, 255
  %129 = trunc i32 %128 to i8
  %130 = load i8*, i8** %6, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 9
  store i8 %129, i8* %131, align 1
  %132 = load i32, i32* %7, align 4
  %133 = ashr i32 %132, 40
  %134 = and i32 %133, 255
  %135 = trunc i32 %134 to i8
  %136 = load i8*, i8** %6, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 10
  store i8 %135, i8* %137, align 1
  %138 = load i32, i32* %7, align 4
  %139 = ashr i32 %138, 32
  %140 = and i32 %139, 255
  %141 = trunc i32 %140 to i8
  %142 = load i8*, i8** %6, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 11
  store i8 %141, i8* %143, align 1
  %144 = load i32, i32* %7, align 4
  %145 = ashr i32 %144, 24
  %146 = and i32 %145, 255
  %147 = trunc i32 %146 to i8
  %148 = load i8*, i8** %6, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 12
  store i8 %147, i8* %149, align 1
  %150 = load i32, i32* %7, align 4
  %151 = ashr i32 %150, 16
  %152 = and i32 %151, 255
  %153 = trunc i32 %152 to i8
  %154 = load i8*, i8** %6, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 13
  store i8 %153, i8* %155, align 1
  %156 = load i32, i32* %7, align 4
  %157 = ashr i32 %156, 8
  %158 = and i32 %157, 255
  %159 = trunc i32 %158 to i8
  %160 = load i8*, i8** %6, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 14
  store i8 %159, i8* %161, align 1
  %162 = load i32, i32* %7, align 4
  %163 = and i32 %162, 255
  %164 = trunc i32 %163 to i8
  %165 = load i8*, i8** %6, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 15
  store i8 %164, i8* %166, align 1
  %167 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %5, align 8
  %168 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, 240
  %171 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %5, align 8
  %172 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, 15
  %175 = or i32 %170, %174
  %176 = trunc i32 %175 to i8
  %177 = load i8*, i8** %6, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 21
  store i8 %176, i8* %178, align 1
  br label %179

179:                                              ; preds = %119, %29
  br label %180

180:                                              ; preds = %179, %101
  %181 = load %struct.se_device*, %struct.se_device** %4, align 8
  %182 = getelementptr inbounds %struct.se_device, %struct.se_device* %181, i32 0, i32 0
  %183 = call i32 @spin_unlock(i32* %182)
  %184 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %185 = call i32 @transport_kunmap_data_sg(%struct.se_cmd* %184)
  store i32 0, i32* %2, align 4
  br label %186

186:                                              ; preds = %180, %27, %16
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i8* @transport_kmap_data_sg(%struct.se_cmd*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @transport_kunmap_data_sg(%struct.se_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

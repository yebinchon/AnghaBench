; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pscsi.c_pscsi_show_configfs_dev_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pscsi.c_pscsi_show_configfs_dev_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pscsi_hba_virt* }
%struct.pscsi_hba_virt = type { i64 }
%struct.pscsi_dev_virt = type { i32, i32, i32, i32, %struct.scsi_device* }
%struct.scsi_device = type { i32*, i32*, i32* }

@PHV_VIRTUAL_HOST_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"PHBA Mode\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"SCSI Device Bus Location: Channel ID: %d Target ID: %d LUN: %d Host ID: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Vendor: \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c" Model: \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c" Rev: \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*, i8*)* @pscsi_show_configfs_dev_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pscsi_show_configfs_dev_params(%struct.se_device* %0, i8* %1) #0 {
  %3 = alloca %struct.se_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pscsi_hba_virt*, align 8
  %6 = alloca %struct.pscsi_dev_virt*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca [16 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.se_device*, %struct.se_device** %3, align 8
  %12 = getelementptr inbounds %struct.se_device, %struct.se_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.pscsi_hba_virt*, %struct.pscsi_hba_virt** %14, align 8
  store %struct.pscsi_hba_virt* %15, %struct.pscsi_hba_virt** %5, align 8
  %16 = load %struct.se_device*, %struct.se_device** %3, align 8
  %17 = call %struct.pscsi_dev_virt* @PSCSI_DEV(%struct.se_device* %16)
  store %struct.pscsi_dev_virt* %17, %struct.pscsi_dev_virt** %6, align 8
  %18 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %6, align 8
  %19 = getelementptr inbounds %struct.pscsi_dev_virt, %struct.pscsi_dev_virt* %18, i32 0, i32 4
  %20 = load %struct.scsi_device*, %struct.scsi_device** %19, align 8
  store %struct.scsi_device* %20, %struct.scsi_device** %7, align 8
  %21 = load %struct.pscsi_hba_virt*, %struct.pscsi_hba_virt** %5, align 8
  %22 = getelementptr inbounds %struct.pscsi_hba_virt, %struct.pscsi_hba_virt* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PHV_VIRTUAL_HOST_ID, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %28 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %6, align 8
  %29 = getelementptr inbounds %struct.pscsi_dev_virt, %struct.pscsi_dev_virt* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %27, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %35

32:                                               ; preds = %2
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %34 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %33, i32 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %26
  %36 = load i8*, i8** %4, align 8
  %37 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %6, align 8
  %38 = getelementptr inbounds %struct.pscsi_dev_virt, %struct.pscsi_dev_virt* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %6, align 8
  %41 = getelementptr inbounds %struct.pscsi_dev_virt, %struct.pscsi_dev_virt* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %6, align 8
  %44 = getelementptr inbounds %struct.pscsi_dev_virt, %struct.pscsi_dev_virt* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %47 = call i32 (i8*, i8*, ...) @sprintf(i8* %36, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32 %42, i32 %45, i8* %46)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %49 = icmp ne %struct.scsi_device* %48, null
  br i1 %49, label %50, label %209

50:                                               ; preds = %35
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = call i32 (i8*, i8*, ...) @sprintf(i8* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %9, align 4
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = call i32 (i8*, i8*, ...) @sprintf(i8* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %102, %50
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 8
  br i1 %67, label %68, label %105

68:                                               ; preds = %65
  %69 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %70 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @ISPRINT(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %68
  %79 = load i8*, i8** %4, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %84 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i8*, i8*, ...) @sprintf(i8* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %9, align 4
  br label %101

93:                                               ; preds = %68
  %94 = load i8*, i8** %4, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = call i32 (i8*, i8*, ...) @sprintf(i8* %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %93, %78
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %65

105:                                              ; preds = %65
  %106 = load i8*, i8** %4, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = call i32 (i8*, i8*, ...) @sprintf(i8* %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %113

113:                                              ; preds = %150, %105
  %114 = load i32, i32* %10, align 4
  %115 = icmp slt i32 %114, 16
  br i1 %115, label %116, label %153

116:                                              ; preds = %113
  %117 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %118 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @ISPRINT(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %116
  %127 = load i8*, i8** %4, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %132 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i8*, i8*, ...) @sprintf(i8* %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %9, align 4
  br label %149

141:                                              ; preds = %116
  %142 = load i8*, i8** %4, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = call i32 (i8*, i8*, ...) @sprintf(i8* %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %9, align 4
  br label %149

149:                                              ; preds = %141, %126
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %10, align 4
  br label %113

153:                                              ; preds = %113
  %154 = load i8*, i8** %4, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = call i32 (i8*, i8*, ...) @sprintf(i8* %157, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %161

161:                                              ; preds = %198, %153
  %162 = load i32, i32* %10, align 4
  %163 = icmp slt i32 %162, 4
  br i1 %163, label %164, label %201

164:                                              ; preds = %161
  %165 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %166 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @ISPRINT(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %189

174:                                              ; preds = %164
  %175 = load i8*, i8** %4, align 8
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %180 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = call i32 (i8*, i8*, ...) @sprintf(i8* %178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %185)
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %187, %186
  store i32 %188, i32* %9, align 4
  br label %197

189:                                              ; preds = %164
  %190 = load i8*, i8** %4, align 8
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = call i32 (i8*, i8*, ...) @sprintf(i8* %193, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %195 = load i32, i32* %9, align 4
  %196 = add nsw i32 %195, %194
  store i32 %196, i32* %9, align 4
  br label %197

197:                                              ; preds = %189, %174
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %10, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %10, align 4
  br label %161

201:                                              ; preds = %161
  %202 = load i8*, i8** %4, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  %206 = call i32 (i8*, i8*, ...) @sprintf(i8* %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %9, align 4
  br label %209

209:                                              ; preds = %201, %35
  %210 = load i32, i32* %9, align 4
  ret i32 %210
}

declare dso_local %struct.pscsi_dev_virt* @PSCSI_DEV(%struct.se_device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @ISPRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

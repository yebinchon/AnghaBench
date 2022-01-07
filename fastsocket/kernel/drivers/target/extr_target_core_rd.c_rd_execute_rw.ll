; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_rd.c_rd_execute_rw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_rd.c_rd_execute_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i64, i32, i64, i64, %struct.se_device*, %struct.scatterlist* }
%struct.se_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.scatterlist = type { i32 }
%struct.rd_dev = type { i32 }
%struct.rd_dev_sg_table = type { i64, i64, %struct.scatterlist* }
%struct.sg_mapping_iter = type { i8*, i64, i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"RD[%u]: %s LBA: %llu, Size: %u Page: %u, Offset: %u\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Write\00", align 1
@SG_MITER_TO_SG = common dso_local global i32 0, align 4
@SG_MITER_FROM_SG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"RD[%u]: invalid sgl %p len %zu\0A\00", align 1
@TCM_INCORRECT_AMOUNT_OF_DATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"RD[%u]: size underrun page %d offset %d size %d\0A\00", align 1
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @rd_execute_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rd_execute_rw(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.se_device*, align 8
  %8 = alloca %struct.rd_dev*, align 8
  %9 = alloca %struct.rd_dev_sg_table*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca %struct.sg_mapping_iter, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %19 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %20 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %19, i32 0, i32 5
  %21 = load %struct.scatterlist*, %struct.scatterlist** %20, align 8
  store %struct.scatterlist* %21, %struct.scatterlist** %4, align 8
  %22 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %23 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %5, align 8
  %25 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %26 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %6, align 4
  %28 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %29 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %28, i32 0, i32 4
  %30 = load %struct.se_device*, %struct.se_device** %29, align 8
  store %struct.se_device* %30, %struct.se_device** %7, align 8
  %31 = load %struct.se_device*, %struct.se_device** %7, align 8
  %32 = call %struct.rd_dev* @RD_DEV(%struct.se_device* %31)
  store %struct.rd_dev* %32, %struct.rd_dev** %8, align 8
  %33 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %34 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.se_device*, %struct.se_device** %7, align 8
  %37 = getelementptr inbounds %struct.se_device, %struct.se_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = mul i64 %35, %39
  store i64 %40, i64* %16, align 8
  %41 = load i64, i64* %16, align 8
  %42 = load i64, i64* @PAGE_SIZE, align 8
  %43 = call i64 @do_div(i64 %41, i64 %42)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %16, align 8
  store i64 %44, i64* %14, align 8
  %45 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %46 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %13, align 8
  %48 = load %struct.rd_dev*, %struct.rd_dev** %8, align 8
  %49 = load i64, i64* %14, align 8
  %50 = call %struct.rd_dev_sg_table* @rd_get_sg_table(%struct.rd_dev* %48, i64 %49)
  store %struct.rd_dev_sg_table* %50, %struct.rd_dev_sg_table** %9, align 8
  %51 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %9, align 8
  %52 = icmp ne %struct.rd_dev_sg_table* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %1
  %54 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %54, i32* %2, align 4
  br label %200

55:                                               ; preds = %1
  %56 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %9, align 8
  %57 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %56, i32 0, i32 2
  %58 = load %struct.scatterlist*, %struct.scatterlist** %57, align 8
  %59 = load i64, i64* %14, align 8
  %60 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %9, align 8
  %61 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub i64 %59, %62
  %64 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %58, i64 %63
  store %struct.scatterlist* %64, %struct.scatterlist** %10, align 8
  %65 = load %struct.rd_dev*, %struct.rd_dev** %8, align 8
  %66 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %73 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %74 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* %12, align 8
  %79 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %67, i8* %72, i64 %75, i64 %76, i64 %77, i64 %78)
  %80 = load i64, i64* @PAGE_SIZE, align 8
  %81 = load i64, i64* %12, align 8
  %82 = sub i64 %80, %81
  store i64 %82, i64* %15, align 8
  %83 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %84 = load i64, i64* %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %55
  %89 = load i32, i32* @SG_MITER_TO_SG, align 4
  br label %92

90:                                               ; preds = %55
  %91 = load i32, i32* @SG_MITER_FROM_SG, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = call i32 @sg_miter_start(%struct.sg_mapping_iter* %11, %struct.scatterlist* %83, i64 %84, i32 %93)
  br label %95

95:                                               ; preds = %191, %179, %166, %159, %92
  %96 = load i64, i64* %13, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %195

98:                                               ; preds = %95
  %99 = call i32 @sg_miter_next(%struct.sg_mapping_iter* %11)
  %100 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %11, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %114, label %103

103:                                              ; preds = %98
  %104 = load %struct.rd_dev*, %struct.rd_dev** %8, align 8
  %105 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %11, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %11, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %106, i8* %108, i64 %110)
  %112 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %11)
  %113 = load i32, i32* @TCM_INCORRECT_AMOUNT_OF_DATA, align 4
  store i32 %113, i32* %2, align 4
  br label %200

114:                                              ; preds = %98
  %115 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %11, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %15, align 8
  %118 = call i64 @min(i64 %116, i64 %117)
  store i64 %118, i64* %17, align 8
  %119 = load i64, i64* %17, align 8
  %120 = load i64, i64* %13, align 8
  %121 = icmp ugt i64 %119, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %114
  %123 = load %struct.rd_dev*, %struct.rd_dev** %8, align 8
  %124 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i64, i64* %14, align 8
  %127 = load i64, i64* %12, align 8
  %128 = load i64, i64* %13, align 8
  %129 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %125, i64 %126, i64 %127, i64 %128)
  %130 = load i64, i64* %13, align 8
  store i64 %130, i64* %17, align 8
  br label %131

131:                                              ; preds = %122, %114
  %132 = load i64, i64* %17, align 8
  %133 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %11, i32 0, i32 1
  store i64 %132, i64* %133, align 8
  %134 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %135 = call i8* @sg_virt(%struct.scatterlist* %134)
  %136 = load i64, i64* %12, align 8
  %137 = getelementptr i8, i8* %135, i64 %136
  store i8* %137, i8** %18, align 8
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %131
  %142 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %11, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = load i8*, i8** %18, align 8
  %145 = load i64, i64* %17, align 8
  %146 = call i32 @memcpy(i8* %143, i8* %144, i64 %145)
  br label %153

147:                                              ; preds = %131
  %148 = load i8*, i8** %18, align 8
  %149 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %11, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load i64, i64* %17, align 8
  %152 = call i32 @memcpy(i8* %148, i8* %150, i64 %151)
  br label %153

153:                                              ; preds = %147, %141
  %154 = load i64, i64* %17, align 8
  %155 = load i64, i64* %13, align 8
  %156 = sub i64 %155, %154
  store i64 %156, i64* %13, align 8
  %157 = load i64, i64* %13, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %153
  br label %95

160:                                              ; preds = %153
  %161 = load i64, i64* %17, align 8
  %162 = load i64, i64* %15, align 8
  %163 = sub i64 %162, %161
  store i64 %163, i64* %15, align 8
  %164 = load i64, i64* %15, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %160
  %167 = load i64, i64* %17, align 8
  %168 = load i64, i64* %12, align 8
  %169 = add i64 %168, %167
  store i64 %169, i64* %12, align 8
  br label %95

170:                                              ; preds = %160
  %171 = load i64, i64* %14, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %14, align 8
  store i64 0, i64* %12, align 8
  %173 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %173, i64* %15, align 8
  %174 = load i64, i64* %14, align 8
  %175 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %9, align 8
  %176 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp ule i64 %174, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %170
  %180 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %181 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %180, i32 1
  store %struct.scatterlist* %181, %struct.scatterlist** %10, align 8
  br label %95

182:                                              ; preds = %170
  %183 = load %struct.rd_dev*, %struct.rd_dev** %8, align 8
  %184 = load i64, i64* %14, align 8
  %185 = call %struct.rd_dev_sg_table* @rd_get_sg_table(%struct.rd_dev* %183, i64 %184)
  store %struct.rd_dev_sg_table* %185, %struct.rd_dev_sg_table** %9, align 8
  %186 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %9, align 8
  %187 = icmp ne %struct.rd_dev_sg_table* %186, null
  br i1 %187, label %191, label %188

188:                                              ; preds = %182
  %189 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %11)
  %190 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %190, i32* %2, align 4
  br label %200

191:                                              ; preds = %182
  %192 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %9, align 8
  %193 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %192, i32 0, i32 2
  %194 = load %struct.scatterlist*, %struct.scatterlist** %193, align 8
  store %struct.scatterlist* %194, %struct.scatterlist** %10, align 8
  br label %95

195:                                              ; preds = %95
  %196 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %11)
  %197 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %198 = load i32, i32* @SAM_STAT_GOOD, align 4
  %199 = call i32 @target_complete_cmd(%struct.se_cmd* %197, i32 %198)
  store i32 0, i32* %2, align 4
  br label %200

200:                                              ; preds = %195, %188, %103, %53
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

declare dso_local %struct.rd_dev* @RD_DEV(%struct.se_device*) #1

declare dso_local i64 @do_div(i64, i64) #1

declare dso_local %struct.rd_dev_sg_table* @rd_get_sg_table(%struct.rd_dev*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @sg_miter_start(%struct.sg_mapping_iter*, %struct.scatterlist*, i64, i32) #1

declare dso_local i32 @sg_miter_next(%struct.sg_mapping_iter*) #1

declare dso_local i32 @sg_miter_stop(%struct.sg_mapping_iter*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i8* @sg_virt(%struct.scatterlist*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

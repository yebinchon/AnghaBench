; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_axi_output_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_axi_output_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_31__, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_28__ }
%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_36__, %struct.TYPE_35__, i8*, i8*, i32*, i8*, i8* }
%struct.TYPE_36__ = type { i32, i8*, i32* }
%struct.TYPE_35__ = type { i32, i8*, i32* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__, %struct.TYPE_23__, i64, i8*, i8*, i32*, i8*, i8* }
%struct.TYPE_24__ = type { i32, i8*, i32* }
%struct.TYPE_23__ = type { i32, i8*, i32* }
%struct.TYPE_31__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_30__ = type { i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_29__ = type { i8*, i8* }
%struct.TYPE_28__ = type { i8*, i8* }
%struct.vfe_cmd_axi_output_config = type { i32, i32, %struct.TYPE_22__, %struct.TYPE_34__ }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32** }
%struct.TYPE_20__ = type { i32** }
%struct.TYPE_34__ = type { i32, %struct.TYPE_33__, %struct.TYPE_32__ }
%struct.TYPE_33__ = type { i32** }
%struct.TYPE_32__ = type { i32** }

@ctrl = common dso_local global %struct.TYPE_27__* null, align 8
@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"axiOutputMode = %d\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@VFE_RAW_OUTPUT_DISABLED = common dso_local global i8* null, align 8
@VFE_COMP_IRQ_BOTH_Y_CBCR = common dso_local global i8* null, align 8
@VFE_RAW_OUTPUT_ENC_CBCR_PATH = common dso_local global i8* null, align 8
@VFE_COMP_IRQ_CBCR_ONLY = common dso_local global i8* null, align 8
@VFE_RAW_OUTPUT_VIEW_CBCR_PATH = common dso_local global i8* null, align 8
@ping = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfe_axi_output_config(%struct.vfe_cmd_axi_output_config* %0) #0 {
  %2 = alloca %struct.vfe_cmd_axi_output_config*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vfe_cmd_axi_output_config* %0, %struct.vfe_cmd_axi_output_config** %2, align 8
  store i32 8, i32* %8, align 4
  %9 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %2, align 8
  %10 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %14 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 8
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %17 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load i8*, i8** @TRUE, align 8
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 7
  store i8* %22, i8** %25, align 8
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %2, align 8
  %28 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %44

39:                                               ; preds = %26
  %40 = load i8*, i8** @TRUE, align 8
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 7
  store i8* %40, i8** %43, align 8
  br label %44

44:                                               ; preds = %39, %26
  %45 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %2, align 8
  %46 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %2, align 8
  %52 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %57 [
    i32 128, label %54
    i32 130, label %55
    i32 129, label %56
  ]

54:                                               ; preds = %44
  store i32 8, i32* %8, align 4
  br label %57

55:                                               ; preds = %44
  store i32 6, i32* %8, align 4
  br label %57

56:                                               ; preds = %44
  store i32 5, i32* %8, align 4
  br label %57

57:                                               ; preds = %44, %56, %55, %54
  %58 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %2, align 8
  %59 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @CDBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %826 [
    i32 135, label %70
    i32 132, label %191
    i32 133, label %312
    i32 136, label %433
    i32 131, label %583
    i32 134, label %704
    i32 137, label %825
  ]

70:                                               ; preds = %57
  %71 = load i8*, i8** @FALSE, align 8
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 1
  store i8* %71, i8** %74, align 8
  %75 = load i8*, i8** @TRUE, align 8
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %77, i32 0, i32 0
  store i8* %75, i8** %78, align 8
  %79 = load i8*, i8** @VFE_RAW_OUTPUT_DISABLED, align 8
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %81, i32 0, i32 5
  store i8* %79, i8** %82, align 8
  %83 = load i8*, i8** @FALSE, align 8
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %85 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i32 0, i32 8
  store i8* %83, i8** %86, align 8
  %87 = load i8*, i8** @FALSE, align 8
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %89 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %89, i32 0, i32 5
  store i8* %87, i8** %90, align 8
  %91 = load i8*, i8** @VFE_COMP_IRQ_BOTH_Y_CBCR, align 8
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %93, i32 0, i32 1
  store i8* %91, i8** %94, align 8
  %95 = load i8*, i8** @FALSE, align 8
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %97, i32 0, i32 4
  store i8* %95, i8** %98, align 8
  %99 = load i8*, i8** @FALSE, align 8
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %101, i32 0, i32 3
  store i8* %99, i8** %102, align 8
  %103 = load i8*, i8** @TRUE, align 8
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 8
  store i8* %103, i8** %106, align 8
  %107 = load i8*, i8** @TRUE, align 8
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %109, i32 0, i32 4
  store i8* %107, i8** %110, align 8
  %111 = load i8*, i8** @VFE_COMP_IRQ_BOTH_Y_CBCR, align 8
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %113, i32 0, i32 0
  store i8* %111, i8** %114, align 8
  %115 = load i8*, i8** @TRUE, align 8
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %117, i32 0, i32 2
  store i8* %115, i8** %118, align 8
  %119 = load i8*, i8** @TRUE, align 8
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %121, i32 0, i32 1
  store i8* %119, i8** %122, align 8
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %124, i32 0, i32 4
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %139

128:                                              ; preds = %70
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 7
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %139

134:                                              ; preds = %128
  %135 = load i8*, i8** @TRUE, align 8
  %136 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %137 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %137, i32 0, i32 3
  store i8* %135, i8** %138, align 8
  br label %139

139:                                              ; preds = %134, %128, %70
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %141, i32 0, i32 3
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %156

145:                                              ; preds = %139
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %147 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 7
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %145
  %152 = load i8*, i8** @TRUE, align 8
  %153 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %154 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %154, i32 0, i32 2
  store i8* %152, i8** %155, align 8
  br label %156

156:                                              ; preds = %151, %145, %139
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %158, i32 0, i32 2
  %160 = load i8*, i8** %159, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %173

162:                                              ; preds = %156
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 7
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %173

168:                                              ; preds = %162
  %169 = load i8*, i8** @TRUE, align 8
  %170 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %171 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %171, i32 0, i32 1
  store i8* %169, i8** %172, align 8
  br label %173

173:                                              ; preds = %168, %162, %156
  %174 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %175 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %190

179:                                              ; preds = %173
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %181 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 7
  %183 = load i8*, i8** %182, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %190

185:                                              ; preds = %179
  %186 = load i8*, i8** @TRUE, align 8
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %188, i32 0, i32 0
  store i8* %186, i8** %189, align 8
  br label %190

190:                                              ; preds = %185, %179, %173
  br label %826

191:                                              ; preds = %57
  %192 = load i8*, i8** @FALSE, align 8
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 6
  %195 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %194, i32 0, i32 1
  store i8* %192, i8** %195, align 8
  %196 = load i8*, i8** @TRUE, align 8
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %198 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %197, i32 0, i32 6
  %199 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %198, i32 0, i32 0
  store i8* %196, i8** %199, align 8
  %200 = load i8*, i8** @VFE_RAW_OUTPUT_DISABLED, align 8
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %202 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %202, i32 0, i32 5
  store i8* %200, i8** %203, align 8
  %204 = load i8*, i8** @TRUE, align 8
  %205 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %206 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 8
  store i8* %204, i8** %207, align 8
  %208 = load i8*, i8** @TRUE, align 8
  %209 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %210 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %210, i32 0, i32 5
  store i8* %208, i8** %211, align 8
  %212 = load i8*, i8** @VFE_COMP_IRQ_BOTH_Y_CBCR, align 8
  %213 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %214 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %213, i32 0, i32 5
  %215 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %214, i32 0, i32 1
  store i8* %212, i8** %215, align 8
  %216 = load i8*, i8** @TRUE, align 8
  %217 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %218 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %218, i32 0, i32 4
  store i8* %216, i8** %219, align 8
  %220 = load i8*, i8** @TRUE, align 8
  %221 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %222 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %221, i32 0, i32 4
  %223 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %222, i32 0, i32 3
  store i8* %220, i8** %223, align 8
  %224 = load i8*, i8** @FALSE, align 8
  %225 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %226 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 8
  store i8* %224, i8** %227, align 8
  %228 = load i8*, i8** @FALSE, align 8
  %229 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %230 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %229, i32 0, i32 3
  %231 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %230, i32 0, i32 4
  store i8* %228, i8** %231, align 8
  %232 = load i8*, i8** @VFE_COMP_IRQ_BOTH_Y_CBCR, align 8
  %233 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %234 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %233, i32 0, i32 5
  %235 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %234, i32 0, i32 0
  store i8* %232, i8** %235, align 8
  %236 = load i8*, i8** @FALSE, align 8
  %237 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %238 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %237, i32 0, i32 4
  %239 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %238, i32 0, i32 2
  store i8* %236, i8** %239, align 8
  %240 = load i8*, i8** @FALSE, align 8
  %241 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %242 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %241, i32 0, i32 4
  %243 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %242, i32 0, i32 1
  store i8* %240, i8** %243, align 8
  %244 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %245 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %244, i32 0, i32 4
  %246 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %245, i32 0, i32 4
  %247 = load i8*, i8** %246, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %249, label %260

249:                                              ; preds = %191
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %251 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %251, i32 0, i32 7
  %253 = load i8*, i8** %252, align 8
  %254 = icmp ne i8* %253, null
  br i1 %254, label %255, label %260

255:                                              ; preds = %249
  %256 = load i8*, i8** @TRUE, align 8
  %257 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %258 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %257, i32 0, i32 3
  %259 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %258, i32 0, i32 3
  store i8* %256, i8** %259, align 8
  br label %260

260:                                              ; preds = %255, %249, %191
  %261 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %262 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %261, i32 0, i32 4
  %263 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %262, i32 0, i32 3
  %264 = load i8*, i8** %263, align 8
  %265 = icmp ne i8* %264, null
  br i1 %265, label %266, label %277

266:                                              ; preds = %260
  %267 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %268 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %268, i32 0, i32 7
  %270 = load i8*, i8** %269, align 8
  %271 = icmp ne i8* %270, null
  br i1 %271, label %272, label %277

272:                                              ; preds = %266
  %273 = load i8*, i8** @TRUE, align 8
  %274 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %275 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %274, i32 0, i32 3
  %276 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %275, i32 0, i32 2
  store i8* %273, i8** %276, align 8
  br label %277

277:                                              ; preds = %272, %266, %260
  %278 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %279 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %278, i32 0, i32 4
  %280 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %279, i32 0, i32 2
  %281 = load i8*, i8** %280, align 8
  %282 = icmp ne i8* %281, null
  br i1 %282, label %283, label %294

283:                                              ; preds = %277
  %284 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %285 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %285, i32 0, i32 7
  %287 = load i8*, i8** %286, align 8
  %288 = icmp ne i8* %287, null
  br i1 %288, label %289, label %294

289:                                              ; preds = %283
  %290 = load i8*, i8** @TRUE, align 8
  %291 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %292 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %292, i32 0, i32 1
  store i8* %290, i8** %293, align 8
  br label %294

294:                                              ; preds = %289, %283, %277
  %295 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %296 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %295, i32 0, i32 4
  %297 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %296, i32 0, i32 1
  %298 = load i8*, i8** %297, align 8
  %299 = icmp ne i8* %298, null
  br i1 %299, label %300, label %311

300:                                              ; preds = %294
  %301 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %302 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %301, i32 0, i32 2
  %303 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %302, i32 0, i32 7
  %304 = load i8*, i8** %303, align 8
  %305 = icmp ne i8* %304, null
  br i1 %305, label %306, label %311

306:                                              ; preds = %300
  %307 = load i8*, i8** @TRUE, align 8
  %308 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %309 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %308, i32 0, i32 3
  %310 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %309, i32 0, i32 0
  store i8* %307, i8** %310, align 8
  br label %311

311:                                              ; preds = %306, %300, %294
  br label %826

312:                                              ; preds = %57
  %313 = load i8*, i8** @FALSE, align 8
  %314 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %315 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %314, i32 0, i32 6
  %316 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %315, i32 0, i32 1
  store i8* %313, i8** %316, align 8
  %317 = load i8*, i8** @TRUE, align 8
  %318 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %319 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %318, i32 0, i32 6
  %320 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %319, i32 0, i32 0
  store i8* %317, i8** %320, align 8
  %321 = load i8*, i8** @VFE_RAW_OUTPUT_DISABLED, align 8
  %322 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %323 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %322, i32 0, i32 4
  %324 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %323, i32 0, i32 5
  store i8* %321, i8** %324, align 8
  %325 = load i8*, i8** @TRUE, align 8
  %326 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %327 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %327, i32 0, i32 8
  store i8* %325, i8** %328, align 8
  %329 = load i8*, i8** @TRUE, align 8
  %330 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %331 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %330, i32 0, i32 3
  %332 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %331, i32 0, i32 5
  store i8* %329, i8** %332, align 8
  %333 = load i8*, i8** @VFE_COMP_IRQ_BOTH_Y_CBCR, align 8
  %334 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %335 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %334, i32 0, i32 5
  %336 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %335, i32 0, i32 1
  store i8* %333, i8** %336, align 8
  %337 = load i8*, i8** @TRUE, align 8
  %338 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %339 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %338, i32 0, i32 4
  %340 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %339, i32 0, i32 4
  store i8* %337, i8** %340, align 8
  %341 = load i8*, i8** @TRUE, align 8
  %342 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %343 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %342, i32 0, i32 4
  %344 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %343, i32 0, i32 3
  store i8* %341, i8** %344, align 8
  %345 = load i8*, i8** @TRUE, align 8
  %346 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %347 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %346, i32 0, i32 2
  %348 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %347, i32 0, i32 8
  store i8* %345, i8** %348, align 8
  %349 = load i8*, i8** @TRUE, align 8
  %350 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %351 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %350, i32 0, i32 3
  %352 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %351, i32 0, i32 4
  store i8* %349, i8** %352, align 8
  %353 = load i8*, i8** @VFE_COMP_IRQ_BOTH_Y_CBCR, align 8
  %354 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %355 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %354, i32 0, i32 5
  %356 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %355, i32 0, i32 0
  store i8* %353, i8** %356, align 8
  %357 = load i8*, i8** @TRUE, align 8
  %358 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %359 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %358, i32 0, i32 4
  %360 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %359, i32 0, i32 2
  store i8* %357, i8** %360, align 8
  %361 = load i8*, i8** @TRUE, align 8
  %362 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %363 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %362, i32 0, i32 4
  %364 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %363, i32 0, i32 1
  store i8* %361, i8** %364, align 8
  %365 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %366 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %365, i32 0, i32 4
  %367 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %366, i32 0, i32 4
  %368 = load i8*, i8** %367, align 8
  %369 = icmp ne i8* %368, null
  br i1 %369, label %370, label %381

370:                                              ; preds = %312
  %371 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %372 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %372, i32 0, i32 7
  %374 = load i8*, i8** %373, align 8
  %375 = icmp ne i8* %374, null
  br i1 %375, label %376, label %381

376:                                              ; preds = %370
  %377 = load i8*, i8** @TRUE, align 8
  %378 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %379 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %378, i32 0, i32 3
  %380 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %379, i32 0, i32 3
  store i8* %377, i8** %380, align 8
  br label %381

381:                                              ; preds = %376, %370, %312
  %382 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %383 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %382, i32 0, i32 4
  %384 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %383, i32 0, i32 3
  %385 = load i8*, i8** %384, align 8
  %386 = icmp ne i8* %385, null
  br i1 %386, label %387, label %398

387:                                              ; preds = %381
  %388 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %389 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %388, i32 0, i32 1
  %390 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %389, i32 0, i32 7
  %391 = load i8*, i8** %390, align 8
  %392 = icmp ne i8* %391, null
  br i1 %392, label %393, label %398

393:                                              ; preds = %387
  %394 = load i8*, i8** @TRUE, align 8
  %395 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %396 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %395, i32 0, i32 3
  %397 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %396, i32 0, i32 2
  store i8* %394, i8** %397, align 8
  br label %398

398:                                              ; preds = %393, %387, %381
  %399 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %400 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %399, i32 0, i32 4
  %401 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %400, i32 0, i32 2
  %402 = load i8*, i8** %401, align 8
  %403 = icmp ne i8* %402, null
  br i1 %403, label %404, label %415

404:                                              ; preds = %398
  %405 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %406 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %405, i32 0, i32 2
  %407 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %406, i32 0, i32 7
  %408 = load i8*, i8** %407, align 8
  %409 = icmp ne i8* %408, null
  br i1 %409, label %410, label %415

410:                                              ; preds = %404
  %411 = load i8*, i8** @TRUE, align 8
  %412 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %413 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %412, i32 0, i32 3
  %414 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %413, i32 0, i32 1
  store i8* %411, i8** %414, align 8
  br label %415

415:                                              ; preds = %410, %404, %398
  %416 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %417 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %416, i32 0, i32 4
  %418 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %417, i32 0, i32 1
  %419 = load i8*, i8** %418, align 8
  %420 = icmp ne i8* %419, null
  br i1 %420, label %421, label %432

421:                                              ; preds = %415
  %422 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %423 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %422, i32 0, i32 2
  %424 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %423, i32 0, i32 7
  %425 = load i8*, i8** %424, align 8
  %426 = icmp ne i8* %425, null
  br i1 %426, label %427, label %432

427:                                              ; preds = %421
  %428 = load i8*, i8** @TRUE, align 8
  %429 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %430 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %429, i32 0, i32 3
  %431 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %430, i32 0, i32 0
  store i8* %428, i8** %431, align 8
  br label %432

432:                                              ; preds = %427, %421, %415
  br label %826

433:                                              ; preds = %57
  %434 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %2, align 8
  %435 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %434, i32 0, i32 3
  %436 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %435, i32 0, i32 1
  %437 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %436, i32 0, i32 0
  %438 = load i32**, i32*** %437, align 8
  %439 = getelementptr inbounds i32*, i32** %438, i64 1
  %440 = load i32*, i32** %439, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 0
  %442 = load i32, i32* %441, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %462, label %444

444:                                              ; preds = %433
  %445 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %2, align 8
  %446 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %445, i32 0, i32 3
  %447 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %446, i32 0, i32 1
  %448 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %447, i32 0, i32 0
  %449 = load i32**, i32*** %448, align 8
  %450 = getelementptr inbounds i32*, i32** %449, i64 0
  %451 = load i32*, i32** %450, align 8
  %452 = getelementptr inbounds i32, i32* %451, i64 0
  %453 = load i32, i32* %452, align 4
  %454 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %2, align 8
  %455 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %454, i32 0, i32 3
  %456 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %455, i32 0, i32 1
  %457 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %456, i32 0, i32 0
  %458 = load i32**, i32*** %457, align 8
  %459 = getelementptr inbounds i32*, i32** %458, i64 1
  %460 = load i32*, i32** %459, align 8
  %461 = getelementptr inbounds i32, i32* %460, i64 0
  store i32 %453, i32* %461, align 4
  br label %462

462:                                              ; preds = %444, %433
  %463 = load i8*, i8** @TRUE, align 8
  %464 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %465 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %464, i32 0, i32 6
  %466 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %465, i32 0, i32 1
  store i8* %463, i8** %466, align 8
  %467 = load i8*, i8** @FALSE, align 8
  %468 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %469 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %468, i32 0, i32 6
  %470 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %469, i32 0, i32 0
  store i8* %467, i8** %470, align 8
  %471 = load i8*, i8** @VFE_RAW_OUTPUT_ENC_CBCR_PATH, align 8
  %472 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %473 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %472, i32 0, i32 4
  %474 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %473, i32 0, i32 5
  store i8* %471, i8** %474, align 8
  %475 = load i8*, i8** @TRUE, align 8
  %476 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %477 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %476, i32 0, i32 1
  %478 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %477, i32 0, i32 8
  store i8* %475, i8** %478, align 8
  %479 = load i8*, i8** @TRUE, align 8
  %480 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %481 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %480, i32 0, i32 3
  %482 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %481, i32 0, i32 5
  store i8* %479, i8** %482, align 8
  %483 = load i8*, i8** @VFE_COMP_IRQ_CBCR_ONLY, align 8
  %484 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %485 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %484, i32 0, i32 5
  %486 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %485, i32 0, i32 1
  store i8* %483, i8** %486, align 8
  %487 = load i8*, i8** @FALSE, align 8
  %488 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %489 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %488, i32 0, i32 4
  %490 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %489, i32 0, i32 4
  store i8* %487, i8** %490, align 8
  %491 = load i8*, i8** @TRUE, align 8
  %492 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %493 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %492, i32 0, i32 4
  %494 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %493, i32 0, i32 3
  store i8* %491, i8** %494, align 8
  %495 = load i8*, i8** @FALSE, align 8
  %496 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %497 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %496, i32 0, i32 2
  %498 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %497, i32 0, i32 8
  store i8* %495, i8** %498, align 8
  %499 = load i8*, i8** @FALSE, align 8
  %500 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %501 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %500, i32 0, i32 3
  %502 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %501, i32 0, i32 4
  store i8* %499, i8** %502, align 8
  %503 = load i8*, i8** @VFE_COMP_IRQ_BOTH_Y_CBCR, align 8
  %504 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %505 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %504, i32 0, i32 5
  %506 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %505, i32 0, i32 0
  store i8* %503, i8** %506, align 8
  %507 = load i8*, i8** @FALSE, align 8
  %508 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %509 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %508, i32 0, i32 4
  %510 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %509, i32 0, i32 2
  store i8* %507, i8** %510, align 8
  %511 = load i8*, i8** @FALSE, align 8
  %512 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %513 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %512, i32 0, i32 4
  %514 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %513, i32 0, i32 1
  store i8* %511, i8** %514, align 8
  %515 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %516 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %515, i32 0, i32 4
  %517 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %516, i32 0, i32 4
  %518 = load i8*, i8** %517, align 8
  %519 = icmp ne i8* %518, null
  br i1 %519, label %520, label %531

520:                                              ; preds = %462
  %521 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %522 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %521, i32 0, i32 1
  %523 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %522, i32 0, i32 7
  %524 = load i8*, i8** %523, align 8
  %525 = icmp ne i8* %524, null
  br i1 %525, label %526, label %531

526:                                              ; preds = %520
  %527 = load i8*, i8** @TRUE, align 8
  %528 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %529 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %528, i32 0, i32 3
  %530 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %529, i32 0, i32 3
  store i8* %527, i8** %530, align 8
  br label %531

531:                                              ; preds = %526, %520, %462
  %532 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %533 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %532, i32 0, i32 4
  %534 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %533, i32 0, i32 3
  %535 = load i8*, i8** %534, align 8
  %536 = icmp ne i8* %535, null
  br i1 %536, label %537, label %548

537:                                              ; preds = %531
  %538 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %539 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %538, i32 0, i32 1
  %540 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %539, i32 0, i32 7
  %541 = load i8*, i8** %540, align 8
  %542 = icmp ne i8* %541, null
  br i1 %542, label %543, label %548

543:                                              ; preds = %537
  %544 = load i8*, i8** @TRUE, align 8
  %545 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %546 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %545, i32 0, i32 3
  %547 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %546, i32 0, i32 2
  store i8* %544, i8** %547, align 8
  br label %548

548:                                              ; preds = %543, %537, %531
  %549 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %550 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %549, i32 0, i32 4
  %551 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %550, i32 0, i32 2
  %552 = load i8*, i8** %551, align 8
  %553 = icmp ne i8* %552, null
  br i1 %553, label %554, label %565

554:                                              ; preds = %548
  %555 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %556 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %555, i32 0, i32 2
  %557 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %556, i32 0, i32 7
  %558 = load i8*, i8** %557, align 8
  %559 = icmp ne i8* %558, null
  br i1 %559, label %560, label %565

560:                                              ; preds = %554
  %561 = load i8*, i8** @TRUE, align 8
  %562 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %563 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %562, i32 0, i32 3
  %564 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %563, i32 0, i32 1
  store i8* %561, i8** %564, align 8
  br label %565

565:                                              ; preds = %560, %554, %548
  %566 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %567 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %566, i32 0, i32 4
  %568 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %567, i32 0, i32 1
  %569 = load i8*, i8** %568, align 8
  %570 = icmp ne i8* %569, null
  br i1 %570, label %571, label %582

571:                                              ; preds = %565
  %572 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %573 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %572, i32 0, i32 2
  %574 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %573, i32 0, i32 7
  %575 = load i8*, i8** %574, align 8
  %576 = icmp ne i8* %575, null
  br i1 %576, label %577, label %582

577:                                              ; preds = %571
  %578 = load i8*, i8** @TRUE, align 8
  %579 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %580 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %579, i32 0, i32 3
  %581 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %580, i32 0, i32 0
  store i8* %578, i8** %581, align 8
  br label %582

582:                                              ; preds = %577, %571, %565
  br label %826

583:                                              ; preds = %57
  %584 = load i8*, i8** @TRUE, align 8
  %585 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %586 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %585, i32 0, i32 6
  %587 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %586, i32 0, i32 1
  store i8* %584, i8** %587, align 8
  %588 = load i8*, i8** @TRUE, align 8
  %589 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %590 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %589, i32 0, i32 6
  %591 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %590, i32 0, i32 0
  store i8* %588, i8** %591, align 8
  %592 = load i8*, i8** @VFE_RAW_OUTPUT_VIEW_CBCR_PATH, align 8
  %593 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %594 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %593, i32 0, i32 4
  %595 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %594, i32 0, i32 5
  store i8* %592, i8** %595, align 8
  %596 = load i8*, i8** @TRUE, align 8
  %597 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %598 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %597, i32 0, i32 1
  %599 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %598, i32 0, i32 8
  store i8* %596, i8** %599, align 8
  %600 = load i8*, i8** @TRUE, align 8
  %601 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %602 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %601, i32 0, i32 3
  %603 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %602, i32 0, i32 5
  store i8* %600, i8** %603, align 8
  %604 = load i8*, i8** @VFE_COMP_IRQ_BOTH_Y_CBCR, align 8
  %605 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %606 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %605, i32 0, i32 5
  %607 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %606, i32 0, i32 1
  store i8* %604, i8** %607, align 8
  %608 = load i8*, i8** @TRUE, align 8
  %609 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %610 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %609, i32 0, i32 4
  %611 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %610, i32 0, i32 4
  store i8* %608, i8** %611, align 8
  %612 = load i8*, i8** @TRUE, align 8
  %613 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %614 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %613, i32 0, i32 4
  %615 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %614, i32 0, i32 3
  store i8* %612, i8** %615, align 8
  %616 = load i8*, i8** @TRUE, align 8
  %617 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %618 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %617, i32 0, i32 2
  %619 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %618, i32 0, i32 8
  store i8* %616, i8** %619, align 8
  %620 = load i8*, i8** @TRUE, align 8
  %621 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %622 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %621, i32 0, i32 3
  %623 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %622, i32 0, i32 4
  store i8* %620, i8** %623, align 8
  %624 = load i8*, i8** @VFE_COMP_IRQ_CBCR_ONLY, align 8
  %625 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %626 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %625, i32 0, i32 5
  %627 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %626, i32 0, i32 0
  store i8* %624, i8** %627, align 8
  %628 = load i8*, i8** @FALSE, align 8
  %629 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %630 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %629, i32 0, i32 4
  %631 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %630, i32 0, i32 2
  store i8* %628, i8** %631, align 8
  %632 = load i8*, i8** @TRUE, align 8
  %633 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %634 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %633, i32 0, i32 4
  %635 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %634, i32 0, i32 1
  store i8* %632, i8** %635, align 8
  %636 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %637 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %636, i32 0, i32 4
  %638 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %637, i32 0, i32 4
  %639 = load i8*, i8** %638, align 8
  %640 = icmp ne i8* %639, null
  br i1 %640, label %641, label %652

641:                                              ; preds = %583
  %642 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %643 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %642, i32 0, i32 1
  %644 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %643, i32 0, i32 7
  %645 = load i8*, i8** %644, align 8
  %646 = icmp ne i8* %645, null
  br i1 %646, label %647, label %652

647:                                              ; preds = %641
  %648 = load i8*, i8** @TRUE, align 8
  %649 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %650 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %649, i32 0, i32 3
  %651 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %650, i32 0, i32 3
  store i8* %648, i8** %651, align 8
  br label %652

652:                                              ; preds = %647, %641, %583
  %653 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %654 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %653, i32 0, i32 4
  %655 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %654, i32 0, i32 3
  %656 = load i8*, i8** %655, align 8
  %657 = icmp ne i8* %656, null
  br i1 %657, label %658, label %669

658:                                              ; preds = %652
  %659 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %660 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %659, i32 0, i32 1
  %661 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %660, i32 0, i32 7
  %662 = load i8*, i8** %661, align 8
  %663 = icmp ne i8* %662, null
  br i1 %663, label %664, label %669

664:                                              ; preds = %658
  %665 = load i8*, i8** @TRUE, align 8
  %666 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %667 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %666, i32 0, i32 3
  %668 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %667, i32 0, i32 2
  store i8* %665, i8** %668, align 8
  br label %669

669:                                              ; preds = %664, %658, %652
  %670 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %671 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %670, i32 0, i32 4
  %672 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %671, i32 0, i32 2
  %673 = load i8*, i8** %672, align 8
  %674 = icmp ne i8* %673, null
  br i1 %674, label %675, label %686

675:                                              ; preds = %669
  %676 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %677 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %676, i32 0, i32 2
  %678 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %677, i32 0, i32 7
  %679 = load i8*, i8** %678, align 8
  %680 = icmp ne i8* %679, null
  br i1 %680, label %681, label %686

681:                                              ; preds = %675
  %682 = load i8*, i8** @TRUE, align 8
  %683 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %684 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %683, i32 0, i32 3
  %685 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %684, i32 0, i32 1
  store i8* %682, i8** %685, align 8
  br label %686

686:                                              ; preds = %681, %675, %669
  %687 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %688 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %687, i32 0, i32 4
  %689 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %688, i32 0, i32 1
  %690 = load i8*, i8** %689, align 8
  %691 = icmp ne i8* %690, null
  br i1 %691, label %692, label %703

692:                                              ; preds = %686
  %693 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %694 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %693, i32 0, i32 2
  %695 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %694, i32 0, i32 7
  %696 = load i8*, i8** %695, align 8
  %697 = icmp ne i8* %696, null
  br i1 %697, label %698, label %703

698:                                              ; preds = %692
  %699 = load i8*, i8** @TRUE, align 8
  %700 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %701 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %700, i32 0, i32 3
  %702 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %701, i32 0, i32 0
  store i8* %699, i8** %702, align 8
  br label %703

703:                                              ; preds = %698, %692, %686
  br label %826

704:                                              ; preds = %57
  %705 = load i8*, i8** @TRUE, align 8
  %706 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %707 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %706, i32 0, i32 6
  %708 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %707, i32 0, i32 1
  store i8* %705, i8** %708, align 8
  %709 = load i8*, i8** @TRUE, align 8
  %710 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %711 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %710, i32 0, i32 6
  %712 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %711, i32 0, i32 0
  store i8* %709, i8** %712, align 8
  %713 = load i8*, i8** @VFE_RAW_OUTPUT_ENC_CBCR_PATH, align 8
  %714 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %715 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %714, i32 0, i32 4
  %716 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %715, i32 0, i32 5
  store i8* %713, i8** %716, align 8
  %717 = load i8*, i8** @TRUE, align 8
  %718 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %719 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %718, i32 0, i32 1
  %720 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %719, i32 0, i32 8
  store i8* %717, i8** %720, align 8
  %721 = load i8*, i8** @TRUE, align 8
  %722 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %723 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %722, i32 0, i32 3
  %724 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %723, i32 0, i32 5
  store i8* %721, i8** %724, align 8
  %725 = load i8*, i8** @VFE_COMP_IRQ_CBCR_ONLY, align 8
  %726 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %727 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %726, i32 0, i32 5
  %728 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %727, i32 0, i32 1
  store i8* %725, i8** %728, align 8
  %729 = load i8*, i8** @FALSE, align 8
  %730 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %731 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %730, i32 0, i32 4
  %732 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %731, i32 0, i32 4
  store i8* %729, i8** %732, align 8
  %733 = load i8*, i8** @TRUE, align 8
  %734 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %735 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %734, i32 0, i32 4
  %736 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %735, i32 0, i32 3
  store i8* %733, i8** %736, align 8
  %737 = load i8*, i8** @TRUE, align 8
  %738 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %739 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %738, i32 0, i32 2
  %740 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %739, i32 0, i32 8
  store i8* %737, i8** %740, align 8
  %741 = load i8*, i8** @TRUE, align 8
  %742 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %743 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %742, i32 0, i32 3
  %744 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %743, i32 0, i32 4
  store i8* %741, i8** %744, align 8
  %745 = load i8*, i8** @VFE_COMP_IRQ_BOTH_Y_CBCR, align 8
  %746 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %747 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %746, i32 0, i32 5
  %748 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %747, i32 0, i32 0
  store i8* %745, i8** %748, align 8
  %749 = load i8*, i8** @TRUE, align 8
  %750 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %751 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %750, i32 0, i32 4
  %752 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %751, i32 0, i32 2
  store i8* %749, i8** %752, align 8
  %753 = load i8*, i8** @TRUE, align 8
  %754 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %755 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %754, i32 0, i32 4
  %756 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %755, i32 0, i32 1
  store i8* %753, i8** %756, align 8
  %757 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %758 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %757, i32 0, i32 4
  %759 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %758, i32 0, i32 4
  %760 = load i8*, i8** %759, align 8
  %761 = icmp ne i8* %760, null
  br i1 %761, label %762, label %773

762:                                              ; preds = %704
  %763 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %764 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %763, i32 0, i32 1
  %765 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %764, i32 0, i32 7
  %766 = load i8*, i8** %765, align 8
  %767 = icmp ne i8* %766, null
  br i1 %767, label %768, label %773

768:                                              ; preds = %762
  %769 = load i8*, i8** @TRUE, align 8
  %770 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %771 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %770, i32 0, i32 3
  %772 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %771, i32 0, i32 3
  store i8* %769, i8** %772, align 8
  br label %773

773:                                              ; preds = %768, %762, %704
  %774 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %775 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %774, i32 0, i32 4
  %776 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %775, i32 0, i32 3
  %777 = load i8*, i8** %776, align 8
  %778 = icmp ne i8* %777, null
  br i1 %778, label %779, label %790

779:                                              ; preds = %773
  %780 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %781 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %780, i32 0, i32 1
  %782 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %781, i32 0, i32 7
  %783 = load i8*, i8** %782, align 8
  %784 = icmp ne i8* %783, null
  br i1 %784, label %785, label %790

785:                                              ; preds = %779
  %786 = load i8*, i8** @TRUE, align 8
  %787 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %788 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %787, i32 0, i32 3
  %789 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %788, i32 0, i32 2
  store i8* %786, i8** %789, align 8
  br label %790

790:                                              ; preds = %785, %779, %773
  %791 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %792 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %791, i32 0, i32 4
  %793 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %792, i32 0, i32 2
  %794 = load i8*, i8** %793, align 8
  %795 = icmp ne i8* %794, null
  br i1 %795, label %796, label %807

796:                                              ; preds = %790
  %797 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %798 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %797, i32 0, i32 2
  %799 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %798, i32 0, i32 7
  %800 = load i8*, i8** %799, align 8
  %801 = icmp ne i8* %800, null
  br i1 %801, label %802, label %807

802:                                              ; preds = %796
  %803 = load i8*, i8** @TRUE, align 8
  %804 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %805 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %804, i32 0, i32 3
  %806 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %805, i32 0, i32 1
  store i8* %803, i8** %806, align 8
  br label %807

807:                                              ; preds = %802, %796, %790
  %808 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %809 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %808, i32 0, i32 4
  %810 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %809, i32 0, i32 1
  %811 = load i8*, i8** %810, align 8
  %812 = icmp ne i8* %811, null
  br i1 %812, label %813, label %824

813:                                              ; preds = %807
  %814 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %815 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %814, i32 0, i32 2
  %816 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %815, i32 0, i32 7
  %817 = load i8*, i8** %816, align 8
  %818 = icmp ne i8* %817, null
  br i1 %818, label %819, label %824

819:                                              ; preds = %813
  %820 = load i8*, i8** @TRUE, align 8
  %821 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %822 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %821, i32 0, i32 3
  %823 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %822, i32 0, i32 0
  store i8* %820, i8** %823, align 8
  br label %824

824:                                              ; preds = %819, %813, %807
  br label %826

825:                                              ; preds = %57
  br label %826

826:                                              ; preds = %57, %825, %824, %703, %582, %432, %311, %190
  %827 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %828 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %827, i32 0, i32 1
  %829 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %828, i32 0, i32 0
  %830 = load i32, i32* %829, align 8
  store i32 %830, i32* %7, align 4
  %831 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %832 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %831, i32 0, i32 1
  %833 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %832, i32 0, i32 3
  %834 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %833, i32 0, i32 2
  %835 = load i32*, i32** %834, align 8
  store i32* %835, i32** %3, align 8
  %836 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %837 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %836, i32 0, i32 1
  %838 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %837, i32 0, i32 6
  %839 = load i32*, i32** %838, align 8
  store i32* %839, i32** %4, align 8
  %840 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %2, align 8
  %841 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %840, i32 0, i32 3
  %842 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %841, i32 0, i32 2
  %843 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %842, i32 0, i32 0
  %844 = load i32**, i32*** %843, align 8
  %845 = getelementptr inbounds i32*, i32** %844, i64 0
  %846 = load i32*, i32** %845, align 8
  %847 = getelementptr inbounds i32, i32* %846, i64 0
  store i32* %847, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %848

848:                                              ; preds = %858, %826
  %849 = load i32, i32* %6, align 4
  %850 = load i32, i32* %7, align 4
  %851 = icmp slt i32 %849, %850
  br i1 %851, label %852, label %861

852:                                              ; preds = %848
  %853 = load i32*, i32** %5, align 8
  %854 = getelementptr inbounds i32, i32* %853, i32 1
  store i32* %854, i32** %5, align 8
  %855 = load i32, i32* %853, align 4
  %856 = load i32*, i32** %3, align 8
  %857 = getelementptr inbounds i32, i32* %856, i32 1
  store i32* %857, i32** %3, align 8
  store i32 %855, i32* %856, align 4
  br label %858

858:                                              ; preds = %852
  %859 = load i32, i32* %6, align 4
  %860 = add nsw i32 %859, 1
  store i32 %860, i32* %6, align 4
  br label %848

861:                                              ; preds = %848
  %862 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %2, align 8
  %863 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %862, i32 0, i32 3
  %864 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %863, i32 0, i32 2
  %865 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %864, i32 0, i32 0
  %866 = load i32**, i32*** %865, align 8
  %867 = getelementptr inbounds i32*, i32** %866, i64 1
  %868 = load i32*, i32** %867, align 8
  %869 = getelementptr inbounds i32, i32* %868, i64 0
  store i32* %869, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %870

870:                                              ; preds = %880, %861
  %871 = load i32, i32* %6, align 4
  %872 = load i32, i32* %7, align 4
  %873 = icmp slt i32 %871, %872
  br i1 %873, label %874, label %883

874:                                              ; preds = %870
  %875 = load i32*, i32** %5, align 8
  %876 = getelementptr inbounds i32, i32* %875, i32 1
  store i32* %876, i32** %5, align 8
  %877 = load i32, i32* %875, align 4
  %878 = load i32*, i32** %3, align 8
  %879 = getelementptr inbounds i32, i32* %878, i32 1
  store i32* %879, i32** %3, align 8
  store i32 %877, i32* %878, align 4
  br label %880

880:                                              ; preds = %874
  %881 = load i32, i32* %6, align 4
  %882 = add nsw i32 %881, 1
  store i32 %882, i32* %6, align 4
  br label %870

883:                                              ; preds = %870
  %884 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %2, align 8
  %885 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %884, i32 0, i32 3
  %886 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %885, i32 0, i32 2
  %887 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %886, i32 0, i32 0
  %888 = load i32**, i32*** %887, align 8
  %889 = getelementptr inbounds i32*, i32** %888, i64 2
  %890 = load i32*, i32** %889, align 8
  %891 = getelementptr inbounds i32, i32* %890, i64 0
  store i32* %891, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %892

892:                                              ; preds = %902, %883
  %893 = load i32, i32* %6, align 4
  %894 = load i32, i32* %7, align 4
  %895 = icmp slt i32 %893, %894
  br i1 %895, label %896, label %905

896:                                              ; preds = %892
  %897 = load i32*, i32** %5, align 8
  %898 = getelementptr inbounds i32, i32* %897, i32 1
  store i32* %898, i32** %5, align 8
  %899 = load i32, i32* %897, align 4
  %900 = load i32*, i32** %4, align 8
  %901 = getelementptr inbounds i32, i32* %900, i32 1
  store i32* %901, i32** %4, align 8
  store i32 %899, i32* %900, align 4
  br label %902

902:                                              ; preds = %896
  %903 = load i32, i32* %6, align 4
  %904 = add nsw i32 %903, 1
  store i32 %904, i32* %6, align 4
  br label %892

905:                                              ; preds = %892
  %906 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %907 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %906, i32 0, i32 1
  %908 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %907, i32 0, i32 2
  %909 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %908, i32 0, i32 2
  %910 = load i32*, i32** %909, align 8
  store i32* %910, i32** %3, align 8
  %911 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %2, align 8
  %912 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %911, i32 0, i32 3
  %913 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %912, i32 0, i32 1
  %914 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %913, i32 0, i32 0
  %915 = load i32**, i32*** %914, align 8
  %916 = getelementptr inbounds i32*, i32** %915, i64 0
  %917 = load i32*, i32** %916, align 8
  %918 = getelementptr inbounds i32, i32* %917, i64 0
  store i32* %918, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %919

919:                                              ; preds = %929, %905
  %920 = load i32, i32* %6, align 4
  %921 = load i32, i32* %7, align 4
  %922 = icmp slt i32 %920, %921
  br i1 %922, label %923, label %932

923:                                              ; preds = %919
  %924 = load i32*, i32** %5, align 8
  %925 = getelementptr inbounds i32, i32* %924, i32 1
  store i32* %925, i32** %5, align 8
  %926 = load i32, i32* %924, align 4
  %927 = load i32*, i32** %3, align 8
  %928 = getelementptr inbounds i32, i32* %927, i32 1
  store i32* %928, i32** %3, align 8
  store i32 %926, i32* %927, align 4
  br label %929

929:                                              ; preds = %923
  %930 = load i32, i32* %6, align 4
  %931 = add nsw i32 %930, 1
  store i32 %931, i32* %6, align 4
  br label %919

932:                                              ; preds = %919
  %933 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %2, align 8
  %934 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %933, i32 0, i32 3
  %935 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %934, i32 0, i32 1
  %936 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %935, i32 0, i32 0
  %937 = load i32**, i32*** %936, align 8
  %938 = getelementptr inbounds i32*, i32** %937, i64 1
  %939 = load i32*, i32** %938, align 8
  %940 = getelementptr inbounds i32, i32* %939, i64 0
  store i32* %940, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %941

941:                                              ; preds = %951, %932
  %942 = load i32, i32* %6, align 4
  %943 = load i32, i32* %7, align 4
  %944 = icmp slt i32 %942, %943
  br i1 %944, label %945, label %954

945:                                              ; preds = %941
  %946 = load i32*, i32** %5, align 8
  %947 = getelementptr inbounds i32, i32* %946, i32 1
  store i32* %947, i32** %5, align 8
  %948 = load i32, i32* %946, align 4
  %949 = load i32*, i32** %3, align 8
  %950 = getelementptr inbounds i32, i32* %949, i32 1
  store i32* %950, i32** %3, align 8
  store i32 %948, i32* %949, align 4
  br label %951

951:                                              ; preds = %945
  %952 = load i32, i32* %6, align 4
  %953 = add nsw i32 %952, 1
  store i32 %953, i32* %6, align 4
  br label %941

954:                                              ; preds = %941
  %955 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %2, align 8
  %956 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %955, i32 0, i32 3
  %957 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %956, i32 0, i32 1
  %958 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %957, i32 0, i32 0
  %959 = load i32**, i32*** %958, align 8
  %960 = getelementptr inbounds i32*, i32** %959, i64 2
  %961 = load i32*, i32** %960, align 8
  %962 = getelementptr inbounds i32, i32* %961, i64 0
  store i32* %962, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %963

963:                                              ; preds = %973, %954
  %964 = load i32, i32* %6, align 4
  %965 = load i32, i32* %7, align 4
  %966 = icmp slt i32 %964, %965
  br i1 %966, label %967, label %976

967:                                              ; preds = %963
  %968 = load i32*, i32** %5, align 8
  %969 = getelementptr inbounds i32, i32* %968, i32 1
  store i32* %969, i32** %5, align 8
  %970 = load i32, i32* %968, align 4
  %971 = load i32*, i32** %4, align 8
  %972 = getelementptr inbounds i32, i32* %971, i32 1
  store i32* %972, i32** %4, align 8
  store i32 %970, i32* %971, align 4
  br label %973

973:                                              ; preds = %967
  %974 = load i32, i32* %6, align 4
  %975 = add nsw i32 %974, 1
  store i32 %975, i32* %6, align 4
  br label %963

976:                                              ; preds = %963
  %977 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %978 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %977, i32 0, i32 2
  %979 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %980 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %979, i32 0, i32 1
  %981 = call i32 @vfe_set_bus_pipo_addr(%struct.TYPE_25__* %978, %struct.TYPE_26__* %980)
  %982 = load i8*, i8** @FALSE, align 8
  %983 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %984 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %983, i32 0, i32 1
  %985 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %984, i32 0, i32 5
  store i8* %982, i8** %985, align 8
  %986 = load i8*, i8** @ping, align 8
  %987 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %988 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %987, i32 0, i32 1
  %989 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %988, i32 0, i32 4
  store i8* %986, i8** %989, align 8
  %990 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %991 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %990, i32 0, i32 1
  %992 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %991, i32 0, i32 1
  store i32 1, i32* %992, align 4
  %993 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %994 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %993, i32 0, i32 1
  %995 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %994, i32 0, i32 3
  %996 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %995, i32 0, i32 0
  store i32 2, i32* %996, align 8
  %997 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %998 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %997, i32 0, i32 1
  %999 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %998, i32 0, i32 2
  %1000 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %999, i32 0, i32 0
  store i32 2, i32* %1000, align 8
  %1001 = load i8*, i8** @ping, align 8
  %1002 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %1003 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %1002, i32 0, i32 1
  %1004 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %1003, i32 0, i32 3
  %1005 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %1004, i32 0, i32 1
  store i8* %1001, i8** %1005, align 8
  %1006 = load i8*, i8** @ping, align 8
  %1007 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %1008 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %1007, i32 0, i32 1
  %1009 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %1008, i32 0, i32 2
  %1010 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %1009, i32 0, i32 1
  store i8* %1006, i8** %1010, align 8
  %1011 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %1012 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %1011, i32 0, i32 2
  %1013 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1012, i32 0, i32 2
  %1014 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1013, i32 0, i32 2
  %1015 = load i32*, i32** %1014, align 8
  store i32* %1015, i32** %3, align 8
  %1016 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %1017 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %1016, i32 0, i32 2
  %1018 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1017, i32 0, i32 6
  %1019 = load i32*, i32** %1018, align 8
  store i32* %1019, i32** %4, align 8
  %1020 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %1021 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %1020, i32 0, i32 2
  %1022 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1021, i32 0, i32 0
  %1023 = load i32, i32* %1022, align 8
  store i32 %1023, i32* %7, align 4
  %1024 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %2, align 8
  %1025 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %1024, i32 0, i32 2
  %1026 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1025, i32 0, i32 2
  %1027 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1026, i32 0, i32 0
  %1028 = load i32**, i32*** %1027, align 8
  %1029 = getelementptr inbounds i32*, i32** %1028, i64 0
  %1030 = load i32*, i32** %1029, align 8
  %1031 = getelementptr inbounds i32, i32* %1030, i64 0
  store i32* %1031, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %1032

1032:                                             ; preds = %1042, %976
  %1033 = load i32, i32* %6, align 4
  %1034 = load i32, i32* %7, align 4
  %1035 = icmp slt i32 %1033, %1034
  br i1 %1035, label %1036, label %1045

1036:                                             ; preds = %1032
  %1037 = load i32*, i32** %5, align 8
  %1038 = getelementptr inbounds i32, i32* %1037, i32 1
  store i32* %1038, i32** %5, align 8
  %1039 = load i32, i32* %1037, align 4
  %1040 = load i32*, i32** %3, align 8
  %1041 = getelementptr inbounds i32, i32* %1040, i32 1
  store i32* %1041, i32** %3, align 8
  store i32 %1039, i32* %1040, align 4
  br label %1042

1042:                                             ; preds = %1036
  %1043 = load i32, i32* %6, align 4
  %1044 = add nsw i32 %1043, 1
  store i32 %1044, i32* %6, align 4
  br label %1032

1045:                                             ; preds = %1032
  %1046 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %2, align 8
  %1047 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %1046, i32 0, i32 2
  %1048 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1047, i32 0, i32 2
  %1049 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1048, i32 0, i32 0
  %1050 = load i32**, i32*** %1049, align 8
  %1051 = getelementptr inbounds i32*, i32** %1050, i64 1
  %1052 = load i32*, i32** %1051, align 8
  %1053 = getelementptr inbounds i32, i32* %1052, i64 0
  store i32* %1053, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %1054

1054:                                             ; preds = %1064, %1045
  %1055 = load i32, i32* %6, align 4
  %1056 = load i32, i32* %7, align 4
  %1057 = icmp slt i32 %1055, %1056
  br i1 %1057, label %1058, label %1067

1058:                                             ; preds = %1054
  %1059 = load i32*, i32** %5, align 8
  %1060 = getelementptr inbounds i32, i32* %1059, i32 1
  store i32* %1060, i32** %5, align 8
  %1061 = load i32, i32* %1059, align 4
  %1062 = load i32*, i32** %3, align 8
  %1063 = getelementptr inbounds i32, i32* %1062, i32 1
  store i32* %1063, i32** %3, align 8
  store i32 %1061, i32* %1062, align 4
  br label %1064

1064:                                             ; preds = %1058
  %1065 = load i32, i32* %6, align 4
  %1066 = add nsw i32 %1065, 1
  store i32 %1066, i32* %6, align 4
  br label %1054

1067:                                             ; preds = %1054
  %1068 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %2, align 8
  %1069 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %1068, i32 0, i32 2
  %1070 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1069, i32 0, i32 2
  %1071 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1070, i32 0, i32 0
  %1072 = load i32**, i32*** %1071, align 8
  %1073 = getelementptr inbounds i32*, i32** %1072, i64 2
  %1074 = load i32*, i32** %1073, align 8
  %1075 = getelementptr inbounds i32, i32* %1074, i64 0
  store i32* %1075, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %1076

1076:                                             ; preds = %1086, %1067
  %1077 = load i32, i32* %6, align 4
  %1078 = load i32, i32* %7, align 4
  %1079 = icmp slt i32 %1077, %1078
  br i1 %1079, label %1080, label %1089

1080:                                             ; preds = %1076
  %1081 = load i32*, i32** %5, align 8
  %1082 = getelementptr inbounds i32, i32* %1081, i32 1
  store i32* %1082, i32** %5, align 8
  %1083 = load i32, i32* %1081, align 4
  %1084 = load i32*, i32** %4, align 8
  %1085 = getelementptr inbounds i32, i32* %1084, i32 1
  store i32* %1085, i32** %4, align 8
  store i32 %1083, i32* %1084, align 4
  br label %1086

1086:                                             ; preds = %1080
  %1087 = load i32, i32* %6, align 4
  %1088 = add nsw i32 %1087, 1
  store i32 %1088, i32* %6, align 4
  br label %1076

1089:                                             ; preds = %1076
  %1090 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %1091 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %1090, i32 0, i32 2
  %1092 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1091, i32 0, i32 1
  %1093 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1092, i32 0, i32 2
  %1094 = load i32*, i32** %1093, align 8
  store i32* %1094, i32** %3, align 8
  %1095 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %2, align 8
  %1096 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %1095, i32 0, i32 2
  %1097 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1096, i32 0, i32 1
  %1098 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1097, i32 0, i32 0
  %1099 = load i32**, i32*** %1098, align 8
  %1100 = getelementptr inbounds i32*, i32** %1099, i64 0
  %1101 = load i32*, i32** %1100, align 8
  %1102 = getelementptr inbounds i32, i32* %1101, i64 0
  store i32* %1102, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %1103

1103:                                             ; preds = %1113, %1089
  %1104 = load i32, i32* %6, align 4
  %1105 = load i32, i32* %7, align 4
  %1106 = icmp slt i32 %1104, %1105
  br i1 %1106, label %1107, label %1116

1107:                                             ; preds = %1103
  %1108 = load i32*, i32** %5, align 8
  %1109 = getelementptr inbounds i32, i32* %1108, i32 1
  store i32* %1109, i32** %5, align 8
  %1110 = load i32, i32* %1108, align 4
  %1111 = load i32*, i32** %3, align 8
  %1112 = getelementptr inbounds i32, i32* %1111, i32 1
  store i32* %1112, i32** %3, align 8
  store i32 %1110, i32* %1111, align 4
  br label %1113

1113:                                             ; preds = %1107
  %1114 = load i32, i32* %6, align 4
  %1115 = add nsw i32 %1114, 1
  store i32 %1115, i32* %6, align 4
  br label %1103

1116:                                             ; preds = %1103
  %1117 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %2, align 8
  %1118 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %1117, i32 0, i32 2
  %1119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1118, i32 0, i32 1
  %1120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1119, i32 0, i32 0
  %1121 = load i32**, i32*** %1120, align 8
  %1122 = getelementptr inbounds i32*, i32** %1121, i64 1
  %1123 = load i32*, i32** %1122, align 8
  %1124 = getelementptr inbounds i32, i32* %1123, i64 0
  store i32* %1124, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %1125

1125:                                             ; preds = %1135, %1116
  %1126 = load i32, i32* %6, align 4
  %1127 = load i32, i32* %7, align 4
  %1128 = icmp slt i32 %1126, %1127
  br i1 %1128, label %1129, label %1138

1129:                                             ; preds = %1125
  %1130 = load i32*, i32** %5, align 8
  %1131 = getelementptr inbounds i32, i32* %1130, i32 1
  store i32* %1131, i32** %5, align 8
  %1132 = load i32, i32* %1130, align 4
  %1133 = load i32*, i32** %3, align 8
  %1134 = getelementptr inbounds i32, i32* %1133, i32 1
  store i32* %1134, i32** %3, align 8
  store i32 %1132, i32* %1133, align 4
  br label %1135

1135:                                             ; preds = %1129
  %1136 = load i32, i32* %6, align 4
  %1137 = add nsw i32 %1136, 1
  store i32 %1137, i32* %6, align 4
  br label %1125

1138:                                             ; preds = %1125
  %1139 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %2, align 8
  %1140 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %1139, i32 0, i32 2
  %1141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1140, i32 0, i32 1
  %1142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1141, i32 0, i32 0
  %1143 = load i32**, i32*** %1142, align 8
  %1144 = getelementptr inbounds i32*, i32** %1143, i64 2
  %1145 = load i32*, i32** %1144, align 8
  %1146 = getelementptr inbounds i32, i32* %1145, i64 0
  store i32* %1146, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %1147

1147:                                             ; preds = %1157, %1138
  %1148 = load i32, i32* %6, align 4
  %1149 = load i32, i32* %7, align 4
  %1150 = icmp slt i32 %1148, %1149
  br i1 %1150, label %1151, label %1160

1151:                                             ; preds = %1147
  %1152 = load i32*, i32** %5, align 8
  %1153 = getelementptr inbounds i32, i32* %1152, i32 1
  store i32* %1153, i32** %5, align 8
  %1154 = load i32, i32* %1152, align 4
  %1155 = load i32*, i32** %4, align 8
  %1156 = getelementptr inbounds i32, i32* %1155, i32 1
  store i32* %1156, i32** %4, align 8
  store i32 %1154, i32* %1155, align 4
  br label %1157

1157:                                             ; preds = %1151
  %1158 = load i32, i32* %6, align 4
  %1159 = add nsw i32 %1158, 1
  store i32 %1159, i32* %6, align 4
  br label %1147

1160:                                             ; preds = %1147
  %1161 = load i8*, i8** @FALSE, align 8
  %1162 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %1163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %1162, i32 0, i32 2
  %1164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1163, i32 0, i32 5
  store i8* %1161, i8** %1164, align 8
  %1165 = load i8*, i8** @ping, align 8
  %1166 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %1167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %1166, i32 0, i32 2
  %1168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1167, i32 0, i32 4
  store i8* %1165, i8** %1168, align 8
  %1169 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %1170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %1169, i32 0, i32 2
  %1171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1170, i32 0, i32 3
  store i64 0, i64* %1171, align 8
  %1172 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %1173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %1172, i32 0, i32 2
  %1174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1173, i32 0, i32 2
  %1175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1174, i32 0, i32 0
  store i32 2, i32* %1175, align 8
  %1176 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %1177 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %1176, i32 0, i32 2
  %1178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1177, i32 0, i32 1
  %1179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1178, i32 0, i32 0
  store i32 2, i32* %1179, align 8
  %1180 = load i8*, i8** @ping, align 8
  %1181 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %1182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %1181, i32 0, i32 2
  %1183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1182, i32 0, i32 2
  %1184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1183, i32 0, i32 1
  store i8* %1180, i8** %1184, align 8
  %1185 = load i8*, i8** @ping, align 8
  %1186 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %1187 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %1186, i32 0, i32 2
  %1188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1187, i32 0, i32 1
  %1189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1188, i32 0, i32 1
  store i8* %1185, i8** %1189, align 8
  %1190 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %2, align 8
  %1191 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %1192 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %1191, i32 0, i32 2
  %1193 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ctrl, align 8
  %1194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %1193, i32 0, i32 1
  %1195 = load i32, i32* %8, align 4
  %1196 = call i32 @vfe_axi_output(%struct.vfe_cmd_axi_output_config* %1190, %struct.TYPE_25__* %1192, %struct.TYPE_26__* %1194, i32 %1195)
  ret void
}

declare dso_local i32 @CDBG(i8*, i32) #1

declare dso_local i32 @vfe_set_bus_pipo_addr(%struct.TYPE_25__*, %struct.TYPE_26__*) #1

declare dso_local i32 @vfe_axi_output(%struct.vfe_cmd_axi_output_config*, %struct.TYPE_25__*, %struct.TYPE_26__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

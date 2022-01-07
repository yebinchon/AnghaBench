; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x.c_vfe_config_axi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x.c_vfe_config_axi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axidata = type { i32, i32, %struct.msm_pmem_region* }
%struct.msm_pmem_region = type { i32, i32, i32 }
%struct.vfe_cmd_axi_output_config = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32** }
%struct.TYPE_10__ = type { i32** }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32** }
%struct.TYPE_7__ = type { i32** }

@OUTPUT_1 = common dso_local global i32 0, align 4
@OUTPUT_1_AND_2 = common dso_local global i32 0, align 4
@OUTPUT_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"bufnum2 = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"config_axi: O2, phy = 0x%lx, y_off = %d, cbcr_off = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"vfe_config_axi: p1 = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"vfe_config_axi: p2 = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.axidata*, %struct.vfe_cmd_axi_output_config*)* @vfe_config_axi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_config_axi(i32 %0, %struct.axidata* %1, %struct.vfe_cmd_axi_output_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.axidata*, align 8
  %6 = alloca %struct.vfe_cmd_axi_output_config*, align 8
  %7 = alloca %struct.msm_pmem_region*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.axidata* %1, %struct.axidata** %5, align 8
  store %struct.vfe_cmd_axi_output_config* %2, %struct.vfe_cmd_axi_output_config** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @OUTPUT_1, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @OUTPUT_1_AND_2, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %88

19:                                               ; preds = %15, %3
  %20 = load %struct.axidata*, %struct.axidata** %5, align 8
  %21 = getelementptr inbounds %struct.axidata, %struct.axidata* %20, i32 0, i32 2
  %22 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %21, align 8
  store %struct.msm_pmem_region* %22, %struct.msm_pmem_region** %7, align 8
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %84, %19
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.axidata*, %struct.axidata** %5, align 8
  %26 = getelementptr inbounds %struct.axidata, %struct.axidata* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %87

29:                                               ; preds = %23
  %30 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %6, align 8
  %31 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32* %39, i32** %10, align 8
  %40 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %6, align 8
  %41 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32* %49, i32** %11, align 8
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %78, %29
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %6, align 8
  %53 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %57, label %81

57:                                               ; preds = %50
  %58 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %59 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %62 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %60, %63
  %65 = load i32*, i32** %10, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %10, align 8
  %68 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %69 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %72 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %70, %73
  %75 = load i32*, i32** %11, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32*, i32** %11, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %11, align 8
  br label %78

78:                                               ; preds = %57
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %50

81:                                               ; preds = %50
  %82 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %83 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %82, i32 1
  store %struct.msm_pmem_region* %83, %struct.msm_pmem_region** %7, align 8
  br label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %23

87:                                               ; preds = %23
  br label %88

88:                                               ; preds = %87, %15
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @OUTPUT_2, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @OUTPUT_1_AND_2, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %190

96:                                               ; preds = %92, %88
  %97 = load %struct.axidata*, %struct.axidata** %5, align 8
  %98 = getelementptr inbounds %struct.axidata, %struct.axidata* %97, i32 0, i32 2
  %99 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %98, align 8
  %100 = load %struct.axidata*, %struct.axidata** %5, align 8
  %101 = getelementptr inbounds %struct.axidata, %struct.axidata* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %99, i64 %103
  store %struct.msm_pmem_region* %104, %struct.msm_pmem_region** %7, align 8
  %105 = load %struct.axidata*, %struct.axidata** %5, align 8
  %106 = getelementptr inbounds %struct.axidata, %struct.axidata* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i8*, i32, ...) @CDBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %107)
  store i32 0, i32* %8, align 4
  br label %109

109:                                              ; preds = %186, %96
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.axidata*, %struct.axidata** %5, align 8
  %112 = getelementptr inbounds %struct.axidata, %struct.axidata* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %189

115:                                              ; preds = %109
  %116 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %6, align 8
  %117 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i32**, i32*** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %120, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  store i32* %125, i32** %10, align 8
  %126 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %6, align 8
  %127 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i32**, i32*** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32*, i32** %130, i64 %132
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  store i32* %135, i32** %11, align 8
  %136 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %137 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %140 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %143 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i8*, i32, ...) @CDBG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %138, i32 %141, i32 %144)
  store i32 0, i32* %9, align 4
  br label %146

146:                                              ; preds = %180, %115
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %6, align 8
  %149 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp slt i32 %147, %151
  br i1 %152, label %153, label %183

153:                                              ; preds = %146
  %154 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %155 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %158 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %156, %159
  %161 = load i32*, i32** %10, align 8
  store i32 %160, i32* %161, align 4
  %162 = load i32*, i32** %10, align 8
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i8*, i32, ...) @CDBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %163)
  %165 = load i32*, i32** %10, align 8
  %166 = getelementptr inbounds i32, i32* %165, i32 1
  store i32* %166, i32** %10, align 8
  %167 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %168 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %171 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %169, %172
  %174 = load i32*, i32** %11, align 8
  store i32 %173, i32* %174, align 4
  %175 = load i32*, i32** %11, align 8
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i8*, i32, ...) @CDBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %176)
  %178 = load i32*, i32** %11, align 8
  %179 = getelementptr inbounds i32, i32* %178, i32 1
  store i32* %179, i32** %11, align 8
  br label %180

180:                                              ; preds = %153
  %181 = load i32, i32* %9, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %9, align 4
  br label %146

183:                                              ; preds = %146
  %184 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %185 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %184, i32 1
  store %struct.msm_pmem_region* %185, %struct.msm_pmem_region** %7, align 8
  br label %186

186:                                              ; preds = %183
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %8, align 4
  br label %109

189:                                              ; preds = %109
  br label %190

190:                                              ; preds = %189, %92
  ret void
}

declare dso_local i32 @CDBG(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe7x.c_vfe_7x_config_axi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe7x.c_vfe_7x_config_axi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axidata = type { i32, i32, %struct.msm_pmem_region* }
%struct.msm_pmem_region = type { i64, i64, i64 }
%struct.axiout = type { i64, i64 }

@OUTPUT_1 = common dso_local global i32 0, align 4
@OUTPUT_1_AND_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"bufnum1 = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"config_axi1: O1, phy = 0x%lx, y_off = %d, cbcr_off =%d\0A\00", align 1
@OUTPUT_2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"bufnum2 = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"config_axi2: O2, phy = 0x%lx, y_off = %d, cbcr_off =%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.axidata*, %struct.axiout*)* @vfe_7x_config_axi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfe_7x_config_axi(i32 %0, %struct.axidata* %1, %struct.axiout* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.axidata*, align 8
  %6 = alloca %struct.axiout*, align 8
  %7 = alloca %struct.msm_pmem_region*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.axidata* %1, %struct.axidata** %5, align 8
  store %struct.axiout* %2, %struct.axiout** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @OUTPUT_1, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @OUTPUT_1_AND_2, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %106

18:                                               ; preds = %14, %3
  %19 = load %struct.axidata*, %struct.axidata** %5, align 8
  %20 = getelementptr inbounds %struct.axidata, %struct.axidata* %19, i32 0, i32 2
  %21 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %20, align 8
  store %struct.msm_pmem_region* %21, %struct.msm_pmem_region** %7, align 8
  %22 = load %struct.axidata*, %struct.axidata** %5, align 8
  %23 = getelementptr inbounds %struct.axidata, %struct.axidata* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = call i32 (i8*, i64, ...) @CDBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %28 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %31 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %34 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i32 (i8*, i64, ...) @CDBG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i64 %29, i64 %32, i64 %35)
  %37 = load %struct.axiout*, %struct.axiout** %6, align 8
  %38 = getelementptr inbounds %struct.axiout, %struct.axiout* %37, i32 0, i32 0
  store i64* %38, i64** %8, align 8
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %68, %18
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.axidata*, %struct.axidata** %5, align 8
  %42 = getelementptr inbounds %struct.axidata, %struct.axidata* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %71

45:                                               ; preds = %39
  %46 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %47 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %50 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %48, %51
  %53 = load i64*, i64** %8, align 8
  store i64 %52, i64* %53, align 8
  %54 = load i64*, i64** %8, align 8
  %55 = getelementptr inbounds i64, i64* %54, i32 1
  store i64* %55, i64** %8, align 8
  %56 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %57 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %60 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %58, %61
  %63 = load i64*, i64** %8, align 8
  store i64 %62, i64* %63, align 8
  %64 = load i64*, i64** %8, align 8
  %65 = getelementptr inbounds i64, i64* %64, i32 1
  store i64* %65, i64** %8, align 8
  %66 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %67 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %66, i32 1
  store %struct.msm_pmem_region* %67, %struct.msm_pmem_region** %7, align 8
  br label %68

68:                                               ; preds = %45
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %39

71:                                               ; preds = %39
  %72 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %73 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %72, i32 -1
  store %struct.msm_pmem_region* %73, %struct.msm_pmem_region** %7, align 8
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %102, %71
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.axidata*, %struct.axidata** %5, align 8
  %77 = getelementptr inbounds %struct.axidata, %struct.axidata* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 8, %78
  %80 = icmp slt i32 %75, %79
  br i1 %80, label %81, label %105

81:                                               ; preds = %74
  %82 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %83 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %86 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %84, %87
  %89 = load i64*, i64** %8, align 8
  store i64 %88, i64* %89, align 8
  %90 = load i64*, i64** %8, align 8
  %91 = getelementptr inbounds i64, i64* %90, i32 1
  store i64* %91, i64** %8, align 8
  %92 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %93 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %96 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %94, %97
  %99 = load i64*, i64** %8, align 8
  store i64 %98, i64* %99, align 8
  %100 = load i64*, i64** %8, align 8
  %101 = getelementptr inbounds i64, i64* %100, i32 1
  store i64* %101, i64** %8, align 8
  br label %102

102:                                              ; preds = %81
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %74

105:                                              ; preds = %74
  br label %106

106:                                              ; preds = %105, %14
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @OUTPUT_2, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @OUTPUT_1_AND_2, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %207

114:                                              ; preds = %110, %106
  %115 = load %struct.axidata*, %struct.axidata** %5, align 8
  %116 = getelementptr inbounds %struct.axidata, %struct.axidata* %115, i32 0, i32 2
  %117 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %116, align 8
  %118 = load %struct.axidata*, %struct.axidata** %5, align 8
  %119 = getelementptr inbounds %struct.axidata, %struct.axidata* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %117, i64 %121
  store %struct.msm_pmem_region* %122, %struct.msm_pmem_region** %7, align 8
  %123 = load %struct.axidata*, %struct.axidata** %5, align 8
  %124 = getelementptr inbounds %struct.axidata, %struct.axidata* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = call i32 (i8*, i64, ...) @CDBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %126)
  %128 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %129 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %132 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %135 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = call i32 (i8*, i64, ...) @CDBG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i64 %130, i64 %133, i64 %136)
  %138 = load %struct.axiout*, %struct.axiout** %6, align 8
  %139 = getelementptr inbounds %struct.axiout, %struct.axiout* %138, i32 0, i32 1
  store i64* %139, i64** %8, align 8
  store i32 0, i32* %9, align 4
  br label %140

140:                                              ; preds = %169, %114
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.axidata*, %struct.axidata** %5, align 8
  %143 = getelementptr inbounds %struct.axidata, %struct.axidata* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %172

146:                                              ; preds = %140
  %147 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %148 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %151 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %149, %152
  %154 = load i64*, i64** %8, align 8
  store i64 %153, i64* %154, align 8
  %155 = load i64*, i64** %8, align 8
  %156 = getelementptr inbounds i64, i64* %155, i32 1
  store i64* %156, i64** %8, align 8
  %157 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %158 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %161 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = add i64 %159, %162
  %164 = load i64*, i64** %8, align 8
  store i64 %163, i64* %164, align 8
  %165 = load i64*, i64** %8, align 8
  %166 = getelementptr inbounds i64, i64* %165, i32 1
  store i64* %166, i64** %8, align 8
  %167 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %168 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %167, i32 1
  store %struct.msm_pmem_region* %168, %struct.msm_pmem_region** %7, align 8
  br label %169

169:                                              ; preds = %146
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %9, align 4
  br label %140

172:                                              ; preds = %140
  %173 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %174 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %173, i32 -1
  store %struct.msm_pmem_region* %174, %struct.msm_pmem_region** %7, align 8
  store i32 0, i32* %9, align 4
  br label %175

175:                                              ; preds = %203, %172
  %176 = load i32, i32* %9, align 4
  %177 = load %struct.axidata*, %struct.axidata** %5, align 8
  %178 = getelementptr inbounds %struct.axidata, %struct.axidata* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 8, %179
  %181 = icmp slt i32 %176, %180
  br i1 %181, label %182, label %206

182:                                              ; preds = %175
  %183 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %184 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %187 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = add i64 %185, %188
  %190 = load i64*, i64** %8, align 8
  store i64 %189, i64* %190, align 8
  %191 = load i64*, i64** %8, align 8
  %192 = getelementptr inbounds i64, i64* %191, i32 1
  store i64* %192, i64** %8, align 8
  %193 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %194 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.msm_pmem_region*, %struct.msm_pmem_region** %7, align 8
  %197 = getelementptr inbounds %struct.msm_pmem_region, %struct.msm_pmem_region* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = add i64 %195, %198
  %200 = load i64*, i64** %8, align 8
  store i64 %199, i64* %200, align 8
  %201 = load i64*, i64** %8, align 8
  %202 = getelementptr inbounds i64, i64* %201, i32 1
  store i64* %202, i64** %8, align 8
  br label %203

203:                                              ; preds = %182
  %204 = load i32, i32* %9, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %9, align 4
  br label %175

206:                                              ; preds = %175
  br label %207

207:                                              ; preds = %206, %110
  %208 = load i32, i32* %10, align 4
  ret i32 %208
}

declare dso_local i32 @CDBG(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

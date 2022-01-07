; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_camif_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_camif_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.vfe_cmd_camif_config = type { %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, i32 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i64, i64, i64 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.vfe_camifcfg = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"camif.frame pixelsPerLine = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"camif.frame linesPerFrame = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"camif.window firstpixel = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"camif.window lastpixel = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"camif.window firstline = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"camif.window lastline = %d\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@ctrl = common dso_local global %struct.TYPE_18__* null, align 8
@CAMIF_EFS_CONFIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfe_camif_config(%struct.vfe_cmd_camif_config* %0) #0 {
  %2 = alloca %struct.vfe_cmd_camif_config*, align 8
  %3 = alloca %struct.vfe_camifcfg, align 8
  store %struct.vfe_cmd_camif_config* %0, %struct.vfe_cmd_camif_config** %2, align 8
  %4 = call i32 @memset(%struct.vfe_camifcfg* %3, i32 0, i32 104)
  %5 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %6 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @CDBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %11 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @CDBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %13)
  %15 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %16 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @CDBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %18)
  %20 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %21 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @CDBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %23)
  %25 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %26 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @CDBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %28)
  %30 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %31 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @CDBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 %33)
  %35 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %36 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TRUE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %1
  %42 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %43 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %47 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sle i64 %45, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ctrl, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %41, %1
  %56 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %57 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @TRUE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %55
  %63 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %64 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %68 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sle i64 %66, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %62
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ctrl, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %72, %62, %55
  %77 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %78 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ctrl, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %84 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.vfe_camifcfg, %struct.vfe_camifcfg* %3, i32 0, i32 16
  store i32 %86, i32* %87, align 8
  %88 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %89 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.vfe_camifcfg, %struct.vfe_camifcfg* %3, i32 0, i32 15
  store i32 %91, i32* %92, align 4
  %93 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %94 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.vfe_camifcfg, %struct.vfe_camifcfg* %3, i32 0, i32 14
  store i32 %96, i32* %97, align 8
  %98 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %99 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %98, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.vfe_camifcfg, %struct.vfe_camifcfg* %3, i32 0, i32 13
  store i32 %101, i32* %102, align 4
  %103 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %104 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.vfe_camifcfg, %struct.vfe_camifcfg* %3, i32 0, i32 0
  store i64 %106, i64* %107, align 8
  %108 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %109 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.vfe_camifcfg, %struct.vfe_camifcfg* %3, i32 0, i32 1
  store i64 %111, i64* %112, align 8
  %113 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %114 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.vfe_camifcfg, %struct.vfe_camifcfg* %3, i32 0, i32 2
  store i64 %116, i64* %117, align 8
  %118 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %119 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.vfe_camifcfg, %struct.vfe_camifcfg* %3, i32 0, i32 3
  store i64 %121, i64* %122, align 8
  %123 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %124 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.vfe_camifcfg, %struct.vfe_camifcfg* %3, i32 0, i32 4
  store i64 %126, i64* %127, align 8
  %128 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %129 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.vfe_camifcfg, %struct.vfe_camifcfg* %3, i32 0, i32 5
  store i64 %131, i64* %132, align 8
  %133 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %134 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = getelementptr inbounds %struct.vfe_camifcfg, %struct.vfe_camifcfg* %3, i32 0, i32 12
  store i32 %136, i32* %137, align 8
  %138 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %139 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.vfe_camifcfg, %struct.vfe_camifcfg* %3, i32 0, i32 11
  store i32 %141, i32* %142, align 4
  %143 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %144 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = getelementptr inbounds %struct.vfe_camifcfg, %struct.vfe_camifcfg* %3, i32 0, i32 10
  store i32 %146, i32* %147, align 8
  %148 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %149 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.vfe_camifcfg, %struct.vfe_camifcfg* %3, i32 0, i32 9
  store i32 %151, i32* %152, align 4
  %153 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %154 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = getelementptr inbounds %struct.vfe_camifcfg, %struct.vfe_camifcfg* %3, i32 0, i32 8
  store i32 %156, i32* %157, align 8
  %158 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %159 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.vfe_camifcfg, %struct.vfe_camifcfg* %3, i32 0, i32 6
  store i64 %161, i64* %162, align 8
  %163 = load %struct.vfe_cmd_camif_config*, %struct.vfe_cmd_camif_config** %2, align 8
  %164 = getelementptr inbounds %struct.vfe_cmd_camif_config, %struct.vfe_cmd_camif_config* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.vfe_camifcfg, %struct.vfe_camifcfg* %3, i32 0, i32 7
  store i64 %166, i64* %167, align 8
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ctrl, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @CAMIF_EFS_CONFIG, align 8
  %172 = add nsw i64 %170, %171
  %173 = bitcast %struct.vfe_camifcfg* %3 to i32*
  %174 = call i32 @vfe_prog_hw(i64 %172, i32* %173, i32 104)
  ret void
}

declare dso_local i32 @memset(%struct.vfe_camifcfg*, i32, i32) #1

declare dso_local i32 @CDBG(i8*, i64) #1

declare dso_local i32 @vfe_prog_hw(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

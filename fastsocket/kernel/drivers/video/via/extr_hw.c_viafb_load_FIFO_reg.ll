; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_viafb_load_FIFO_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_viafb_load_FIFO_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_21__, %struct.TYPE_26__ }
%struct.TYPE_21__ = type { i32, %struct.io_register* }
%struct.io_register = type { i32 }
%struct.TYPE_26__ = type { i32, %struct.io_register* }
%struct.TYPE_16__ = type { %struct.TYPE_22__, %struct.TYPE_27__ }
%struct.TYPE_22__ = type { i32, %struct.io_register* }
%struct.TYPE_27__ = type { i32, %struct.io_register* }
%struct.TYPE_17__ = type { %struct.TYPE_23__, %struct.TYPE_28__ }
%struct.TYPE_23__ = type { i32, %struct.io_register* }
%struct.TYPE_28__ = type { i32, %struct.io_register* }
%struct.TYPE_18__ = type { %struct.TYPE_24__, %struct.TYPE_20__ }
%struct.TYPE_24__ = type { i32, %struct.io_register* }
%struct.TYPE_20__ = type { i32, %struct.io_register* }

@IGA1 = common dso_local global i32 0, align 4
@viaparinfo = common dso_local global %struct.TYPE_15__* null, align 8
@UNICHROME_K800 = common dso_local global i64 0, align 8
@K800_IGA1_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@K800_IGA1_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@K800_IGA1_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@K800_IGA1_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@UNICHROME_PM800 = common dso_local global i64 0, align 8
@P880_IGA1_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@P880_IGA1_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@P880_IGA1_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@P880_IGA1_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@UNICHROME_CN700 = common dso_local global i64 0, align 8
@CN700_IGA1_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@CN700_IGA1_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@CN700_IGA1_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@CN700_IGA1_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@UNICHROME_CX700 = common dso_local global i64 0, align 8
@CX700_IGA1_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@CX700_IGA1_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@CX700_IGA1_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@CX700_IGA1_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@UNICHROME_K8M890 = common dso_local global i64 0, align 8
@K8M890_IGA1_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@K8M890_IGA1_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@K8M890_IGA1_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@K8M890_IGA1_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@UNICHROME_P4M890 = common dso_local global i64 0, align 8
@P4M890_IGA1_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@P4M890_IGA1_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@P4M890_IGA1_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@P4M890_IGA1_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@UNICHROME_P4M900 = common dso_local global i64 0, align 8
@P4M900_IGA1_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@P4M900_IGA1_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@P4M900_IGA1_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@P4M900_IGA1_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@UNICHROME_VX800 = common dso_local global i64 0, align 8
@VX800_IGA1_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@VX800_IGA1_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@VX800_IGA1_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@VX800_IGA1_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@UNICHROME_VX855 = common dso_local global i64 0, align 8
@VX855_IGA1_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@VX855_IGA1_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@VX855_IGA1_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@VX855_IGA1_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@display_fifo_depth_reg = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@VIASR = common dso_local global i32 0, align 4
@fifo_threshold_select_reg = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@fifo_high_threshold_select_reg = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@display_queue_expire_num_reg = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@K800_IGA2_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@K800_IGA2_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@K800_IGA2_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@K800_IGA2_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@P880_IGA2_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@P880_IGA2_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@P880_IGA2_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@P880_IGA2_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@CN700_IGA2_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@CN700_IGA2_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@CN700_IGA2_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@CN700_IGA2_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@CX700_IGA2_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@CX700_IGA2_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@CX700_IGA2_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@CX700_IGA2_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@K8M890_IGA2_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@K8M890_IGA2_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@K8M890_IGA2_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@K8M890_IGA2_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@P4M890_IGA2_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@P4M890_IGA2_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@P4M890_IGA2_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@P4M890_IGA2_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@P4M900_IGA2_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@P4M900_IGA2_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@P4M900_IGA2_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@P4M900_IGA2_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@VX800_IGA2_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@VX800_IGA2_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@VX800_IGA2_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@VX800_IGA2_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@VX855_IGA2_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@VX855_IGA2_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@VX855_IGA2_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@VX855_IGA2_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_load_FIFO_reg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.io_register*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.io_register* null, %struct.io_register** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @IGA1, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %200

21:                                               ; preds = %3
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @UNICHROME_K800, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %21
  %30 = load i32, i32* @K800_IGA1_FIFO_MAX_DEPTH, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* @K800_IGA1_FIFO_THRESHOLD, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* @K800_IGA1_FIFO_HIGH_THRESHOLD, align 4
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp sgt i32 %33, 1280
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = icmp sgt i32 %36, 1024
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 16, i32* %13, align 4
  br label %41

39:                                               ; preds = %35, %29
  %40 = load i32, i32* @K800_IGA1_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %39, %38
  br label %42

42:                                               ; preds = %41, %21
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @UNICHROME_PM800, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %42
  %51 = load i32, i32* @P880_IGA1_FIFO_MAX_DEPTH, align 4
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* @P880_IGA1_FIFO_THRESHOLD, align 4
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* @P880_IGA1_FIFO_HIGH_THRESHOLD, align 4
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* @P880_IGA1_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp sgt i32 %55, 1280
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* %6, align 4
  %59 = icmp sgt i32 %58, 1024
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 16, i32* %13, align 4
  br label %63

61:                                               ; preds = %57, %50
  %62 = load i32, i32* @P880_IGA1_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %61, %60
  br label %64

64:                                               ; preds = %63, %42
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @UNICHROME_CN700, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %64
  %73 = load i32, i32* @CN700_IGA1_FIFO_MAX_DEPTH, align 4
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* @CN700_IGA1_FIFO_THRESHOLD, align 4
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* @CN700_IGA1_FIFO_HIGH_THRESHOLD, align 4
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp sgt i32 %76, 1280
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32, i32* %6, align 4
  %80 = icmp sgt i32 %79, 1024
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 16, i32* %13, align 4
  br label %84

82:                                               ; preds = %78, %72
  %83 = load i32, i32* @CN700_IGA1_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %82, %81
  br label %85

85:                                               ; preds = %84, %64
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @UNICHROME_CX700, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load i32, i32* @CX700_IGA1_FIFO_MAX_DEPTH, align 4
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* @CX700_IGA1_FIFO_THRESHOLD, align 4
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* @CX700_IGA1_FIFO_HIGH_THRESHOLD, align 4
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* @CX700_IGA1_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %97, i32* %13, align 4
  br label %98

98:                                               ; preds = %93, %85
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @UNICHROME_K8M890, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %98
  %107 = load i32, i32* @K8M890_IGA1_FIFO_MAX_DEPTH, align 4
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* @K8M890_IGA1_FIFO_THRESHOLD, align 4
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* @K8M890_IGA1_FIFO_HIGH_THRESHOLD, align 4
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* @K8M890_IGA1_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %106, %98
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @UNICHROME_P4M890, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %111
  %120 = load i32, i32* @P4M890_IGA1_FIFO_MAX_DEPTH, align 4
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* @P4M890_IGA1_FIFO_THRESHOLD, align 4
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* @P4M890_IGA1_FIFO_HIGH_THRESHOLD, align 4
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* @P4M890_IGA1_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %123, i32* %13, align 4
  br label %124

124:                                              ; preds = %119, %111
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @UNICHROME_P4M900, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %124
  %133 = load i32, i32* @P4M900_IGA1_FIFO_MAX_DEPTH, align 4
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* @P4M900_IGA1_FIFO_THRESHOLD, align 4
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* @P4M900_IGA1_FIFO_HIGH_THRESHOLD, align 4
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* @P4M900_IGA1_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %136, i32* %13, align 4
  br label %137

137:                                              ; preds = %132, %124
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @UNICHROME_VX800, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %137
  %146 = load i32, i32* @VX800_IGA1_FIFO_MAX_DEPTH, align 4
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* @VX800_IGA1_FIFO_THRESHOLD, align 4
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* @VX800_IGA1_FIFO_HIGH_THRESHOLD, align 4
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* @VX800_IGA1_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %149, i32* %13, align 4
  br label %150

150:                                              ; preds = %145, %137
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @UNICHROME_VX855, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %150
  %159 = load i32, i32* @VX855_IGA1_FIFO_MAX_DEPTH, align 4
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* @VX855_IGA1_FIFO_THRESHOLD, align 4
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* @VX855_IGA1_FIFO_HIGH_THRESHOLD, align 4
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* @VX855_IGA1_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %162, i32* %13, align 4
  br label %163

163:                                              ; preds = %158, %150
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @IGA1_FIFO_DEPTH_SELECT_FORMULA(i32 %164)
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @display_fifo_depth_reg, i32 0, i32 1, i32 0), align 8
  store i32 %166, i32* %8, align 4
  %167 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @display_fifo_depth_reg, i32 0, i32 1, i32 1), align 8
  store %struct.io_register* %167, %struct.io_register** %9, align 8
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %8, align 4
  %170 = load %struct.io_register*, %struct.io_register** %9, align 8
  %171 = load i32, i32* @VIASR, align 4
  %172 = call i32 @viafb_load_reg(i32 %168, i32 %169, %struct.io_register* %170, i32 %171)
  %173 = load i32, i32* %11, align 4
  %174 = call i32 @IGA1_FIFO_THRESHOLD_FORMULA(i32 %173)
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @fifo_threshold_select_reg, i32 0, i32 1, i32 0), align 8
  store i32 %175, i32* %8, align 4
  %176 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @fifo_threshold_select_reg, i32 0, i32 1, i32 1), align 8
  store %struct.io_register* %176, %struct.io_register** %9, align 8
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* %8, align 4
  %179 = load %struct.io_register*, %struct.io_register** %9, align 8
  %180 = load i32, i32* @VIASR, align 4
  %181 = call i32 @viafb_load_reg(i32 %177, i32 %178, %struct.io_register* %179, i32 %180)
  %182 = load i32, i32* %12, align 4
  %183 = call i32 @IGA1_FIFO_HIGH_THRESHOLD_FORMULA(i32 %182)
  store i32 %183, i32* %7, align 4
  %184 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @fifo_high_threshold_select_reg, i32 0, i32 1, i32 0), align 8
  store i32 %184, i32* %8, align 4
  %185 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @fifo_high_threshold_select_reg, i32 0, i32 1, i32 1), align 8
  store %struct.io_register* %185, %struct.io_register** %9, align 8
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* %8, align 4
  %188 = load %struct.io_register*, %struct.io_register** %9, align 8
  %189 = load i32, i32* @VIASR, align 4
  %190 = call i32 @viafb_load_reg(i32 %186, i32 %187, %struct.io_register* %188, i32 %189)
  %191 = load i32, i32* %13, align 4
  %192 = call i32 @IGA1_DISPLAY_QUEUE_EXPIRE_NUM_FORMULA(i32 %191)
  store i32 %192, i32* %7, align 4
  %193 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @display_queue_expire_num_reg, i32 0, i32 1, i32 0), align 8
  store i32 %193, i32* %8, align 4
  %194 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @display_queue_expire_num_reg, i32 0, i32 1, i32 1), align 8
  store %struct.io_register* %194, %struct.io_register** %9, align 8
  %195 = load i32, i32* %7, align 4
  %196 = load i32, i32* %8, align 4
  %197 = load %struct.io_register*, %struct.io_register** %9, align 8
  %198 = load i32, i32* @VIASR, align 4
  %199 = call i32 @viafb_load_reg(i32 %195, i32 %196, %struct.io_register* %197, i32 %198)
  br label %398

200:                                              ; preds = %3
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @UNICHROME_K800, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %221

208:                                              ; preds = %200
  %209 = load i32, i32* @K800_IGA2_FIFO_MAX_DEPTH, align 4
  store i32 %209, i32* %14, align 4
  %210 = load i32, i32* @K800_IGA2_FIFO_THRESHOLD, align 4
  store i32 %210, i32* %15, align 4
  %211 = load i32, i32* @K800_IGA2_FIFO_HIGH_THRESHOLD, align 4
  store i32 %211, i32* %16, align 4
  %212 = load i32, i32* %5, align 4
  %213 = icmp sgt i32 %212, 1280
  br i1 %213, label %214, label %218

214:                                              ; preds = %208
  %215 = load i32, i32* %6, align 4
  %216 = icmp sgt i32 %215, 1024
  br i1 %216, label %217, label %218

217:                                              ; preds = %214
  store i32 16, i32* %17, align 4
  br label %220

218:                                              ; preds = %214, %208
  %219 = load i32, i32* @K800_IGA2_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %219, i32* %17, align 4
  br label %220

220:                                              ; preds = %218, %217
  br label %221

221:                                              ; preds = %220, %200
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @UNICHROME_PM800, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %242

229:                                              ; preds = %221
  %230 = load i32, i32* @P880_IGA2_FIFO_MAX_DEPTH, align 4
  store i32 %230, i32* %14, align 4
  %231 = load i32, i32* @P880_IGA2_FIFO_THRESHOLD, align 4
  store i32 %231, i32* %15, align 4
  %232 = load i32, i32* @P880_IGA2_FIFO_HIGH_THRESHOLD, align 4
  store i32 %232, i32* %16, align 4
  %233 = load i32, i32* %5, align 4
  %234 = icmp sgt i32 %233, 1280
  br i1 %234, label %235, label %239

235:                                              ; preds = %229
  %236 = load i32, i32* %6, align 4
  %237 = icmp sgt i32 %236, 1024
  br i1 %237, label %238, label %239

238:                                              ; preds = %235
  store i32 16, i32* %17, align 4
  br label %241

239:                                              ; preds = %235, %229
  %240 = load i32, i32* @P880_IGA2_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %240, i32* %17, align 4
  br label %241

241:                                              ; preds = %239, %238
  br label %242

242:                                              ; preds = %241, %221
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @UNICHROME_CN700, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %263

250:                                              ; preds = %242
  %251 = load i32, i32* @CN700_IGA2_FIFO_MAX_DEPTH, align 4
  store i32 %251, i32* %14, align 4
  %252 = load i32, i32* @CN700_IGA2_FIFO_THRESHOLD, align 4
  store i32 %252, i32* %15, align 4
  %253 = load i32, i32* @CN700_IGA2_FIFO_HIGH_THRESHOLD, align 4
  store i32 %253, i32* %16, align 4
  %254 = load i32, i32* %5, align 4
  %255 = icmp sgt i32 %254, 1280
  br i1 %255, label %256, label %260

256:                                              ; preds = %250
  %257 = load i32, i32* %6, align 4
  %258 = icmp sgt i32 %257, 1024
  br i1 %258, label %259, label %260

259:                                              ; preds = %256
  store i32 16, i32* %17, align 4
  br label %262

260:                                              ; preds = %256, %250
  %261 = load i32, i32* @CN700_IGA2_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %261, i32* %17, align 4
  br label %262

262:                                              ; preds = %260, %259
  br label %263

263:                                              ; preds = %262, %242
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_25__*, %struct.TYPE_25__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @UNICHROME_CX700, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %276

271:                                              ; preds = %263
  %272 = load i32, i32* @CX700_IGA2_FIFO_MAX_DEPTH, align 4
  store i32 %272, i32* %14, align 4
  %273 = load i32, i32* @CX700_IGA2_FIFO_THRESHOLD, align 4
  store i32 %273, i32* %15, align 4
  %274 = load i32, i32* @CX700_IGA2_FIFO_HIGH_THRESHOLD, align 4
  store i32 %274, i32* %16, align 4
  %275 = load i32, i32* @CX700_IGA2_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %275, i32* %17, align 4
  br label %276

276:                                              ; preds = %271, %263
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_25__*, %struct.TYPE_25__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @UNICHROME_K8M890, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %289

284:                                              ; preds = %276
  %285 = load i32, i32* @K8M890_IGA2_FIFO_MAX_DEPTH, align 4
  store i32 %285, i32* %14, align 4
  %286 = load i32, i32* @K8M890_IGA2_FIFO_THRESHOLD, align 4
  store i32 %286, i32* %15, align 4
  %287 = load i32, i32* @K8M890_IGA2_FIFO_HIGH_THRESHOLD, align 4
  store i32 %287, i32* %16, align 4
  %288 = load i32, i32* @K8M890_IGA2_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %288, i32* %17, align 4
  br label %289

289:                                              ; preds = %284, %276
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_25__*, %struct.TYPE_25__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @UNICHROME_P4M890, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %297, label %302

297:                                              ; preds = %289
  %298 = load i32, i32* @P4M890_IGA2_FIFO_MAX_DEPTH, align 4
  store i32 %298, i32* %14, align 4
  %299 = load i32, i32* @P4M890_IGA2_FIFO_THRESHOLD, align 4
  store i32 %299, i32* %15, align 4
  %300 = load i32, i32* @P4M890_IGA2_FIFO_HIGH_THRESHOLD, align 4
  store i32 %300, i32* %16, align 4
  %301 = load i32, i32* @P4M890_IGA2_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %301, i32* %17, align 4
  br label %302

302:                                              ; preds = %297, %289
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_25__*, %struct.TYPE_25__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @UNICHROME_P4M900, align 8
  %309 = icmp eq i64 %307, %308
  br i1 %309, label %310, label %315

310:                                              ; preds = %302
  %311 = load i32, i32* @P4M900_IGA2_FIFO_MAX_DEPTH, align 4
  store i32 %311, i32* %14, align 4
  %312 = load i32, i32* @P4M900_IGA2_FIFO_THRESHOLD, align 4
  store i32 %312, i32* %15, align 4
  %313 = load i32, i32* @P4M900_IGA2_FIFO_HIGH_THRESHOLD, align 4
  store i32 %313, i32* %16, align 4
  %314 = load i32, i32* @P4M900_IGA2_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %314, i32* %17, align 4
  br label %315

315:                                              ; preds = %310, %302
  %316 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 0
  %318 = load %struct.TYPE_25__*, %struct.TYPE_25__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* @UNICHROME_VX800, align 8
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %323, label %328

323:                                              ; preds = %315
  %324 = load i32, i32* @VX800_IGA2_FIFO_MAX_DEPTH, align 4
  store i32 %324, i32* %14, align 4
  %325 = load i32, i32* @VX800_IGA2_FIFO_THRESHOLD, align 4
  store i32 %325, i32* %15, align 4
  %326 = load i32, i32* @VX800_IGA2_FIFO_HIGH_THRESHOLD, align 4
  store i32 %326, i32* %16, align 4
  %327 = load i32, i32* @VX800_IGA2_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %327, i32* %17, align 4
  br label %328

328:                                              ; preds = %323, %315
  %329 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 0
  %331 = load %struct.TYPE_25__*, %struct.TYPE_25__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @UNICHROME_VX855, align 8
  %335 = icmp eq i64 %333, %334
  br i1 %335, label %336, label %341

336:                                              ; preds = %328
  %337 = load i32, i32* @VX855_IGA2_FIFO_MAX_DEPTH, align 4
  store i32 %337, i32* %14, align 4
  %338 = load i32, i32* @VX855_IGA2_FIFO_THRESHOLD, align 4
  store i32 %338, i32* %15, align 4
  %339 = load i32, i32* @VX855_IGA2_FIFO_HIGH_THRESHOLD, align 4
  store i32 %339, i32* %16, align 4
  %340 = load i32, i32* @VX855_IGA2_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %340, i32* %17, align 4
  br label %341

341:                                              ; preds = %336, %328
  %342 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %343 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %342, i32 0, i32 0
  %344 = load %struct.TYPE_25__*, %struct.TYPE_25__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @UNICHROME_K800, align 8
  %348 = icmp eq i64 %346, %347
  br i1 %348, label %349, label %360

349:                                              ; preds = %341
  %350 = load i32, i32* %14, align 4
  %351 = call i32 @IGA2_FIFO_DEPTH_SELECT_FORMULA(i32 %350)
  %352 = sub nsw i32 %351, 1
  store i32 %352, i32* %7, align 4
  %353 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @display_fifo_depth_reg, i32 0, i32 0, i32 0), align 8
  store i32 %353, i32* %8, align 4
  %354 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @display_fifo_depth_reg, i32 0, i32 0, i32 1), align 8
  store %struct.io_register* %354, %struct.io_register** %9, align 8
  %355 = load i32, i32* %7, align 4
  %356 = load i32, i32* %8, align 4
  %357 = load %struct.io_register*, %struct.io_register** %9, align 8
  %358 = load i32, i32* @VIACR, align 4
  %359 = call i32 @viafb_load_reg(i32 %355, i32 %356, %struct.io_register* %357, i32 %358)
  br label %370

360:                                              ; preds = %341
  %361 = load i32, i32* %14, align 4
  %362 = call i32 @IGA2_FIFO_DEPTH_SELECT_FORMULA(i32 %361)
  store i32 %362, i32* %7, align 4
  %363 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @display_fifo_depth_reg, i32 0, i32 0, i32 0), align 8
  store i32 %363, i32* %8, align 4
  %364 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @display_fifo_depth_reg, i32 0, i32 0, i32 1), align 8
  store %struct.io_register* %364, %struct.io_register** %9, align 8
  %365 = load i32, i32* %7, align 4
  %366 = load i32, i32* %8, align 4
  %367 = load %struct.io_register*, %struct.io_register** %9, align 8
  %368 = load i32, i32* @VIACR, align 4
  %369 = call i32 @viafb_load_reg(i32 %365, i32 %366, %struct.io_register* %367, i32 %368)
  br label %370

370:                                              ; preds = %360, %349
  %371 = load i32, i32* %15, align 4
  %372 = call i32 @IGA2_FIFO_THRESHOLD_FORMULA(i32 %371)
  store i32 %372, i32* %7, align 4
  %373 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @fifo_threshold_select_reg, i32 0, i32 0, i32 0), align 8
  store i32 %373, i32* %8, align 4
  %374 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @fifo_threshold_select_reg, i32 0, i32 0, i32 1), align 8
  store %struct.io_register* %374, %struct.io_register** %9, align 8
  %375 = load i32, i32* %7, align 4
  %376 = load i32, i32* %8, align 4
  %377 = load %struct.io_register*, %struct.io_register** %9, align 8
  %378 = load i32, i32* @VIACR, align 4
  %379 = call i32 @viafb_load_reg(i32 %375, i32 %376, %struct.io_register* %377, i32 %378)
  %380 = load i32, i32* %16, align 4
  %381 = call i32 @IGA2_FIFO_HIGH_THRESHOLD_FORMULA(i32 %380)
  store i32 %381, i32* %7, align 4
  %382 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @fifo_high_threshold_select_reg, i32 0, i32 0, i32 0), align 8
  store i32 %382, i32* %8, align 4
  %383 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @fifo_high_threshold_select_reg, i32 0, i32 0, i32 1), align 8
  store %struct.io_register* %383, %struct.io_register** %9, align 8
  %384 = load i32, i32* %7, align 4
  %385 = load i32, i32* %8, align 4
  %386 = load %struct.io_register*, %struct.io_register** %9, align 8
  %387 = load i32, i32* @VIACR, align 4
  %388 = call i32 @viafb_load_reg(i32 %384, i32 %385, %struct.io_register* %386, i32 %387)
  %389 = load i32, i32* %17, align 4
  %390 = call i32 @IGA2_DISPLAY_QUEUE_EXPIRE_NUM_FORMULA(i32 %389)
  store i32 %390, i32* %7, align 4
  %391 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @display_queue_expire_num_reg, i32 0, i32 0, i32 0), align 8
  store i32 %391, i32* %8, align 4
  %392 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @display_queue_expire_num_reg, i32 0, i32 0, i32 1), align 8
  store %struct.io_register* %392, %struct.io_register** %9, align 8
  %393 = load i32, i32* %7, align 4
  %394 = load i32, i32* %8, align 4
  %395 = load %struct.io_register*, %struct.io_register** %9, align 8
  %396 = load i32, i32* @VIACR, align 4
  %397 = call i32 @viafb_load_reg(i32 %393, i32 %394, %struct.io_register* %395, i32 %396)
  br label %398

398:                                              ; preds = %370, %163
  ret void
}

declare dso_local i32 @IGA1_FIFO_DEPTH_SELECT_FORMULA(i32) #1

declare dso_local i32 @viafb_load_reg(i32, i32, %struct.io_register*, i32) #1

declare dso_local i32 @IGA1_FIFO_THRESHOLD_FORMULA(i32) #1

declare dso_local i32 @IGA1_FIFO_HIGH_THRESHOLD_FORMULA(i32) #1

declare dso_local i32 @IGA1_DISPLAY_QUEUE_EXPIRE_NUM_FORMULA(i32) #1

declare dso_local i32 @IGA2_FIFO_DEPTH_SELECT_FORMULA(i32) #1

declare dso_local i32 @IGA2_FIFO_THRESHOLD_FORMULA(i32) #1

declare dso_local i32 @IGA2_FIFO_HIGH_THRESHOLD_FORMULA(i32) #1

declare dso_local i32 @IGA2_DISPLAY_QUEUE_EXPIRE_NUM_FORMULA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

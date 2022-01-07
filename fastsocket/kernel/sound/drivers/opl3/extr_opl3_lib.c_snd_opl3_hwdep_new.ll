; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_lib.c_snd_opl3_hwdep_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_lib.c_snd_opl3_hwdep_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3 = type { i32, i32, %struct.TYPE_5__*, %struct.snd_hwdep*, %struct.snd_card* }
%struct.TYPE_5__ = type { i8* }
%struct.snd_hwdep = type { i32, i8*, i8*, %struct.TYPE_4__, i32, i32, i32, %struct.snd_opl3* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.snd_card = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"OPL2/OPL3\00", align 1
@OPL3_HW_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"OPL2 FM\00", align 1
@SNDRV_HWDEP_IFACE_OPL2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"OPL3 FM\00", align 1
@SNDRV_HWDEP_IFACE_OPL3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"OPL4 FM\00", align 1
@SNDRV_HWDEP_IFACE_OPL4 = common dso_local global i32 0, align 4
@snd_opl3_open = common dso_local global i32 0, align 4
@snd_opl3_ioctl = common dso_local global i32 0, align 4
@snd_opl3_write = common dso_local global i32 0, align 4
@snd_opl3_release = common dso_local global i32 0, align 4
@SNDRV_OSS_DEVICE_TYPE_DMFM = common dso_local global i32 0, align 4
@SNDRV_SEQ_DEV_ID_OPL3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_opl3_hwdep_new(%struct.snd_opl3* %0, i32 %1, i32 %2, %struct.snd_hwdep** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_opl3*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_hwdep**, align 8
  %10 = alloca %struct.snd_hwdep*, align 8
  %11 = alloca %struct.snd_card*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_opl3* %0, %struct.snd_opl3** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.snd_hwdep** %3, %struct.snd_hwdep*** %9, align 8
  %13 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %14 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %13, i32 0, i32 4
  %15 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  store %struct.snd_card* %15, %struct.snd_card** %11, align 8
  %16 = load %struct.snd_hwdep**, %struct.snd_hwdep*** %9, align 8
  %17 = icmp ne %struct.snd_hwdep** %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load %struct.snd_hwdep**, %struct.snd_hwdep*** %9, align 8
  store %struct.snd_hwdep* null, %struct.snd_hwdep** %19, align 8
  br label %20

20:                                               ; preds = %18, %4
  %21 = load %struct.snd_card*, %struct.snd_card** %11, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @snd_hwdep_new(%struct.snd_card* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %22, %struct.snd_hwdep** %10)
  store i32 %23, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.snd_card*, %struct.snd_card** %11, align 8
  %27 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %28 = call i32 @snd_device_free(%struct.snd_card* %26, %struct.snd_opl3* %27)
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %5, align 4
  br label %101

30:                                               ; preds = %20
  %31 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %32 = load %struct.snd_hwdep*, %struct.snd_hwdep** %10, align 8
  %33 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %32, i32 0, i32 7
  store %struct.snd_opl3* %31, %struct.snd_opl3** %33, align 8
  %34 = load %struct.snd_hwdep*, %struct.snd_hwdep** %10, align 8
  %35 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.snd_hwdep*, %struct.snd_hwdep** %10, align 8
  %37 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.snd_hwdep*, %struct.snd_hwdep** %10, align 8
  %40 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @strcpy(i8* %38, i8* %41)
  %43 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %44 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @OPL3_HW_MASK, align 4
  %47 = and i32 %45, %46
  switch i32 %47, label %72 [
    i32 130, label %48
    i32 129, label %56
    i32 128, label %64
  ]

48:                                               ; preds = %30
  %49 = load %struct.snd_hwdep*, %struct.snd_hwdep** %10, align 8
  %50 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @strcpy(i8* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @SNDRV_HWDEP_IFACE_OPL2, align 4
  %54 = load %struct.snd_hwdep*, %struct.snd_hwdep** %10, align 8
  %55 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  br label %72

56:                                               ; preds = %30
  %57 = load %struct.snd_hwdep*, %struct.snd_hwdep** %10, align 8
  %58 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strcpy(i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @SNDRV_HWDEP_IFACE_OPL3, align 4
  %62 = load %struct.snd_hwdep*, %struct.snd_hwdep** %10, align 8
  %63 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  br label %72

64:                                               ; preds = %30
  %65 = load %struct.snd_hwdep*, %struct.snd_hwdep** %10, align 8
  %66 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @strcpy(i8* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32, i32* @SNDRV_HWDEP_IFACE_OPL4, align 4
  %70 = load %struct.snd_hwdep*, %struct.snd_hwdep** %10, align 8
  %71 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %30, %64, %56, %48
  %73 = load i32, i32* @snd_opl3_open, align 4
  %74 = load %struct.snd_hwdep*, %struct.snd_hwdep** %10, align 8
  %75 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* @snd_opl3_ioctl, align 4
  %78 = load %struct.snd_hwdep*, %struct.snd_hwdep** %10, align 8
  %79 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 8
  %81 = load i32, i32* @snd_opl3_write, align 4
  %82 = load %struct.snd_hwdep*, %struct.snd_hwdep** %10, align 8
  %83 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* @snd_opl3_release, align 4
  %86 = load %struct.snd_hwdep*, %struct.snd_hwdep** %10, align 8
  %87 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  %89 = load %struct.snd_hwdep*, %struct.snd_hwdep** %10, align 8
  %90 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %91 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %90, i32 0, i32 3
  store %struct.snd_hwdep* %89, %struct.snd_hwdep** %91, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %94 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.snd_hwdep**, %struct.snd_hwdep*** %9, align 8
  %96 = icmp ne %struct.snd_hwdep** %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %72
  %98 = load %struct.snd_hwdep*, %struct.snd_hwdep** %10, align 8
  %99 = load %struct.snd_hwdep**, %struct.snd_hwdep*** %9, align 8
  store %struct.snd_hwdep* %98, %struct.snd_hwdep** %99, align 8
  br label %100

100:                                              ; preds = %97, %72
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %100, %25
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @snd_hwdep_new(%struct.snd_card*, i8*, i32, %struct.snd_hwdep**) #1

declare dso_local i32 @snd_device_free(%struct.snd_card*, %struct.snd_opl3*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

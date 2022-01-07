; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video.c_cx25821_video_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video.c_cx25821_video_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i64, i32, i32, i32*, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__*, %struct.cx25821_dev* }
%struct.video_device = type { i32 }

@cx25821_vid_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"video\00", align 1
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@video_nr = common dso_local global i32* null, align 8
@PCI_INT_MSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25821_video_register(%struct.cx25821_dev* %0, i32 %1, %struct.video_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx25821_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.video_device*, align 8
  %8 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.video_device* %2, %struct.video_device** %7, align 8
  %9 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %10 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %9, i32 0, i32 8
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %13 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %14 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %13, i32 0, i32 7
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store %struct.cx25821_dev* %12, %struct.cx25821_dev** %19, align 8
  %20 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %21 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %20, i32 0, i32 5
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i64 %24
  %26 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %27 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %26, i32 0, i32 7
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %32, align 8
  %33 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %34 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %33, i32 0, i32 6
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %42 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %41, i32 0, i32 6
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load i32, i32* @cx25821_vid_timeout, align 4
  %50 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %51 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %50, i32 0, i32 6
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  store i32 %49, i32* %57, align 8
  %58 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %59 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %58, i32 0, i32 7
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = ptrtoint %struct.TYPE_5__* %63 to i64
  %65 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %66 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %65, i32 0, i32 6
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  store i64 %64, i64* %72, align 8
  %73 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %74 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %73, i32 0, i32 6
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = call i32 @init_timer(%struct.TYPE_8__* %79)
  %81 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %82 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %85 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %84, i32 0, i32 6
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %92 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %91, i32 0, i32 5
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @cx25821_risc_stopper(i32 %83, i32* %90, i32 %98, i32 17, i32 0)
  %100 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %101 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %102 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.video_device*, %struct.video_device** %7, align 8
  %105 = call i32 @cx25821_vdev_init(%struct.cx25821_dev* %100, i32 %103, %struct.video_device* %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %106 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %107 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %105, i32* %111, align 4
  %112 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %113 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %120 = load i32*, i32** @video_nr, align 8
  %121 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %122 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @video_register_device(i32 %118, i32 %119, i32 %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %3
  br label %142

130:                                              ; preds = %3
  %131 = load i32, i32* @PCI_INT_MSK, align 4
  %132 = call i32 @cx_set(i32 %131, i32 255)
  %133 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %134 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %133, i32 0, i32 1
  %135 = call i32 @mutex_lock(i32* %134)
  %136 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %137 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %136, i32 0, i32 1
  %138 = call i32 @mutex_unlock(i32* %137)
  %139 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @init_controls(%struct.cx25821_dev* %139, i32 %140)
  store i32 0, i32* %4, align 4
  br label %147

142:                                              ; preds = %129
  %143 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @cx25821_video_unregister(%struct.cx25821_dev* %143, i32 %144)
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %142, %130
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_8__*) #1

declare dso_local i32 @cx25821_risc_stopper(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @cx25821_vdev_init(%struct.cx25821_dev*, i32, %struct.video_device*, i8*) #1

declare dso_local i32 @video_register_device(i32, i32, i32) #1

declare dso_local i32 @cx_set(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @init_controls(%struct.cx25821_dev*, i32) #1

declare dso_local i32 @cx25821_video_unregister(%struct.cx25821_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

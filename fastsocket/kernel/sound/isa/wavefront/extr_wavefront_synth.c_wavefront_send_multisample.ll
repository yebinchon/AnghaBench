; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wavefront/extr_wavefront_synth.c_wavefront_send_multisample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wavefront/extr_wavefront_synth.c_wavefront_send_multisample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WF_DEBUG_LOAD_PATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"multi %d with %d=%d samples\0A\00", align 1
@WF_DEBUG_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"sample[%d] = %d\0A\00", align 1
@WFC_DOWNLOAD_MULTISAMPLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"download of multisample failed.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@WF_SLOT_FILLED = common dso_local global i32 0, align 4
@WF_ST_MULTISAMPLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @wavefront_send_multisample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wavefront_send_multisample(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kmalloc(i32 4, i32 %9)
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %119

16:                                               ; preds = %2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = call i32 @munge_int32(i64 %19, i8* %21, i32 2)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 7
  %29 = shl i32 1, %28
  store i32 %29, i32* %7, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  store i8 %35, i8* %37, align 1
  %38 = load i32, i32* @WF_DEBUG_LOAD_PATCH, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (i32, i8*, i32, i64, ...) @DPRINT(i32 %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %42, i64 %48, i32 %49)
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %86, %16
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %89

55:                                               ; preds = %51
  %56 = load i32, i32* @WF_DEBUG_LOAD_PATCH, align 4
  %57 = load i32, i32* @WF_DEBUG_DATA, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (i32, i8*, i32, i64, ...) @DPRINT(i32 %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %59, i64 %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load i32, i32* %6, align 4
  %81 = mul nsw i32 %80, 2
  %82 = add nsw i32 3, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %79, i64 %83
  %85 = call i32 @munge_int32(i64 %78, i8* %84, i32 2)
  br label %86

86:                                               ; preds = %55
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %51

89:                                               ; preds = %51
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %91 = load i32, i32* @WFC_DOWNLOAD_MULTISAMPLE, align 4
  %92 = load i32, i32* %7, align 4
  %93 = mul nsw i32 %92, 2
  %94 = add nsw i32 %93, 3
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = load i8*, i8** %8, align 8
  %98 = call i64 @snd_wavefront_cmd(%struct.TYPE_11__* %90, i32 %91, i8* %96, i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %89
  %101 = call i32 @snd_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 @kfree(i8* %102)
  %104 = load i32, i32* @EIO, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %119

106:                                              ; preds = %89
  %107 = load i32, i32* @WF_SLOT_FILLED, align 4
  %108 = load i32, i32* @WF_ST_MULTISAMPLE, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  store i32 %109, i32* %116, align 4
  %117 = load i8*, i8** %8, align 8
  %118 = call i32 @kfree(i8* %117)
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %106, %100, %13
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @munge_int32(i64, i8*, i32) #1

declare dso_local i32 @DPRINT(i32, i8*, i32, i64, ...) #1

declare dso_local i64 @snd_wavefront_cmd(%struct.TYPE_11__*, i32, i8*, i8*) #1

declare dso_local i32 @snd_printk(i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

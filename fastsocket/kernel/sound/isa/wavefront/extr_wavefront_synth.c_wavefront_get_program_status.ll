; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wavefront/extr_wavefront_synth.c_wavefront_get_program_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wavefront/extr_wavefront_synth.c_wavefront_get_program_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }

@WF_PROGRAM_BYTES = common dso_local global i32 0, align 4
@WF_MAX_PROGRAM = common dso_local global i32 0, align 4
@WFC_UPLOAD_PROGRAM = common dso_local global i32 0, align 4
@WF_SLOT_USED = common dso_local global i32 0, align 4
@WF_NUM_LAYERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"upload program error 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%d programs slots in use\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @wavefront_get_program_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wavefront_get_program_status(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %11 = load i32, i32* @WF_PROGRAM_BYTES, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %93, %1
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @WF_MAX_PROGRAM, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %96

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %6, align 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = load i32, i32* @WFC_UPLOAD_PROGRAM, align 4
  %24 = call i32 @snd_wavefront_cmd(%struct.TYPE_8__* %22, i32 %23, i8* %14, i8* %6)
  store i32 %24, i32* %8, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %72

26:                                               ; preds = %19
  %27 = load i32, i32* @WF_SLOT_USED, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %27
  store i32 %35, i32* %33, align 4
  %36 = bitcast %struct.TYPE_7__* %5 to i8*
  %37 = load i32, i32* @WF_PROGRAM_BYTES, align 4
  %38 = call i32 @demunge_buf(i8* %14, i8* %36, i32 %37)
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %68, %26
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @WF_NUM_LAYERS, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %43
  %53 = load i32, i32* @WF_SLOT_USED, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32, i32* %56, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %53
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %52, %43
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %39

71:                                               ; preds = %39
  br label %92

72:                                               ; preds = %19
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 0, i32* %81, align 4
  br label %91

82:                                               ; preds = %72
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @snd_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 0, i32* %90, align 4
  br label %91

91:                                               ; preds = %82, %75
  br label %92

92:                                               ; preds = %91, %71
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %15

96:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %97

97:                                               ; preds = %114, %96
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @WF_MAX_PROGRAM, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %117

101:                                              ; preds = %97
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %101
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %110, %101
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %97

117:                                              ; preds = %97
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @snd_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %120)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snd_wavefront_cmd(%struct.TYPE_8__*, i32, i8*, i8*) #2

declare dso_local i32 @demunge_buf(i8*, i8*, i32) #2

declare dso_local i32 @snd_printk(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

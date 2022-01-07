; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/riptide/extr_riptide.c_setsamplerate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/riptide/extr_riptide.c_setsamplerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cmdret = type { i32* }
%struct.cmdif = type { i32 }

@CMDRET_ZERO = common dso_local global %union.cmdret zeroinitializer, align 8
@.str = private unnamed_addr constant [38 x i8] c"setsamplerate intdec: %d,%d rate: %d\0A\00", align 1
@MAX_WRITE_RETRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"sent samplerate %d: %d failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdif*, i8*, i32)* @setsamplerate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setsamplerate(%struct.cmdif* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmdif*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.cmdret, align 8
  %12 = alloca i32, align 4
  store %struct.cmdif* %0, %struct.cmdif** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = bitcast %union.cmdret* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%union.cmdret* @CMDRET_ZERO to i8*), i64 8, i1 false)
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (i8*, i8, i32, ...) @snd_printdd(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8 zeroext %16, i32 %20, i32 %21)
  store i32 48000, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 48000
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ 47999, %25 ], [ %27, %26 ]
  %30 = mul i32 %29, 65536
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = srem i32 %31, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = sdiv i32 %35, %34
  store i32 %36, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %101, %28
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %40, label %104

40:                                               ; preds = %37
  %41 = load i8*, i8** %6, align 8
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp ne i32 %43, 255
  br i1 %44, label %45, label %98

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %84, %45
  %47 = load %struct.cmdif*, %struct.cmdif** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i8, i8* %48, align 1
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @SEND_SSRC(%struct.cmdif* %47, i8 zeroext %49, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.cmdif*, %struct.cmdif** %5, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i8, i8* %55, align 1
  %57 = call i32 @SEND_RSRC(%struct.cmdif* %54, i8 zeroext %56, %union.cmdret* %11)
  br label %58

58:                                               ; preds = %46
  %59 = bitcast %union.cmdret* %11 to i32**
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %58
  %66 = bitcast %union.cmdret* %11 to i32**
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %65
  %73 = bitcast %union.cmdret* %11 to i32**
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* @MAX_WRITE_RETRY, align 4
  %83 = icmp slt i32 %80, %82
  br label %84

84:                                               ; preds = %79, %72, %65, %58
  %85 = phi i1 [ false, %72 ], [ false, %65 ], [ false, %58 ], [ %83, %79 ]
  br i1 %85, label %46, label %86

86:                                               ; preds = %84
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @MAX_WRITE_RETRY, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load i8*, i8** %6, align 8
  %92 = load i8, i8* %91, align 1
  %93 = load i32, i32* %7, align 4
  %94 = call i32 (i8*, i8, i32, ...) @snd_printdd(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %92, i32 %93)
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %105

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %40
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %6, align 8
  br label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %37

104:                                              ; preds = %37
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %90
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snd_printdd(i8*, i8 zeroext, i32, ...) #2

declare dso_local i32 @SEND_SSRC(%struct.cmdif*, i8 zeroext, i32, i32, i32) #2

declare dso_local i32 @SEND_RSRC(%struct.cmdif*, i8 zeroext, %union.cmdret*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

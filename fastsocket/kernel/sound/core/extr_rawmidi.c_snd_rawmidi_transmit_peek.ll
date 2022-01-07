; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_rawmidi.c_snd_rawmidi_transmit_peek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_rawmidi.c_snd_rawmidi_transmit_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.snd_rawmidi_runtime* }
%struct.snd_rawmidi_runtime = type { i8*, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [52 x i8] c"snd_rawmidi_transmit_peek: output is not active!!!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_rawmidi_transmit_peek(%struct.snd_rawmidi_substream* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_rawmidi_substream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_rawmidi_runtime*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %13 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %13, align 8
  store %struct.snd_rawmidi_runtime* %14, %struct.snd_rawmidi_runtime** %11, align 8
  %15 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %16 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = call i32 @snd_printd(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %146

23:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %24 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %25 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %24, i32 0, i32 4
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %29 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %32 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %140

36:                                               ; preds = %23
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %41 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %44 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = load i8*, i8** %6, align 8
  store i8 %47, i8* %48, align 1
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %139

51:                                               ; preds = %36
  %52 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %53 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %57 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = sub i64 %55, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %64, %51
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %69 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %72 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %70, %73
  %75 = icmp sgt i32 %67, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %66
  %77 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %78 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %81 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %79, %82
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %76, %66
  %85 = load i8*, i8** %6, align 8
  %86 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %87 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %90 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @memcpy(i8* %85, i8* %92, i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %7, align 4
  %97 = sub nsw i32 %96, %95
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %138

103:                                              ; preds = %84
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %106 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %109 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %107, %110
  %112 = load i32, i32* %10, align 4
  %113 = sub nsw i32 %111, %112
  %114 = icmp sgt i32 %104, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %103
  %116 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %117 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %120 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %118, %121
  %123 = load i32, i32* %10, align 4
  %124 = sub nsw i32 %122, %123
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %115, %103
  %126 = load i8*, i8** %6, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %131 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @memcpy(i8* %129, i8* %132, i32 %133)
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %9, align 4
  br label %138

138:                                              ; preds = %125, %84
  br label %139

139:                                              ; preds = %138, %39
  br label %140

140:                                              ; preds = %139, %35
  %141 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %142 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %141, i32 0, i32 4
  %143 = load i64, i64* %8, align 8
  %144 = call i32 @spin_unlock_irqrestore(i32* %142, i64 %143)
  %145 = load i32, i32* %9, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %140, %19
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @snd_printd(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

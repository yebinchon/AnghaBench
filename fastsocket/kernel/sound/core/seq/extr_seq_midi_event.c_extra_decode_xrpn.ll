; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi_event.c_extra_decode_xrpn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi_event.c_extra_decode_xrpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi_event = type { i8, i64 }
%struct.snd_seq_event = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@extra_decode_xrpn.cbytes_nrpn = internal global [4 x i8] c"\82\83\84\85", align 1
@extra_decode_xrpn.cbytes_rpn = internal global [4 x i8] c"\80\81\84\85", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MIDI_CMD_CONTROL = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_NONREGPARAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_midi_event*, i8*, i32, %struct.snd_seq_event*)* @extra_decode_xrpn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extra_decode_xrpn(%struct.snd_midi_event* %0, i8* %1, i32 %2, %struct.snd_seq_event* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_midi_event*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_seq_event*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca [4 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_midi_event* %0, %struct.snd_midi_event** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.snd_seq_event* %3, %struct.snd_seq_event** %9, align 8
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %152

20:                                               ; preds = %4
  %21 = load %struct.snd_midi_event*, %struct.snd_midi_event** %6, align 8
  %22 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 12
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %152

31:                                               ; preds = %25, %20
  %32 = load i32, i32* @MIDI_CMD_CONTROL, align 4
  %33 = load %struct.snd_seq_event*, %struct.snd_seq_event** %9, align 8
  %34 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 15
  %39 = or i32 %32, %38
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %10, align 1
  %41 = load %struct.snd_seq_event*, %struct.snd_seq_event** %9, align 8
  %42 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 16256
  %47 = ashr i32 %46, 7
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  store i8 %48, i8* %49, align 1
  %50 = load %struct.snd_seq_event*, %struct.snd_seq_event** %9, align 8
  %51 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 127
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 1
  store i8 %56, i8* %57, align 1
  %58 = load %struct.snd_seq_event*, %struct.snd_seq_event** %9, align 8
  %59 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, 16256
  %64 = ashr i32 %63, 7
  %65 = trunc i32 %64 to i8
  %66 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 2
  store i8 %65, i8* %66, align 1
  %67 = load %struct.snd_seq_event*, %struct.snd_seq_event** %9, align 8
  %68 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, 127
  %73 = trunc i32 %72 to i8
  %74 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 3
  store i8 %73, i8* %74, align 1
  %75 = load i8, i8* %10, align 1
  %76 = zext i8 %75 to i32
  %77 = load %struct.snd_midi_event*, %struct.snd_midi_event** %6, align 8
  %78 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %77, i32 0, i32 0
  %79 = load i8, i8* %78, align 8
  %80 = zext i8 %79 to i32
  %81 = icmp ne i32 %76, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %31
  %83 = load %struct.snd_midi_event*, %struct.snd_midi_event** %6, align 8
  %84 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %102, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 9
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %152

93:                                               ; preds = %87
  %94 = load i8, i8* %10, align 1
  %95 = load %struct.snd_midi_event*, %struct.snd_midi_event** %6, align 8
  %96 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %95, i32 0, i32 0
  store i8 %94, i8* %96, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %13, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  store i8 %94, i8* %101, align 1
  br label %102

102:                                              ; preds = %93, %82, %31
  %103 = load %struct.snd_seq_event*, %struct.snd_seq_event** %9, align 8
  %104 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @SNDRV_SEQ_EVENT_NONREGPARAM, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @extra_decode_xrpn.cbytes_nrpn, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @extra_decode_xrpn.cbytes_rpn, i64 0, i64 0)
  store i8* %109, i8** %11, align 8
  store i32 0, i32* %14, align 4
  br label %110

110:                                              ; preds = %147, %102
  %111 = load i32, i32* %14, align 4
  %112 = icmp slt i32 %111, 4
  br i1 %112, label %113, label %150

113:                                              ; preds = %110
  %114 = load %struct.snd_midi_event*, %struct.snd_midi_event** %6, align 8
  %115 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %113
  %119 = load i8, i8* %10, align 1
  %120 = load %struct.snd_midi_event*, %struct.snd_midi_event** %6, align 8
  %121 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %120, i32 0, i32 0
  store i8 %119, i8* %121, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %13, align 4
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %122, i64 %125
  store i8 %119, i8* %126, align 1
  br label %127

127:                                              ; preds = %118, %113
  %128 = load i8*, i8** %11, align 8
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = load i8*, i8** %7, align 8
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %13, align 4
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i8, i8* %133, i64 %136
  store i8 %132, i8* %137, align 1
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = load i8*, i8** %7, align 8
  %143 = load i32, i32* %13, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %13, align 4
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i8, i8* %142, i64 %145
  store i8 %141, i8* %146, align 1
  br label %147

147:                                              ; preds = %127
  %148 = load i32, i32* %14, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %14, align 4
  br label %110

150:                                              ; preds = %110
  %151 = load i32, i32* %13, align 4
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %150, %90, %28, %17
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

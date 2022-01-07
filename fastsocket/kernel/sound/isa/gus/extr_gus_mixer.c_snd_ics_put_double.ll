; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_mixer.c_snd_ics_put_double.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_mixer.c_snd_ics_put_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.snd_gus_card = type { i32, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8** }

@SNDRV_ICS_GF1_DEV = common dso_local global i32 0, align 4
@SNDRV_ICS_MASTER_DEV = common dso_local global i32 0, align 4
@MIXCNTRLPORT = common dso_local global i32 0, align 4
@MIXDATAPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ics_put_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ics_put_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_gus_card*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = call %struct.snd_gus_card* @snd_kcontrol_chip(%struct.snd_kcontrol* %14)
  store %struct.snd_gus_card* %15, %struct.snd_gus_card** %5, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 255
  store i32 %19, i32* %7, align 4
  %20 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %21 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 127
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %9, align 1
  %29 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %30 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 127
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %10, align 1
  %38 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %39 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %38, i32 0, i32 0
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %43 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i8**, i8*** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %11, align 1
  %52 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %53 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  store i8 %61, i8* %12, align 1
  %62 = load i8, i8* %9, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* %11, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp ne i32 %63, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %2
  %68 = load i8, i8* %10, align 1
  %69 = zext i8 %68 to i32
  %70 = load i8, i8* %12, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp ne i32 %69, %71
  br label %73

73:                                               ; preds = %67, %2
  %74 = phi i1 [ true, %2 ], [ %72, %67 ]
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %8, align 4
  %76 = load i8, i8* %9, align 1
  %77 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %78 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i8**, i8*** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  store i8 %76, i8* %85, align 1
  %86 = load i8, i8* %10, align 1
  %87 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %88 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i8**, i8*** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  store i8 %86, i8* %95, align 1
  %96 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %97 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %73
  %101 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %102 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %100
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @SNDRV_ICS_GF1_DEV, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @SNDRV_ICS_MASTER_DEV, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %109, %105
  %114 = load i8, i8* %9, align 1
  store i8 %114, i8* %13, align 1
  %115 = load i8, i8* %10, align 1
  store i8 %115, i8* %9, align 1
  %116 = load i8, i8* %13, align 1
  store i8 %116, i8* %10, align 1
  br label %117

117:                                              ; preds = %113, %109, %100, %73
  %118 = load i32, i32* %7, align 4
  %119 = shl i32 %118, 3
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = trunc i32 %120 to i8
  %122 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %123 = load i32, i32* @MIXCNTRLPORT, align 4
  %124 = call i32 @GUSP(%struct.snd_gus_card* %122, i32 %123)
  %125 = call i32 @outb(i8 zeroext %121, i32 %124)
  %126 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %127 = load i32, i32* @MIXDATAPORT, align 4
  %128 = call i32 @GUSP(%struct.snd_gus_card* %126, i32 %127)
  %129 = call i32 @outb(i8 zeroext 1, i32 %128)
  %130 = load i32, i32* %7, align 4
  %131 = or i32 %130, 2
  %132 = trunc i32 %131 to i8
  %133 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %134 = load i32, i32* @MIXCNTRLPORT, align 4
  %135 = call i32 @GUSP(%struct.snd_gus_card* %133, i32 %134)
  %136 = call i32 @outb(i8 zeroext %132, i32 %135)
  %137 = load i8, i8* %9, align 1
  %138 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %139 = load i32, i32* @MIXDATAPORT, align 4
  %140 = call i32 @GUSP(%struct.snd_gus_card* %138, i32 %139)
  %141 = call i32 @outb(i8 zeroext %137, i32 %140)
  %142 = load i32, i32* %7, align 4
  %143 = or i32 %142, 1
  %144 = trunc i32 %143 to i8
  %145 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %146 = load i32, i32* @MIXCNTRLPORT, align 4
  %147 = call i32 @GUSP(%struct.snd_gus_card* %145, i32 %146)
  %148 = call i32 @outb(i8 zeroext %144, i32 %147)
  %149 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %150 = load i32, i32* @MIXDATAPORT, align 4
  %151 = call i32 @GUSP(%struct.snd_gus_card* %149, i32 %150)
  %152 = call i32 @outb(i8 zeroext 2, i32 %151)
  %153 = load i32, i32* %7, align 4
  %154 = or i32 %153, 3
  %155 = trunc i32 %154 to i8
  %156 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %157 = load i32, i32* @MIXCNTRLPORT, align 4
  %158 = call i32 @GUSP(%struct.snd_gus_card* %156, i32 %157)
  %159 = call i32 @outb(i8 zeroext %155, i32 %158)
  %160 = load i8, i8* %10, align 1
  %161 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %162 = load i32, i32* @MIXDATAPORT, align 4
  %163 = call i32 @GUSP(%struct.snd_gus_card* %161, i32 %162)
  %164 = call i32 @outb(i8 zeroext %160, i32 %163)
  %165 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %166 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %165, i32 0, i32 0
  %167 = load i64, i64* %6, align 8
  %168 = call i32 @spin_unlock_irqrestore(i32* %166, i64 %167)
  %169 = load i32, i32* %8, align 4
  ret i32 %169
}

declare dso_local %struct.snd_gus_card* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @GUSP(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_get_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }
%struct.ac97_codec_id = type { i8*, i32, i32, i32 (%struct.snd_ac97*)* }

@.str = private unnamed_addr constant [12 x i8] c"0x%x %c%c%c\00", align 1
@snd_ac97_codec_id_vendors = common dso_local global i32 0, align 4
@AC97_MODEM_PATCH = common dso_local global i32 0, align 4
@snd_ac97_codec_ids = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" rev %d\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" id %x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_ac97_get_name(%struct.snd_ac97* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.snd_ac97*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ac97_codec_id*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = lshr i32 %12, 24
  %14 = call i32 @printable(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = lshr i32 %15, 16
  %17 = call i32 @printable(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = lshr i32 %18, 8
  %20 = call i32 @printable(i32 %19)
  %21 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %17, i32 %20)
  %22 = load i32, i32* @snd_ac97_codec_id_vendors, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.ac97_codec_id* @look_for_codec_id(i32 %22, i32 %23)
  store %struct.ac97_codec_id* %24, %struct.ac97_codec_id** %9, align 8
  %25 = load %struct.ac97_codec_id*, %struct.ac97_codec_id** %9, align 8
  %26 = icmp ne %struct.ac97_codec_id* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  br label %144

28:                                               ; preds = %4
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.ac97_codec_id*, %struct.ac97_codec_id** %9, align 8
  %31 = getelementptr inbounds %struct.ac97_codec_id, %struct.ac97_codec_id* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strcpy(i8* %29, i8* %32)
  %34 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %35 = icmp ne %struct.snd_ac97* %34, null
  br i1 %35, label %36, label %68

36:                                               ; preds = %28
  %37 = load %struct.ac97_codec_id*, %struct.ac97_codec_id** %9, align 8
  %38 = getelementptr inbounds %struct.ac97_codec_id, %struct.ac97_codec_id* %37, i32 0, i32 3
  %39 = load i32 (%struct.snd_ac97*)*, i32 (%struct.snd_ac97*)** %38, align 8
  %40 = icmp ne i32 (%struct.snd_ac97*)* %39, null
  br i1 %40, label %41, label %68

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load %struct.ac97_codec_id*, %struct.ac97_codec_id** %9, align 8
  %46 = getelementptr inbounds %struct.ac97_codec_id, %struct.ac97_codec_id* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @AC97_MODEM_PATCH, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %44, %41
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %51
  %55 = load %struct.ac97_codec_id*, %struct.ac97_codec_id** %9, align 8
  %56 = getelementptr inbounds %struct.ac97_codec_id, %struct.ac97_codec_id* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @AC97_MODEM_PATCH, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %54, %44
  %62 = load %struct.ac97_codec_id*, %struct.ac97_codec_id** %9, align 8
  %63 = getelementptr inbounds %struct.ac97_codec_id, %struct.ac97_codec_id* %62, i32 0, i32 3
  %64 = load i32 (%struct.snd_ac97*)*, i32 (%struct.snd_ac97*)** %63, align 8
  %65 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %66 = call i32 %64(%struct.snd_ac97* %65)
  br label %67

67:                                               ; preds = %61, %54, %51
  br label %68

68:                                               ; preds = %67, %36, %28
  %69 = load i32, i32* @snd_ac97_codec_ids, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call %struct.ac97_codec_id* @look_for_codec_id(i32 %69, i32 %70)
  store %struct.ac97_codec_id* %71, %struct.ac97_codec_id** %9, align 8
  %72 = load %struct.ac97_codec_id*, %struct.ac97_codec_id** %9, align 8
  %73 = icmp ne %struct.ac97_codec_id* %72, null
  br i1 %73, label %74, label %135

74:                                               ; preds = %68
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @strcat(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i8*, i8** %7, align 8
  %78 = load %struct.ac97_codec_id*, %struct.ac97_codec_id** %9, align 8
  %79 = getelementptr inbounds %struct.ac97_codec_id, %struct.ac97_codec_id* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @strcat(i8* %77, i8* %80)
  %82 = load %struct.ac97_codec_id*, %struct.ac97_codec_id** %9, align 8
  %83 = getelementptr inbounds %struct.ac97_codec_id, %struct.ac97_codec_id* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, -1
  br i1 %85, label %86, label %99

86:                                               ; preds = %74
  %87 = load i8*, i8** %7, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @strlen(i8* %88)
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.ac97_codec_id*, %struct.ac97_codec_id** %9, align 8
  %94 = getelementptr inbounds %struct.ac97_codec_id, %struct.ac97_codec_id* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = xor i32 %95, -1
  %97 = and i32 %92, %96
  %98 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %86, %74
  %100 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %101 = icmp ne %struct.snd_ac97* %100, null
  br i1 %101, label %102, label %134

102:                                              ; preds = %99
  %103 = load %struct.ac97_codec_id*, %struct.ac97_codec_id** %9, align 8
  %104 = getelementptr inbounds %struct.ac97_codec_id, %struct.ac97_codec_id* %103, i32 0, i32 3
  %105 = load i32 (%struct.snd_ac97*)*, i32 (%struct.snd_ac97*)** %104, align 8
  %106 = icmp ne i32 (%struct.snd_ac97*)* %105, null
  br i1 %106, label %107, label %134

107:                                              ; preds = %102
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load %struct.ac97_codec_id*, %struct.ac97_codec_id** %9, align 8
  %112 = getelementptr inbounds %struct.ac97_codec_id, %struct.ac97_codec_id* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @AC97_MODEM_PATCH, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %110, %107
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %133, label %120

120:                                              ; preds = %117
  %121 = load %struct.ac97_codec_id*, %struct.ac97_codec_id** %9, align 8
  %122 = getelementptr inbounds %struct.ac97_codec_id, %struct.ac97_codec_id* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @AC97_MODEM_PATCH, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %120, %110
  %128 = load %struct.ac97_codec_id*, %struct.ac97_codec_id** %9, align 8
  %129 = getelementptr inbounds %struct.ac97_codec_id, %struct.ac97_codec_id* %128, i32 0, i32 3
  %130 = load i32 (%struct.snd_ac97*)*, i32 (%struct.snd_ac97*)** %129, align 8
  %131 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %132 = call i32 %130(%struct.snd_ac97* %131)
  br label %133

133:                                              ; preds = %127, %120, %117
  br label %134

134:                                              ; preds = %133, %102, %99
  br label %144

135:                                              ; preds = %68
  %136 = load i8*, i8** %7, align 8
  %137 = load i8*, i8** %7, align 8
  %138 = call i32 @strlen(i8* %137)
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %136, i64 %139
  %141 = load i32, i32* %6, align 4
  %142 = and i32 %141, 255
  %143 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %140, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %27, %135, %134
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @printable(i32) #1

declare dso_local %struct.ac97_codec_id* @look_for_codec_id(i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

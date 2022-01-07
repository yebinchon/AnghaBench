; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_proc.c_print_gpio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_proc.c_print_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_buffer = type { i32 }
%struct.hda_codec = type { i32, i32, i32 }

@AC_PAR_GPIO_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"GPIO: io=%d, o=%d, i=%d, unsolicited=%d, wake=%d\0A\00", align 1
@AC_GPIO_IO_COUNT = common dso_local global i32 0, align 4
@AC_GPIO_O_COUNT = common dso_local global i32 0, align 4
@AC_GPIO_O_COUNT_SHIFT = common dso_local global i32 0, align 4
@AC_GPIO_I_COUNT = common dso_local global i32 0, align 4
@AC_GPIO_I_COUNT_SHIFT = common dso_local global i32 0, align 4
@AC_GPIO_UNSOLICITED = common dso_local global i32 0, align 4
@AC_GPIO_WAKE = common dso_local global i32 0, align 4
@AC_VERB_GET_GPIO_MASK = common dso_local global i32 0, align 4
@AC_VERB_GET_GPIO_DIRECTION = common dso_local global i32 0, align 4
@AC_VERB_GET_GPIO_WAKE_MASK = common dso_local global i32 0, align 4
@AC_VERB_GET_GPIO_UNSOLICITED_RSP_MASK = common dso_local global i32 0, align 4
@AC_VERB_GET_GPIO_STICKY_MASK = common dso_local global i32 0, align 4
@AC_VERB_GET_GPIO_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"  IO[%d]: enable=%d, dir=%d, wake=%d, sticky=%d, data=%d, unsol=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_buffer*, %struct.hda_codec*, i32)* @print_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_gpio(%struct.snd_info_buffer* %0, %struct.hda_codec* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_info_buffer* %0, %struct.snd_info_buffer** %4, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %17 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %18 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @AC_PAR_GPIO_CAP, align 4
  %21 = call i32 @snd_hda_param_read(%struct.hda_codec* %16, i32 %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @AC_GPIO_IO_COUNT, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @AC_GPIO_O_COUNT, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @AC_GPIO_O_COUNT_SHIFT, align 4
  %30 = lshr i32 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @AC_GPIO_I_COUNT, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @AC_GPIO_I_COUNT_SHIFT, align 4
  %35 = lshr i32 %33, %34
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @AC_GPIO_UNSOLICITED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @AC_GPIO_WAKE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  %48 = call i32 (%struct.snd_info_buffer*, i8*, i32, i32, i32, i32, i32, ...) @snd_iprintf(%struct.snd_info_buffer* %22, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %30, i32 %35, i32 %41, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @AC_GPIO_IO_COUNT, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %3
  %55 = load i32, i32* %15, align 4
  %56 = icmp sgt i32 %55, 8
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %3
  br label %149

58:                                               ; preds = %54
  %59 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @AC_VERB_GET_GPIO_MASK, align 4
  %62 = call i32 @snd_hda_codec_read(%struct.hda_codec* %59, i32 %60, i32 0, i32 %61, i32 0)
  store i32 %62, i32* %8, align 4
  %63 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @AC_VERB_GET_GPIO_DIRECTION, align 4
  %66 = call i32 @snd_hda_codec_read(%struct.hda_codec* %63, i32 %64, i32 0, i32 %65, i32 0)
  store i32 %66, i32* %9, align 4
  %67 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @AC_VERB_GET_GPIO_WAKE_MASK, align 4
  %70 = call i32 @snd_hda_codec_read(%struct.hda_codec* %67, i32 %68, i32 0, i32 %69, i32 0)
  store i32 %70, i32* %10, align 4
  %71 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @AC_VERB_GET_GPIO_UNSOLICITED_RSP_MASK, align 4
  %74 = call i32 @snd_hda_codec_read(%struct.hda_codec* %71, i32 %72, i32 0, i32 %73, i32 0)
  store i32 %74, i32* %11, align 4
  %75 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @AC_VERB_GET_GPIO_STICKY_MASK, align 4
  %78 = call i32 @snd_hda_codec_read(%struct.hda_codec* %75, i32 %76, i32 0, i32 %77, i32 0)
  store i32 %78, i32* %12, align 4
  %79 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @AC_VERB_GET_GPIO_DATA, align 4
  %82 = call i32 @snd_hda_codec_read(%struct.hda_codec* %79, i32 %80, i32 0, i32 %81, i32 0)
  store i32 %82, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %83

83:                                               ; preds = %133, %58
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %136

87:                                               ; preds = %83
  %88 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %14, align 4
  %92 = shl i32 1, %91
  %93 = and i32 %90, %92
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 1, i32 0
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %14, align 4
  %99 = shl i32 1, %98
  %100 = and i32 %97, %99
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 1, i32 0
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %14, align 4
  %106 = shl i32 1, %105
  %107 = and i32 %104, %106
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 1, i32 0
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %14, align 4
  %113 = shl i32 1, %112
  %114 = and i32 %111, %113
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 1, i32 0
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %14, align 4
  %120 = shl i32 1, %119
  %121 = and i32 %118, %120
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 1, i32 0
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %14, align 4
  %127 = shl i32 1, %126
  %128 = and i32 %125, %127
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 1, i32 0
  %132 = call i32 (%struct.snd_info_buffer*, i8*, i32, i32, i32, i32, i32, ...) @snd_iprintf(%struct.snd_info_buffer* %88, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %96, i32 %103, i32 %110, i32 %117, i32 %124, i32 %131)
  br label %133

133:                                              ; preds = %87
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %14, align 4
  br label %83

136:                                              ; preds = %83
  %137 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %138 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %141 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %140, i32 0, i32 1
  %142 = call i32 @print_nid_array(%struct.snd_info_buffer* %137, %struct.hda_codec* %138, i32 %139, i32* %141)
  %143 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %144 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %147 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %146, i32 0, i32 0
  %148 = call i32 @print_nid_array(%struct.snd_info_buffer* %143, %struct.hda_codec* %144, i32 %145, i32* %147)
  br label %149

149:                                              ; preds = %136, %57
  ret void
}

declare dso_local i32 @snd_hda_param_read(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @print_nid_array(%struct.snd_info_buffer*, %struct.hda_codec*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

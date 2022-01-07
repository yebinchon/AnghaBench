; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-dapm.c_dapm_update_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-dapm.c_dapm_update_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i64, i32, i32, i32, i32, i64, %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@snd_soc_dapm_input = common dso_local global i64 0, align 8
@snd_soc_dapm_output = common dso_local global i64 0, align 8
@snd_soc_dapm_hp = common dso_local global i64 0, align 8
@snd_soc_dapm_mic = common dso_local global i64 0, align 8
@snd_soc_dapm_line = common dso_local global i64 0, align 8
@snd_soc_dapm_spk = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"pop test %s : %s in %d ms\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"reg %x old %x new %x change %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*)* @dapm_update_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dapm_update_bits(%struct.snd_soc_dapm_widget* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_dapm_widget*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_codec*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %3, align 8
  %9 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 6
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  store %struct.snd_soc_codec* %11, %struct.snd_soc_codec** %8, align 8
  %12 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %52, label %16

16:                                               ; preds = %1
  %17 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @snd_soc_dapm_input, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %52, label %22

22:                                               ; preds = %16
  %23 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %24 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @snd_soc_dapm_output, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %52, label %28

28:                                               ; preds = %22
  %29 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %30 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @snd_soc_dapm_hp, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %52, label %34

34:                                               ; preds = %28
  %35 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %36 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @snd_soc_dapm_mic, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %52, label %40

40:                                               ; preds = %34
  %41 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %42 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @snd_soc_dapm_line, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %48 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @snd_soc_dapm_spk, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46, %40, %34, %28, %22, %16, %1
  store i32 0, i32* %2, align 4
  br label %127

53:                                               ; preds = %46
  %54 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %55 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %5, align 4
  %57 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %58 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 0, i32 1
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %61, %53
  %67 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %68 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %69 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @snd_soc_read(%struct.snd_soc_codec* %67, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %74 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 1, %75
  %77 = xor i32 %76, -1
  %78 = and i32 %72, %77
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %81 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %79, %82
  %84 = or i32 %78, %83
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %85, %86
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %118

91:                                               ; preds = %66
  %92 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %93 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %96 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %99 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %104 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %105 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @pop_dbg(i32 %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %97, i8* %103, i32 %106)
  %108 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %109 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %110 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @snd_soc_write(%struct.snd_soc_codec* %108, i32 %111, i32 %112)
  %114 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %115 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @pop_wait(i32 %116)
  br label %118

118:                                              ; preds = %91, %66
  %119 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %120 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %121, i32 %122, i32 %123, i32 %124)
  %126 = load i32, i32* %4, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %118, %52
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @pop_dbg(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @pop_wait(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

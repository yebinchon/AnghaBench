; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_mixer.c_vx_output_level_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_mixer.c_vx_output_level_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.vx_core = type { i32**, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @vx_output_level_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_output_level_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.vx_core*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.vx_core* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.vx_core* %11, %struct.vx_core** %6, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %17 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %22 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %30 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %2
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ugt i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41, %2
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %113

49:                                               ; preds = %41
  %50 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %51 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %50, i32 0, i32 1
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %56 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %55, i32 0, i32 0
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %54, %63
  br i1 %64, label %78, label %65

65:                                               ; preds = %49
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %69 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %68, i32 0, i32 0
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %67, %76
  br i1 %77, label %78, label %109

78:                                               ; preds = %65, %49
  %79 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @vx_set_analog_output_level(%struct.vx_core* %79, i32 %80, i32 %82, i32 %84)
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %89 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %88, i32 0, i32 0
  %90 = load i32**, i32*** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %87, i32* %95, align 4
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %99 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %98, i32 0, i32 0
  %100 = load i32**, i32*** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  store i32 %97, i32* %105, align 4
  %106 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %107 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %106, i32 0, i32 1
  %108 = call i32 @mutex_unlock(i32* %107)
  store i32 1, i32* %3, align 4
  br label %113

109:                                              ; preds = %65
  %110 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %111 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %110, i32 0, i32 1
  %112 = call i32 @mutex_unlock(i32* %111)
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %109, %78, %46
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.vx_core* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vx_set_analog_output_level(%struct.vx_core*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

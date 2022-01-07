; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux.c_snd_emux_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux.c_snd_emux_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux = type { i64, i32*, i32, %struct.TYPE_2__, i32*, i32, %struct.snd_card*, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.snd_card = type { i32 }
%struct.snd_sf_callback = type { i32, i32, i32, %struct.snd_emux* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sf_sample_new = common dso_local global i32 0, align 4
@sf_sample_free = common dso_local global i32 0, align 4
@sf_sample_reset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emux_register(%struct.snd_emux* %0, %struct.snd_card* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_emux*, align 8
  %7 = alloca %struct.snd_card*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_sf_callback, align 8
  store %struct.snd_emux* %0, %struct.snd_emux** %6, align 8
  store %struct.snd_card* %1, %struct.snd_card** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.snd_emux*, %struct.snd_emux** %6, align 8
  %13 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.snd_emux*, %struct.snd_emux** %6, align 8
  %18 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sle i64 %19, 0
  br label %21

21:                                               ; preds = %16, %4
  %22 = phi i1 [ true, %4 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  %24 = call i64 @snd_BUG_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %127

29:                                               ; preds = %21
  %30 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %31 = icmp ne %struct.snd_card* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i8*, i8** %9, align 8
  %34 = icmp ne i8* %33, null
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i1 [ true, %29 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = call i64 @snd_BUG_ON(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %127

44:                                               ; preds = %36
  %45 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %46 = load %struct.snd_emux*, %struct.snd_emux** %6, align 8
  %47 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %46, i32 0, i32 6
  store %struct.snd_card* %45, %struct.snd_card** %47, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i32 @kstrdup(i8* %48, i32 %49)
  %51 = load %struct.snd_emux*, %struct.snd_emux** %6, align 8
  %52 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load %struct.snd_emux*, %struct.snd_emux** %6, align 8
  %54 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i32* @kcalloc(i64 %55, i32 4, i32 %56)
  %58 = load %struct.snd_emux*, %struct.snd_emux** %6, align 8
  %59 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %58, i32 0, i32 4
  store i32* %57, i32** %59, align 8
  %60 = load %struct.snd_emux*, %struct.snd_emux** %6, align 8
  %61 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %44
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %127

67:                                               ; preds = %44
  %68 = call i32 @memset(%struct.snd_sf_callback* %11, i32 0, i32 24)
  %69 = load %struct.snd_emux*, %struct.snd_emux** %6, align 8
  %70 = getelementptr inbounds %struct.snd_sf_callback, %struct.snd_sf_callback* %11, i32 0, i32 3
  store %struct.snd_emux* %69, %struct.snd_emux** %70, align 8
  %71 = load %struct.snd_emux*, %struct.snd_emux** %6, align 8
  %72 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load i32, i32* @sf_sample_new, align 4
  %78 = getelementptr inbounds %struct.snd_sf_callback, %struct.snd_sf_callback* %11, i32 0, i32 2
  store i32 %77, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %67
  %80 = load %struct.snd_emux*, %struct.snd_emux** %6, align 8
  %81 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* @sf_sample_free, align 4
  %87 = getelementptr inbounds %struct.snd_sf_callback, %struct.snd_sf_callback* %11, i32 0, i32 1
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %79
  %89 = load %struct.snd_emux*, %struct.snd_emux** %6, align 8
  %90 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* @sf_sample_reset, align 4
  %96 = getelementptr inbounds %struct.snd_sf_callback, %struct.snd_sf_callback* %11, i32 0, i32 0
  store i32 %95, i32* %96, align 8
  br label %97

97:                                               ; preds = %94, %88
  %98 = load %struct.snd_emux*, %struct.snd_emux** %6, align 8
  %99 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32* @snd_sf_new(%struct.snd_sf_callback* %11, i32 %100)
  %102 = load %struct.snd_emux*, %struct.snd_emux** %6, align 8
  %103 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %102, i32 0, i32 1
  store i32* %101, i32** %103, align 8
  %104 = load %struct.snd_emux*, %struct.snd_emux** %6, align 8
  %105 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %97
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %127

111:                                              ; preds = %97
  %112 = load %struct.snd_emux*, %struct.snd_emux** %6, align 8
  %113 = call i32 @snd_emux_init_hwdep(%struct.snd_emux* %112)
  store i32 %113, i32* %10, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %5, align 4
  br label %127

117:                                              ; preds = %111
  %118 = load %struct.snd_emux*, %struct.snd_emux** %6, align 8
  %119 = call i32 @snd_emux_init_voices(%struct.snd_emux* %118)
  %120 = load %struct.snd_emux*, %struct.snd_emux** %6, align 8
  %121 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @snd_emux_init_seq(%struct.snd_emux* %120, %struct.snd_card* %121, i32 %122)
  %124 = load %struct.snd_emux*, %struct.snd_emux** %6, align 8
  %125 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %126 = call i32 @snd_emux_init_virmidi(%struct.snd_emux* %124, %struct.snd_card* %125)
  store i32 0, i32* %5, align 4
  br label %127

127:                                              ; preds = %117, %115, %108, %64, %41, %26
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @memset(%struct.snd_sf_callback*, i32, i32) #1

declare dso_local i32* @snd_sf_new(%struct.snd_sf_callback*, i32) #1

declare dso_local i32 @snd_emux_init_hwdep(%struct.snd_emux*) #1

declare dso_local i32 @snd_emux_init_voices(%struct.snd_emux*) #1

declare dso_local i32 @snd_emux_init_seq(%struct.snd_emux*, %struct.snd_card*, i32) #1

declare dso_local i32 @snd_emux_init_virmidi(%struct.snd_emux*, %struct.snd_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

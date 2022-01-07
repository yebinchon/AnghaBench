; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wss/extr_wss_lib.c_snd_wss_mixer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wss/extr_wss_lib.c_snd_wss_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wss = type { i32, %struct.TYPE_2__*, %struct.snd_card* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_card = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@WSS_HW_OPTI93X = common dso_local global i32 0, align 4
@snd_opti93x_controls = common dso_local global i32* null, align 8
@WSS_HW_AD1848_MASK = common dso_local global i32 0, align 4
@snd_ad1848_controls = common dso_local global i32* null, align 8
@snd_wss_controls = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_wss_mixer(%struct.snd_wss* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_wss*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_wss* %0, %struct.snd_wss** %3, align 8
  %7 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %8 = icmp ne %struct.snd_wss* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %11 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %9, %1
  %16 = phi i1 [ true, %1 ], [ %14, %9 ]
  %17 = zext i1 %16 to i32
  %18 = call i64 @snd_BUG_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %122

23:                                               ; preds = %15
  %24 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %25 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %24, i32 0, i32 2
  %26 = load %struct.snd_card*, %struct.snd_card** %25, align 8
  store %struct.snd_card* %26, %struct.snd_card** %4, align 8
  %27 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %28 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %31 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @strcpy(i32 %29, i32 %34)
  %36 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %37 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @WSS_HW_OPTI93X, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %61, %41
  %43 = load i32, i32* %5, align 4
  %44 = load i32*, i32** @snd_opti93x_controls, align 8
  %45 = call i32 @ARRAY_SIZE(i32* %44)
  %46 = icmp ult i32 %43, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %42
  %48 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %49 = load i32*, i32** @snd_opti93x_controls, align 8
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %54 = call i32 @snd_ctl_new1(i32* %52, %struct.snd_wss* %53)
  %55 = call i32 @snd_ctl_add(%struct.snd_card* %48, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %122

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %42

64:                                               ; preds = %42
  br label %121

65:                                               ; preds = %23
  %66 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %67 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @WSS_HW_AD1848_MASK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %92, %72
  %74 = load i32, i32* %5, align 4
  %75 = load i32*, i32** @snd_ad1848_controls, align 8
  %76 = call i32 @ARRAY_SIZE(i32* %75)
  %77 = icmp ult i32 %74, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %73
  %79 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %80 = load i32*, i32** @snd_ad1848_controls, align 8
  %81 = load i32, i32* %5, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %85 = call i32 @snd_ctl_new1(i32* %83, %struct.snd_wss* %84)
  %86 = call i32 @snd_ctl_add(%struct.snd_card* %79, i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %78
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %122

91:                                               ; preds = %78
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %5, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %73

95:                                               ; preds = %73
  br label %120

96:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %116, %96
  %98 = load i32, i32* %5, align 4
  %99 = load i32*, i32** @snd_wss_controls, align 8
  %100 = call i32 @ARRAY_SIZE(i32* %99)
  %101 = icmp ult i32 %98, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %97
  %103 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %104 = load i32*, i32** @snd_wss_controls, align 8
  %105 = load i32, i32* %5, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %109 = call i32 @snd_ctl_new1(i32* %107, %struct.snd_wss* %108)
  %110 = call i32 @snd_ctl_add(%struct.snd_card* %103, i32 %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %102
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %2, align 4
  br label %122

115:                                              ; preds = %102
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %5, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %5, align 4
  br label %97

119:                                              ; preds = %97
  br label %120

120:                                              ; preds = %119, %95
  br label %121

121:                                              ; preds = %120, %64
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %113, %89, %58, %20
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.snd_wss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

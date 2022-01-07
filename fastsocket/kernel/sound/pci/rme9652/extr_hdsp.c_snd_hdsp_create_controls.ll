; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_create_controls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_create_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32 }
%struct.snd_card = type { i32 }
%struct.hdsp = type { i64, %struct.snd_kcontrol* }
%struct.snd_kcontrol = type { i32 }

@snd_hdsp_controls = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"ADAT Lock Status\00", align 1
@snd_hdsp_adat_sync_check = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@Digiface = common dso_local global i64 0, align 8
@H9652 = common dso_local global i64 0, align 8
@H9632 = common dso_local global i64 0, align 8
@snd_hdsp_9632_controls = common dso_local global %struct.TYPE_7__* null, align 8
@snd_hdsp_96xx_aeb = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.hdsp*)* @snd_hdsp_create_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdsp_create_controls(%struct.snd_card* %0, %struct.hdsp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.hdsp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_kcontrol*, align 8
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.hdsp* %1, %struct.hdsp** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %34, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @snd_hdsp_controls, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %11)
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %9
  %15 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @snd_hdsp_controls, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i64 %18
  %20 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %21 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.TYPE_7__* %19, %struct.hdsp* %20)
  store %struct.snd_kcontrol* %21, %struct.snd_kcontrol** %8, align 8
  %22 = call i32 @snd_ctl_add(%struct.snd_card* %15, %struct.snd_kcontrol* %21)
  store i32 %22, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %127

26:                                               ; preds = %14
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %31 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %32 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %31, i32 0, i32 1
  store %struct.snd_kcontrol* %30, %struct.snd_kcontrol** %32, align 8
  br label %33

33:                                               ; preds = %29, %26
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %9

37:                                               ; preds = %9
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @snd_hdsp_adat_sync_check, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @snd_hdsp_adat_sync_check, i32 0, i32 1), align 8
  %38 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %39 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %40 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.TYPE_7__* @snd_hdsp_adat_sync_check, %struct.hdsp* %39)
  store %struct.snd_kcontrol* %40, %struct.snd_kcontrol** %8, align 8
  %41 = call i32 @snd_ctl_add(%struct.snd_card* %38, %struct.snd_kcontrol* %40)
  store i32 %41, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %127

45:                                               ; preds = %37
  %46 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %47 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @Digiface, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %53 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @H9652, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %51, %45
  store i32 1, i32* %6, align 4
  br label %58

58:                                               ; preds = %72, %57
  %59 = load i32, i32* %6, align 4
  %60 = icmp ult i32 %59, 3
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @snd_hdsp_adat_sync_check, i32 0, i32 1), align 8
  %64 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %65 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %66 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.TYPE_7__* @snd_hdsp_adat_sync_check, %struct.hdsp* %65)
  store %struct.snd_kcontrol* %66, %struct.snd_kcontrol** %8, align 8
  %67 = call i32 @snd_ctl_add(%struct.snd_card* %64, %struct.snd_kcontrol* %66)
  store i32 %67, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %127

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %58

75:                                               ; preds = %58
  br label %76

76:                                               ; preds = %75, %51
  %77 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %78 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @H9632, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %105

82:                                               ; preds = %76
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %101, %82
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** @snd_hdsp_9632_controls, align 8
  %86 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %85)
  %87 = icmp ult i32 %84, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %83
  %89 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** @snd_hdsp_9632_controls, align 8
  %91 = load i32, i32* %6, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i64 %92
  %94 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %95 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.TYPE_7__* %93, %struct.hdsp* %94)
  store %struct.snd_kcontrol* %95, %struct.snd_kcontrol** %8, align 8
  %96 = call i32 @snd_ctl_add(%struct.snd_card* %89, %struct.snd_kcontrol* %95)
  store i32 %96, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %3, align 4
  br label %127

100:                                              ; preds = %88
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %6, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %83

104:                                              ; preds = %83
  br label %105

105:                                              ; preds = %104, %76
  %106 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %107 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @H9632, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %105
  %112 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %113 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @H9652, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %111, %105
  %118 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %119 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %120 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.TYPE_7__* @snd_hdsp_96xx_aeb, %struct.hdsp* %119)
  store %struct.snd_kcontrol* %120, %struct.snd_kcontrol** %8, align 8
  %121 = call i32 @snd_ctl_add(%struct.snd_card* %118, %struct.snd_kcontrol* %120)
  store i32 %121, i32* %7, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i32, i32* %7, align 4
  store i32 %124, i32* %3, align 4
  br label %127

125:                                              ; preds = %117
  br label %126

126:                                              ; preds = %125, %111
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %123, %98, %69, %43, %24
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, %struct.snd_kcontrol*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.TYPE_7__*, %struct.hdsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

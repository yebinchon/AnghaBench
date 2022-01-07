; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/cs423x/extr_cs4236_lib.c_snd_cs4236_mixer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/cs423x/extr_cs4236_lib.c_snd_cs4236_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol_new = type { i32 }
%struct.snd_wss = type { i32, %struct.snd_card* }
%struct.snd_card = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@snd_cs4235_controls = common dso_local global %struct.snd_kcontrol_new* null, align 8
@snd_cs4236_controls = common dso_local global %struct.snd_kcontrol_new* null, align 8
@snd_cs4236_3d_controls_cs4235 = common dso_local global %struct.snd_kcontrol_new* null, align 8
@snd_cs4236_3d_controls_cs4237 = common dso_local global %struct.snd_kcontrol_new* null, align 8
@snd_cs4236_3d_controls_cs4238 = common dso_local global %struct.snd_kcontrol_new* null, align 8
@snd_cs4236_iec958_controls = common dso_local global %struct.snd_kcontrol_new* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_cs4236_mixer(%struct.snd_wss* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_wss*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_kcontrol_new*, align 8
  store %struct.snd_wss* %0, %struct.snd_wss** %3, align 8
  %9 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %10 = icmp ne %struct.snd_wss* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %13 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %12, i32 0, i32 1
  %14 = load %struct.snd_card*, %struct.snd_card** %13, align 8
  %15 = icmp ne %struct.snd_card* %14, null
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %11, %1
  %18 = phi i1 [ true, %1 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @snd_BUG_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %161

25:                                               ; preds = %17
  %26 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %27 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %26, i32 0, i32 1
  %28 = load %struct.snd_card*, %struct.snd_card** %27, align 8
  store %struct.snd_card* %28, %struct.snd_card** %4, align 8
  %29 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %30 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %33 = call i32 @snd_wss_chip_id(%struct.snd_wss* %32)
  %34 = call i32 @strcpy(i32 %31, i32 %33)
  %35 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %36 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 131
  br i1 %38, label %44, label %39

39:                                               ; preds = %25
  %40 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %41 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 128
  br i1 %43, label %44, label %67

44:                                               ; preds = %39, %25
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %63, %44
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_cs4235_controls, align 8
  %48 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %47)
  %49 = icmp ult i32 %46, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %45
  %51 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %52 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_cs4235_controls, align 8
  %53 = load i32, i32* %5, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %52, i64 %54
  %56 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %57 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %55, %struct.snd_wss* %56)
  %58 = call i32 @snd_ctl_add(%struct.snd_card* %51, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %161

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %45

66:                                               ; preds = %45
  br label %90

67:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %86, %67
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_cs4236_controls, align 8
  %71 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %70)
  %72 = icmp ult i32 %69, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %68
  %74 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %75 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_cs4236_controls, align 8
  %76 = load i32, i32* %5, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %75, i64 %77
  %79 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %80 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %78, %struct.snd_wss* %79)
  %81 = call i32 @snd_ctl_add(%struct.snd_card* %74, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %73
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %2, align 4
  br label %161

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %5, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %68

89:                                               ; preds = %68
  br label %90

90:                                               ; preds = %89, %66
  %91 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %92 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %106 [
    i32 131, label %94
    i32 128, label %94
    i32 130, label %98
    i32 129, label %102
  ]

94:                                               ; preds = %90, %90
  %95 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_cs4236_3d_controls_cs4235, align 8
  %96 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %95)
  store i32 %96, i32* %6, align 4
  %97 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_cs4236_3d_controls_cs4235, align 8
  store %struct.snd_kcontrol_new* %97, %struct.snd_kcontrol_new** %8, align 8
  br label %107

98:                                               ; preds = %90
  %99 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_cs4236_3d_controls_cs4237, align 8
  %100 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %99)
  store i32 %100, i32* %6, align 4
  %101 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_cs4236_3d_controls_cs4237, align 8
  store %struct.snd_kcontrol_new* %101, %struct.snd_kcontrol_new** %8, align 8
  br label %107

102:                                              ; preds = %90
  %103 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_cs4236_3d_controls_cs4238, align 8
  %104 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %103)
  store i32 %104, i32* %6, align 4
  %105 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_cs4236_3d_controls_cs4238, align 8
  store %struct.snd_kcontrol_new* %105, %struct.snd_kcontrol_new** %8, align 8
  br label %107

106:                                              ; preds = %90
  store i32 0, i32* %6, align 4
  store %struct.snd_kcontrol_new* null, %struct.snd_kcontrol_new** %8, align 8
  br label %107

107:                                              ; preds = %106, %102, %98, %94
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %122, %107
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %112, label %127

112:                                              ; preds = %108
  %113 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %114 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %115 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %116 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %114, %struct.snd_wss* %115)
  %117 = call i32 @snd_ctl_add(%struct.snd_card* %113, i32 %116)
  store i32 %117, i32* %7, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* %2, align 4
  br label %161

121:                                              ; preds = %112
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %5, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %5, align 4
  %125 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %126 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %125, i32 1
  store %struct.snd_kcontrol_new* %126, %struct.snd_kcontrol_new** %8, align 8
  br label %108

127:                                              ; preds = %108
  %128 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %129 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %130, 130
  br i1 %131, label %137, label %132

132:                                              ; preds = %127
  %133 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %134 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 129
  br i1 %136, label %137, label %160

137:                                              ; preds = %132, %127
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %156, %137
  %139 = load i32, i32* %5, align 4
  %140 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_cs4236_iec958_controls, align 8
  %141 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %140)
  %142 = icmp ult i32 %139, %141
  br i1 %142, label %143, label %159

143:                                              ; preds = %138
  %144 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %145 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_cs4236_iec958_controls, align 8
  %146 = load i32, i32* %5, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %145, i64 %147
  %149 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %150 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %148, %struct.snd_wss* %149)
  %151 = call i32 @snd_ctl_add(%struct.snd_card* %144, i32 %150)
  store i32 %151, i32* %7, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %143
  %154 = load i32, i32* %7, align 4
  store i32 %154, i32* %2, align 4
  br label %161

155:                                              ; preds = %143
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %5, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %5, align 4
  br label %138

159:                                              ; preds = %138
  br label %160

160:                                              ; preds = %159, %132
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %160, %153, %119, %83, %60, %22
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @snd_wss_chip_id(%struct.snd_wss*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.snd_kcontrol_new*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.snd_wss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_get_codec_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_get_codec_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@UNKNOWN = common dso_local global i32 0, align 4
@VT1708 = common dso_local global i32 0, align 4
@VT1709_10CH = common dso_local global i32 0, align 4
@VT1709_6CH = common dso_local global i32 0, align 4
@VT1708B_8CH = common dso_local global i32 0, align 4
@AC_PAR_CONNLIST_LEN = common dso_local global i32 0, align 4
@VT1708BCE = common dso_local global i32 0, align 4
@VT1708B_4CH = common dso_local global i32 0, align 4
@VT1708S = common dso_local global i32 0, align 4
@VT1702 = common dso_local global i32 0, align 4
@VT1718S = common dso_local global i32 0, align 4
@VT1716S = common dso_local global i32 0, align 4
@VT2002P = common dso_local global i32 0, align 4
@VT1812 = common dso_local global i32 0, align 4
@VT1802 = common dso_local global i32 0, align 4
@VT1705CF = common dso_local global i32 0, align 4
@VT1808 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @get_codec_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_codec_type(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = ashr i32 %10, 16
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 65535
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 4358
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @UNKNOWN, align 4
  store i32 %17, i32* %6, align 4
  br label %166

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = icmp sge i32 %19, 5896
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = icmp sle i32 %22, 5899
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @VT1708, align 4
  store i32 %25, i32* %6, align 4
  br label %165

26:                                               ; preds = %21, %18
  %27 = load i32, i32* %5, align 4
  %28 = icmp sge i32 %27, 59152
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = icmp sle i32 %30, 59155
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @VT1709_10CH, align 4
  store i32 %33, i32* %6, align 4
  br label %164

34:                                               ; preds = %29, %26
  %35 = load i32, i32* %5, align 4
  %36 = icmp sge i32 %35, 59156
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = icmp sle i32 %38, 59159
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @VT1709_6CH, align 4
  store i32 %41, i32* %6, align 4
  br label %163

42:                                               ; preds = %37, %34
  %43 = load i32, i32* %5, align 4
  %44 = icmp sge i32 %43, 59168
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = icmp sle i32 %46, 59171
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i32, i32* @VT1708B_8CH, align 4
  store i32 %49, i32* %6, align 4
  %50 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %51 = load i32, i32* @AC_PAR_CONNLIST_LEN, align 4
  %52 = call i32 @snd_hda_param_read(%struct.hda_codec* %50, i32 22, i32 %51)
  %53 = icmp eq i32 %52, 7
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @VT1708BCE, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %54, %48
  br label %162

57:                                               ; preds = %45, %42
  %58 = load i32, i32* %5, align 4
  %59 = icmp sge i32 %58, 59172
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = icmp sle i32 %61, 59175
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* @VT1708B_4CH, align 4
  store i32 %64, i32* %6, align 4
  br label %161

65:                                               ; preds = %60, %57
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, 4095
  %68 = icmp eq i32 %67, 919
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i32, i32* %5, align 4
  %71 = ashr i32 %70, 12
  %72 = icmp slt i32 %71, 8
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* @VT1708S, align 4
  store i32 %74, i32* %6, align 4
  br label %160

75:                                               ; preds = %69, %65
  %76 = load i32, i32* %5, align 4
  %77 = and i32 %76, 4095
  %78 = icmp eq i32 %77, 920
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i32, i32* %5, align 4
  %81 = ashr i32 %80, 12
  %82 = icmp slt i32 %81, 8
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* @VT1702, align 4
  store i32 %84, i32* %6, align 4
  br label %159

85:                                               ; preds = %79, %75
  %86 = load i32, i32* %5, align 4
  %87 = and i32 %86, 4095
  %88 = icmp eq i32 %87, 1064
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i32, i32* %5, align 4
  %91 = ashr i32 %90, 12
  %92 = icmp slt i32 %91, 8
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* @VT1718S, align 4
  store i32 %94, i32* %6, align 4
  br label %158

95:                                               ; preds = %89, %85
  %96 = load i32, i32* %5, align 4
  %97 = icmp eq i32 %96, 1075
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %5, align 4
  %100 = icmp eq i32 %99, 42785
  br i1 %100, label %101, label %103

101:                                              ; preds = %98, %95
  %102 = load i32, i32* @VT1716S, align 4
  store i32 %102, i32* %6, align 4
  br label %157

103:                                              ; preds = %98
  %104 = load i32, i32* %5, align 4
  %105 = icmp eq i32 %104, 1089
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %5, align 4
  %108 = icmp eq i32 %107, 17473
  br i1 %108, label %109, label %111

109:                                              ; preds = %106, %103
  %110 = load i32, i32* @VT1718S, align 4
  store i32 %110, i32* %6, align 4
  br label %156

111:                                              ; preds = %106
  %112 = load i32, i32* %5, align 4
  %113 = icmp eq i32 %112, 1080
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %5, align 4
  %116 = icmp eq i32 %115, 17464
  br i1 %116, label %117, label %119

117:                                              ; preds = %114, %111
  %118 = load i32, i32* @VT2002P, align 4
  store i32 %118, i32* %6, align 4
  br label %155

119:                                              ; preds = %114
  %120 = load i32, i32* %5, align 4
  %121 = icmp eq i32 %120, 1096
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32, i32* @VT1812, align 4
  store i32 %123, i32* %6, align 4
  br label %154

124:                                              ; preds = %119
  %125 = load i32, i32* %5, align 4
  %126 = icmp eq i32 %125, 1088
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = load i32, i32* @VT1708S, align 4
  store i32 %128, i32* %6, align 4
  br label %153

129:                                              ; preds = %124
  %130 = load i32, i32* %5, align 4
  %131 = and i32 %130, 4095
  %132 = icmp eq i32 %131, 1094
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = load i32, i32* @VT1802, align 4
  store i32 %134, i32* %6, align 4
  br label %152

135:                                              ; preds = %129
  %136 = load i32, i32* %5, align 4
  %137 = icmp eq i32 %136, 18272
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i32, i32* @VT1705CF, align 4
  store i32 %139, i32* %6, align 4
  br label %151

140:                                              ; preds = %135
  %141 = load i32, i32* %5, align 4
  %142 = icmp eq i32 %141, 18273
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* %5, align 4
  %145 = icmp eq i32 %144, 18274
  br i1 %145, label %146, label %148

146:                                              ; preds = %143, %140
  %147 = load i32, i32* @VT1808, align 4
  store i32 %147, i32* %6, align 4
  br label %150

148:                                              ; preds = %143
  %149 = load i32, i32* @UNKNOWN, align 4
  store i32 %149, i32* %6, align 4
  br label %150

150:                                              ; preds = %148, %146
  br label %151

151:                                              ; preds = %150, %138
  br label %152

152:                                              ; preds = %151, %133
  br label %153

153:                                              ; preds = %152, %127
  br label %154

154:                                              ; preds = %153, %122
  br label %155

155:                                              ; preds = %154, %117
  br label %156

156:                                              ; preds = %155, %109
  br label %157

157:                                              ; preds = %156, %101
  br label %158

158:                                              ; preds = %157, %93
  br label %159

159:                                              ; preds = %158, %83
  br label %160

160:                                              ; preds = %159, %73
  br label %161

161:                                              ; preds = %160, %63
  br label %162

162:                                              ; preds = %161, %56
  br label %163

163:                                              ; preds = %162, %40
  br label %164

164:                                              ; preds = %163, %32
  br label %165

165:                                              ; preds = %164, %24
  br label %166

166:                                              ; preds = %165, %16
  %167 = load i32, i32* %6, align 4
  ret i32 %167
}

declare dso_local i32 @snd_hda_param_read(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_waveartist.c_waveartist_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_waveartist.c_waveartist_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@debug_flg = common dso_local global i32 0, align 4
@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"waveartist_cmd: cmd=\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%04X \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@STATR = common dso_local global i64 0, align 8
@CMD_RF = common dso_local global i32 0, align 4
@CMDR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"flushed %04X...\00", align 1
@CMD_WE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"waveartist_cmd: resp=\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"waveartist_cmd: timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32*, i32, i32*)* @waveartist_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @waveartist_cmd(%struct.TYPE_5__* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load i32, i32* @debug_flg, align 4
  %22 = load i32, i32* @DEBUG_CMD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %5
  %26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %38, %25
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %13, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %13, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %13, align 4
  br label %27

41:                                               ; preds = %27
  %42 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %5
  %44 = load i32, i32* %11, align 4
  %45 = zext i32 %44 to i64
  %46 = load i64, i64* @STATR, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @inb(i64 %47)
  %49 = load i32, i32* @CMD_RF, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %43
  %53 = load i32, i32* %11, align 4
  %54 = zext i32 %53 to i64
  %55 = load i64, i64* @CMDR, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i8* @inw(i64 %56)
  %58 = ptrtoint i8* %57 to i32
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* @debug_flg, align 4
  %60 = load i32, i32* @DEBUG_CMD, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = load i32, i32* %14, align 4
  %65 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %63, %52
  %67 = call i32 @udelay(i32 10)
  br label %68

68:                                               ; preds = %66, %43
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %112, %68
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ult i32 %73, %74
  br label %76

76:                                               ; preds = %72, %69
  %77 = phi i1 [ false, %69 ], [ %75, %72 ]
  br i1 %77, label %78, label %115

78:                                               ; preds = %76
  store i32 5000, i32* %15, align 4
  br label %79

79:                                               ; preds = %93, %78
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %79
  %83 = load i32, i32* %11, align 4
  %84 = zext i32 %83 to i64
  %85 = load i64, i64* @STATR, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @inb(i64 %86)
  %88 = load i32, i32* @CMD_WE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %96

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %15, align 4
  br label %79

96:                                               ; preds = %91, %79
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  store i32 1, i32* %12, align 4
  br label %111

100:                                              ; preds = %96
  %101 = load i32*, i32** %8, align 8
  %102 = load i32, i32* %13, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %11, align 4
  %107 = zext i32 %106 to i64
  %108 = load i64, i64* @CMDR, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @outw(i32 %105, i64 %109)
  br label %111

111:                                              ; preds = %100, %99
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %13, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %69

115:                                              ; preds = %76
  store i32 0, i32* %13, align 4
  br label %116

116:                                              ; preds = %159, %115
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ult i32 %120, %121
  br label %123

123:                                              ; preds = %119, %116
  %124 = phi i1 [ false, %116 ], [ %122, %119 ]
  br i1 %124, label %125, label %162

125:                                              ; preds = %123
  store i32 5000, i32* %16, align 4
  br label %126

126:                                              ; preds = %140, %125
  %127 = load i32, i32* %16, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %143

129:                                              ; preds = %126
  %130 = load i32, i32* %11, align 4
  %131 = zext i32 %130 to i64
  %132 = load i64, i64* @STATR, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @inb(i64 %133)
  %135 = load i32, i32* @CMD_RF, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %129
  br label %143

139:                                              ; preds = %129
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %16, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %16, align 4
  br label %126

143:                                              ; preds = %138, %126
  %144 = load i32, i32* %16, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %143
  store i32 1, i32* %12, align 4
  br label %158

147:                                              ; preds = %143
  %148 = load i32, i32* %11, align 4
  %149 = zext i32 %148 to i64
  %150 = load i64, i64* @CMDR, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i8* @inw(i64 %151)
  %153 = ptrtoint i8* %152 to i32
  %154 = load i32*, i32** %10, align 8
  %155 = load i32, i32* %13, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %153, i32* %157, align 4
  br label %158

158:                                              ; preds = %147, %146
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %13, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %13, align 4
  br label %116

162:                                              ; preds = %123
  %163 = load i32, i32* @debug_flg, align 4
  %164 = load i32, i32* @DEBUG_CMD, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %191

167:                                              ; preds = %162
  %168 = load i32, i32* %12, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %188, label %170

170:                                              ; preds = %167
  %171 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %172

172:                                              ; preds = %183, %170
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* %9, align 4
  %175 = icmp ult i32 %173, %174
  br i1 %175, label %176, label %186

176:                                              ; preds = %172
  %177 = load i32*, i32** %10, align 8
  %178 = load i32, i32* %13, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %181)
  br label %183

183:                                              ; preds = %176
  %184 = load i32, i32* %13, align 4
  %185 = add i32 %184, 1
  store i32 %185, i32* %13, align 4
  br label %172

186:                                              ; preds = %172
  %187 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %190

188:                                              ; preds = %167
  %189 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %190

190:                                              ; preds = %188, %186
  br label %191

191:                                              ; preds = %190, %162
  %192 = load i32, i32* %12, align 4
  %193 = icmp ne i32 %192, 0
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i32 1, i32 0
  ret i32 %195
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i8* @inw(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

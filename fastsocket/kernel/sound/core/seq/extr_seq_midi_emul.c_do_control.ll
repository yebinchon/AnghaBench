; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi_emul.c_do_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi_emul.c_do_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi_op = type { i32 (i8*, i32, %struct.snd_midi_channel*)*, i32 (i8*, i32, i32, %struct.snd_midi_channel.0*)* }
%struct.snd_midi_channel = type opaque
%struct.snd_midi_channel.0 = type opaque
%struct.snd_midi_channel_set = type { i32 }
%struct.snd_midi_channel.1 = type { i32*, i32*, i32, i32 }

@SNDRV_MIDI_NOTE_RELEASED = common dso_local global i32 0, align 4
@SNDRV_MIDI_NOTE_OFF = common dso_local global i8* null, align 8
@SNDRV_MIDI_NOTE_ON = common dso_local global i32 0, align 4
@SNDRV_MIDI_NOTE_SOSTENUTO = common dso_local global i32 0, align 4
@SNDRV_MIDI_PARAM_TYPE_REGISTERED = common dso_local global i32 0, align 4
@SNDRV_MIDI_PARAM_TYPE_NONREGISTERED = common dso_local global i32 0, align 4
@SNDRV_MIDI_MODE_XG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_midi_op*, i8*, %struct.snd_midi_channel_set*, %struct.snd_midi_channel.1*, i32, i32)* @do_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_control(%struct.snd_midi_op* %0, i8* %1, %struct.snd_midi_channel_set* %2, %struct.snd_midi_channel.1* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.snd_midi_op*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.snd_midi_channel_set*, align 8
  %10 = alloca %struct.snd_midi_channel.1*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_midi_op* %0, %struct.snd_midi_op** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.snd_midi_channel_set* %2, %struct.snd_midi_channel_set** %9, align 8
  store %struct.snd_midi_channel.1* %3, %struct.snd_midi_channel.1** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp sge i32 %14, 64
  br i1 %15, label %16, label %19

16:                                               ; preds = %6
  %17 = load i32, i32* %11, align 4
  %18 = icmp sle i32 %17, 69
  br i1 %18, label %25, label %19

19:                                               ; preds = %16, %6
  %20 = load i32, i32* %11, align 4
  %21 = icmp sge i32 %20, 80
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load i32, i32* %11, align 4
  %24 = icmp sle i32 %23, 83
  br i1 %24, label %25, label %30

25:                                               ; preds = %22, %16
  %26 = load i32, i32* %12, align 4
  %27 = icmp sge i32 %26, 64
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 127, i32 0
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %25, %22, %19
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %33 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %31, i32* %37, align 4
  %38 = load i32, i32* %11, align 4
  switch i32 %38, label %251 [
    i32 128, label %39
    i32 139, label %86
    i32 129, label %87
    i32 142, label %186
    i32 144, label %191
    i32 138, label %210
    i32 137, label %210
    i32 141, label %214
    i32 140, label %214
    i32 153, label %218
    i32 154, label %223
    i32 143, label %228
    i32 145, label %245
    i32 136, label %246
    i32 130, label %249
    i32 146, label %249
    i32 147, label %249
    i32 135, label %249
    i32 134, label %249
    i32 133, label %249
    i32 132, label %249
    i32 131, label %249
    i32 152, label %249
    i32 151, label %249
    i32 150, label %249
    i32 149, label %249
    i32 148, label %249
  ]

39:                                               ; preds = %30
  %40 = load i32, i32* %12, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %85

42:                                               ; preds = %39
  store i32 0, i32* %13, align 4
  br label %43

43:                                               ; preds = %81, %42
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %44, 128
  br i1 %45, label %46, label %84

46:                                               ; preds = %43
  %47 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %48 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SNDRV_MIDI_NOTE_RELEASED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %46
  %58 = load i8*, i8** @SNDRV_MIDI_NOTE_OFF, align 8
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %61 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  %66 = load %struct.snd_midi_op*, %struct.snd_midi_op** %7, align 8
  %67 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %66, i32 0, i32 1
  %68 = load i32 (i8*, i32, i32, %struct.snd_midi_channel.0*)*, i32 (i8*, i32, i32, %struct.snd_midi_channel.0*)** %67, align 8
  %69 = icmp ne i32 (i8*, i32, i32, %struct.snd_midi_channel.0*)* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %57
  %71 = load %struct.snd_midi_op*, %struct.snd_midi_op** %7, align 8
  %72 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %71, i32 0, i32 1
  %73 = load i32 (i8*, i32, i32, %struct.snd_midi_channel.0*)*, i32 (i8*, i32, i32, %struct.snd_midi_channel.0*)** %72, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %77 = bitcast %struct.snd_midi_channel.1* %76 to %struct.snd_midi_channel.0*
  %78 = call i32 %73(i8* %74, i32 %75, i32 0, %struct.snd_midi_channel.0* %77)
  br label %79

79:                                               ; preds = %70, %57
  br label %80

80:                                               ; preds = %79, %46
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %43

84:                                               ; preds = %43
  br label %85

85:                                               ; preds = %84, %39
  br label %266

86:                                               ; preds = %30
  br label %266

87:                                               ; preds = %30
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %120

90:                                               ; preds = %87
  store i32 0, i32* %13, align 4
  br label %91

91:                                               ; preds = %116, %90
  %92 = load i32, i32* %13, align 4
  %93 = icmp slt i32 %92, 128
  br i1 %93, label %94, label %119

94:                                               ; preds = %91
  %95 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %96 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @SNDRV_MIDI_NOTE_ON, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %94
  %106 = load i32, i32* @SNDRV_MIDI_NOTE_SOSTENUTO, align 4
  %107 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %108 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %106
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %105, %94
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %13, align 4
  br label %91

119:                                              ; preds = %91
  br label %185

120:                                              ; preds = %87
  store i32 0, i32* %13, align 4
  br label %121

121:                                              ; preds = %181, %120
  %122 = load i32, i32* %13, align 4
  %123 = icmp slt i32 %122, 128
  br i1 %123, label %124, label %184

124:                                              ; preds = %121
  %125 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %126 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @SNDRV_MIDI_NOTE_SOSTENUTO, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %180

135:                                              ; preds = %124
  %136 = load i32, i32* @SNDRV_MIDI_NOTE_SOSTENUTO, align 4
  %137 = xor i32 %136, -1
  %138 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %139 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, %137
  store i32 %145, i32* %143, align 4
  %146 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %147 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @SNDRV_MIDI_NOTE_RELEASED, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %179

156:                                              ; preds = %135
  %157 = load i8*, i8** @SNDRV_MIDI_NOTE_OFF, align 8
  %158 = ptrtoint i8* %157 to i32
  %159 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %160 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %158, i32* %164, align 4
  %165 = load %struct.snd_midi_op*, %struct.snd_midi_op** %7, align 8
  %166 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %165, i32 0, i32 1
  %167 = load i32 (i8*, i32, i32, %struct.snd_midi_channel.0*)*, i32 (i8*, i32, i32, %struct.snd_midi_channel.0*)** %166, align 8
  %168 = icmp ne i32 (i8*, i32, i32, %struct.snd_midi_channel.0*)* %167, null
  br i1 %168, label %169, label %178

169:                                              ; preds = %156
  %170 = load %struct.snd_midi_op*, %struct.snd_midi_op** %7, align 8
  %171 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %170, i32 0, i32 1
  %172 = load i32 (i8*, i32, i32, %struct.snd_midi_channel.0*)*, i32 (i8*, i32, i32, %struct.snd_midi_channel.0*)** %171, align 8
  %173 = load i8*, i8** %8, align 8
  %174 = load i32, i32* %13, align 4
  %175 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %176 = bitcast %struct.snd_midi_channel.1* %175 to %struct.snd_midi_channel.0*
  %177 = call i32 %172(i8* %173, i32 %174, i32 0, %struct.snd_midi_channel.0* %176)
  br label %178

178:                                              ; preds = %169, %156
  br label %179

179:                                              ; preds = %178, %135
  br label %180

180:                                              ; preds = %179, %124
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %13, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %13, align 4
  br label %121

184:                                              ; preds = %121
  br label %185

185:                                              ; preds = %184, %119
  br label %266

186:                                              ; preds = %30
  %187 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %188 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 144
  store i32 0, i32* %190, align 4
  br label %191

191:                                              ; preds = %30, %186
  %192 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %193 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @SNDRV_MIDI_PARAM_TYPE_REGISTERED, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %191
  %198 = load %struct.snd_midi_op*, %struct.snd_midi_op** %7, align 8
  %199 = load i8*, i8** %8, align 8
  %200 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %201 = load %struct.snd_midi_channel_set*, %struct.snd_midi_channel_set** %9, align 8
  %202 = call i32 @rpn(%struct.snd_midi_op* %198, i8* %199, %struct.snd_midi_channel.1* %200, %struct.snd_midi_channel_set* %201)
  br label %209

203:                                              ; preds = %191
  %204 = load %struct.snd_midi_op*, %struct.snd_midi_op** %7, align 8
  %205 = load i8*, i8** %8, align 8
  %206 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %207 = load %struct.snd_midi_channel_set*, %struct.snd_midi_channel_set** %9, align 8
  %208 = call i32 @nrpn(%struct.snd_midi_op* %204, i8* %205, %struct.snd_midi_channel.1* %206, %struct.snd_midi_channel_set* %207)
  br label %209

209:                                              ; preds = %203, %197
  br label %266

210:                                              ; preds = %30, %30
  %211 = load i32, i32* @SNDRV_MIDI_PARAM_TYPE_REGISTERED, align 4
  %212 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %213 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %212, i32 0, i32 3
  store i32 %211, i32* %213, align 4
  br label %266

214:                                              ; preds = %30, %30
  %215 = load i32, i32* @SNDRV_MIDI_PARAM_TYPE_NONREGISTERED, align 4
  %216 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %217 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %216, i32 0, i32 3
  store i32 %215, i32* %217, align 4
  br label %266

218:                                              ; preds = %30
  %219 = load %struct.snd_midi_op*, %struct.snd_midi_op** %7, align 8
  %220 = load i8*, i8** %8, align 8
  %221 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %222 = call i32 @all_sounds_off(%struct.snd_midi_op* %219, i8* %220, %struct.snd_midi_channel.1* %221)
  br label %266

223:                                              ; preds = %30
  %224 = load %struct.snd_midi_op*, %struct.snd_midi_op** %7, align 8
  %225 = load i8*, i8** %8, align 8
  %226 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %227 = call i32 @all_notes_off(%struct.snd_midi_op* %224, i8* %225, %struct.snd_midi_channel.1* %226)
  br label %266

228:                                              ; preds = %30
  %229 = load %struct.snd_midi_channel_set*, %struct.snd_midi_channel_set** %9, align 8
  %230 = getelementptr inbounds %struct.snd_midi_channel_set, %struct.snd_midi_channel_set* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @SNDRV_MIDI_MODE_XG, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %244

234:                                              ; preds = %228
  %235 = load i32, i32* %12, align 4
  %236 = icmp eq i32 %235, 127
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %239 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %238, i32 0, i32 2
  store i32 1, i32* %239, align 8
  br label %243

240:                                              ; preds = %234
  %241 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %242 = getelementptr inbounds %struct.snd_midi_channel.1, %struct.snd_midi_channel.1* %241, i32 0, i32 2
  store i32 0, i32* %242, align 8
  br label %243

243:                                              ; preds = %240, %237
  br label %244

244:                                              ; preds = %243, %228
  br label %266

245:                                              ; preds = %30
  br label %266

246:                                              ; preds = %30
  %247 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %248 = call i32 @snd_midi_reset_controllers(%struct.snd_midi_channel.1* %247)
  br label %266

249:                                              ; preds = %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30
  br label %250

250:                                              ; preds = %249
  br label %251

251:                                              ; preds = %30, %250
  %252 = load %struct.snd_midi_op*, %struct.snd_midi_op** %7, align 8
  %253 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %252, i32 0, i32 0
  %254 = load i32 (i8*, i32, %struct.snd_midi_channel*)*, i32 (i8*, i32, %struct.snd_midi_channel*)** %253, align 8
  %255 = icmp ne i32 (i8*, i32, %struct.snd_midi_channel*)* %254, null
  br i1 %255, label %256, label %265

256:                                              ; preds = %251
  %257 = load %struct.snd_midi_op*, %struct.snd_midi_op** %7, align 8
  %258 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %257, i32 0, i32 0
  %259 = load i32 (i8*, i32, %struct.snd_midi_channel*)*, i32 (i8*, i32, %struct.snd_midi_channel*)** %258, align 8
  %260 = load i8*, i8** %8, align 8
  %261 = load i32, i32* %11, align 4
  %262 = load %struct.snd_midi_channel.1*, %struct.snd_midi_channel.1** %10, align 8
  %263 = bitcast %struct.snd_midi_channel.1* %262 to %struct.snd_midi_channel*
  %264 = call i32 %259(i8* %260, i32 %261, %struct.snd_midi_channel* %263)
  br label %265

265:                                              ; preds = %256, %251
  br label %266

266:                                              ; preds = %265, %246, %245, %244, %223, %218, %214, %210, %209, %185, %86, %85
  ret void
}

declare dso_local i32 @rpn(%struct.snd_midi_op*, i8*, %struct.snd_midi_channel.1*, %struct.snd_midi_channel_set*) #1

declare dso_local i32 @nrpn(%struct.snd_midi_op*, i8*, %struct.snd_midi_channel.1*, %struct.snd_midi_channel_set*) #1

declare dso_local i32 @all_sounds_off(%struct.snd_midi_op*, i8*, %struct.snd_midi_channel.1*) #1

declare dso_local i32 @all_notes_off(%struct.snd_midi_op*, i8*, %struct.snd_midi_channel.1*) #1

declare dso_local i32 @snd_midi_reset_controllers(%struct.snd_midi_channel.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_snd_usbmidi_transmit_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_snd_usbmidi_transmit_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbmidi_out_port = type { i32, i32*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { void (%struct.urb*, i32, i32, i32, i32)* }
%struct.urb = type { i32 }

@STATE_UNKNOWN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbmidi_out_port*, i32, %struct.urb*)* @snd_usbmidi_transmit_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_usbmidi_transmit_byte(%struct.usbmidi_out_port* %0, i32 %1, %struct.urb* %2) #0 {
  %4 = alloca %struct.usbmidi_out_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (%struct.urb*, i32, i32, i32, i32)*, align 8
  store %struct.usbmidi_out_port* %0, %struct.usbmidi_out_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.urb* %2, %struct.urb** %6, align 8
  %9 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %10 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %13 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %12, i32 0, i32 3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load void (%struct.urb*, i32, i32, i32, i32)*, void (%struct.urb*, i32, i32, i32, i32)** %19, align 8
  store void (%struct.urb*, i32, i32, i32, i32)* %20, void (%struct.urb*, i32, i32, i32, i32)** %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = icmp sge i32 %21, 248
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load void (%struct.urb*, i32, i32, i32, i32)*, void (%struct.urb*, i32, i32, i32, i32)** %8, align 8
  %25 = load %struct.urb*, %struct.urb** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, 15
  %28 = load i32, i32* %5, align 4
  call void %24(%struct.urb* %25, i32 %27, i32 %28, i32 0, i32 0)
  br label %255

29:                                               ; preds = %3
  %30 = load i32, i32* %5, align 4
  %31 = icmp sge i32 %30, 240
  br i1 %31, label %32, label %112

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  switch i32 %33, label %111 [
    i32 240, label %34
    i32 241, label %42
    i32 243, label %42
    i32 242, label %50
    i32 244, label %58
    i32 245, label %58
    i32 246, label %63
    i32 247, label %72
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %37 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %35, i32* %39, align 4
  %40 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %41 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %40, i32 0, i32 2
  store i32 129, i32* %41, align 8
  br label %111

42:                                               ; preds = %32, %32
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %45 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %43, i32* %47, align 4
  %48 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %49 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %48, i32 0, i32 2
  store i32 133, i32* %49, align 8
  br label %111

50:                                               ; preds = %32
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %53 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %51, i32* %55, align 4
  %56 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %57 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %56, i32 0, i32 2
  store i32 132, i32* %57, align 8
  br label %111

58:                                               ; preds = %32, %32
  %59 = load i8*, i8** @STATE_UNKNOWN, align 8
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %62 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  br label %111

63:                                               ; preds = %32
  %64 = load void (%struct.urb*, i32, i32, i32, i32)*, void (%struct.urb*, i32, i32, i32, i32)** %8, align 8
  %65 = load %struct.urb*, %struct.urb** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, 5
  call void %64(%struct.urb* %65, i32 %67, i32 246, i32 0, i32 0)
  %68 = load i8*, i8** @STATE_UNKNOWN, align 8
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %71 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  br label %111

72:                                               ; preds = %32
  %73 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %74 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  switch i32 %75, label %106 [
    i32 130, label %76
    i32 129, label %81
    i32 128, label %91
  ]

76:                                               ; preds = %72
  %77 = load void (%struct.urb*, i32, i32, i32, i32)*, void (%struct.urb*, i32, i32, i32, i32)** %8, align 8
  %78 = load %struct.urb*, %struct.urb** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, 5
  call void %77(%struct.urb* %78, i32 %80, i32 247, i32 0, i32 0)
  br label %106

81:                                               ; preds = %72
  %82 = load void (%struct.urb*, i32, i32, i32, i32)*, void (%struct.urb*, i32, i32, i32, i32)** %8, align 8
  %83 = load %struct.urb*, %struct.urb** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, 6
  %86 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %87 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  call void %82(%struct.urb* %83, i32 %85, i32 %90, i32 247, i32 0)
  br label %106

91:                                               ; preds = %72
  %92 = load void (%struct.urb*, i32, i32, i32, i32)*, void (%struct.urb*, i32, i32, i32, i32)** %8, align 8
  %93 = load %struct.urb*, %struct.urb** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = or i32 %94, 7
  %96 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %97 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %102 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  call void %92(%struct.urb* %93, i32 %95, i32 %100, i32 %105, i32 247)
  br label %106

106:                                              ; preds = %72, %91, %81, %76
  %107 = load i8*, i8** @STATE_UNKNOWN, align 8
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %110 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %32, %106, %63, %58, %50, %42, %34
  br label %254

112:                                              ; preds = %29
  %113 = load i32, i32* %5, align 4
  %114 = icmp sge i32 %113, 128
  br i1 %114, label %115, label %133

115:                                              ; preds = %112
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %118 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  store i32 %116, i32* %120, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp sge i32 %121, 192
  br i1 %122, label %123, label %129

123:                                              ; preds = %115
  %124 = load i32, i32* %5, align 4
  %125 = icmp sle i32 %124, 223
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %128 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %127, i32 0, i32 2
  store i32 133, i32* %128, align 8
  br label %132

129:                                              ; preds = %123, %115
  %130 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %131 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %130, i32 0, i32 2
  store i32 132, i32* %131, align 8
  br label %132

132:                                              ; preds = %129, %126
  br label %253

133:                                              ; preds = %112
  %134 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %135 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  switch i32 %136, label %252 [
    i32 133, label %137
    i32 132, label %170
    i32 131, label %178
    i32 130, label %218
    i32 129, label %226
    i32 128, label %234
  ]

137:                                              ; preds = %133
  %138 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %139 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %142, 240
  br i1 %143, label %144, label %153

144:                                              ; preds = %137
  %145 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %146 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = ashr i32 %149, 4
  %151 = load i32, i32* %7, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %7, align 4
  br label %160

153:                                              ; preds = %137
  %154 = load i32, i32* %7, align 4
  %155 = or i32 %154, 2
  store i32 %155, i32* %7, align 4
  %156 = load i8*, i8** @STATE_UNKNOWN, align 8
  %157 = ptrtoint i8* %156 to i32
  %158 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %159 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  br label %160

160:                                              ; preds = %153, %144
  %161 = load void (%struct.urb*, i32, i32, i32, i32)*, void (%struct.urb*, i32, i32, i32, i32)** %8, align 8
  %162 = load %struct.urb*, %struct.urb** %6, align 8
  %163 = load i32, i32* %7, align 4
  %164 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %165 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %5, align 4
  call void %161(%struct.urb* %162, i32 %163, i32 %168, i32 %169, i32 0)
  br label %252

170:                                              ; preds = %133
  %171 = load i32, i32* %5, align 4
  %172 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %173 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  store i32 %171, i32* %175, align 4
  %176 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %177 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %176, i32 0, i32 2
  store i32 131, i32* %177, align 8
  br label %252

178:                                              ; preds = %133
  %179 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %180 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp slt i32 %183, 240
  br i1 %184, label %185, label %196

185:                                              ; preds = %178
  %186 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %187 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load i32, i32* %189, align 4
  %191 = ashr i32 %190, 4
  %192 = load i32, i32* %7, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %7, align 4
  %194 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %195 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %194, i32 0, i32 2
  store i32 132, i32* %195, align 8
  br label %203

196:                                              ; preds = %178
  %197 = load i32, i32* %7, align 4
  %198 = or i32 %197, 3
  store i32 %198, i32* %7, align 4
  %199 = load i8*, i8** @STATE_UNKNOWN, align 8
  %200 = ptrtoint i8* %199 to i32
  %201 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %202 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  br label %203

203:                                              ; preds = %196, %185
  %204 = load void (%struct.urb*, i32, i32, i32, i32)*, void (%struct.urb*, i32, i32, i32, i32)** %8, align 8
  %205 = load %struct.urb*, %struct.urb** %6, align 8
  %206 = load i32, i32* %7, align 4
  %207 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %208 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %213 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %5, align 4
  call void %204(%struct.urb* %205, i32 %206, i32 %211, i32 %216, i32 %217)
  br label %252

218:                                              ; preds = %133
  %219 = load i32, i32* %5, align 4
  %220 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %221 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  store i32 %219, i32* %223, align 4
  %224 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %225 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %224, i32 0, i32 2
  store i32 129, i32* %225, align 8
  br label %252

226:                                              ; preds = %133
  %227 = load i32, i32* %5, align 4
  %228 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %229 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 1
  store i32 %227, i32* %231, align 4
  %232 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %233 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %232, i32 0, i32 2
  store i32 128, i32* %233, align 8
  br label %252

234:                                              ; preds = %133
  %235 = load void (%struct.urb*, i32, i32, i32, i32)*, void (%struct.urb*, i32, i32, i32, i32)** %8, align 8
  %236 = load %struct.urb*, %struct.urb** %6, align 8
  %237 = load i32, i32* %7, align 4
  %238 = or i32 %237, 4
  %239 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %240 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %239, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 0
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %245 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 1
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %5, align 4
  call void %235(%struct.urb* %236, i32 %238, i32 %243, i32 %248, i32 %249)
  %250 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %4, align 8
  %251 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %250, i32 0, i32 2
  store i32 130, i32* %251, align 8
  br label %252

252:                                              ; preds = %133, %234, %226, %218, %203, %170, %160
  br label %253

253:                                              ; preds = %252, %132
  br label %254

254:                                              ; preds = %253, %111
  br label %255

255:                                              ; preds = %254, %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

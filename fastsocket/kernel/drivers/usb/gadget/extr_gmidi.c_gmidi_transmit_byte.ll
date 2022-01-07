; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_gmidi.c_gmidi_transmit_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_gmidi.c_gmidi_transmit_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_request = type { i32 }
%struct.gmidi_in_port = type { i32, i32*, i32 }

@STATE_UNKNOWN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_request*, %struct.gmidi_in_port*, i32)* @gmidi_transmit_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmidi_transmit_byte(%struct.usb_request* %0, %struct.gmidi_in_port* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.gmidi_in_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_request* %0, %struct.usb_request** %4, align 8
  store %struct.gmidi_in_port* %1, %struct.gmidi_in_port** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %9 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 248
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = or i32 %15, 15
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @gmidi_transmit_packet(%struct.usb_request* %14, i32 %16, i32 %17, i32 0, i32 0)
  br label %245

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp sge i32 %20, 240
  br i1 %21, label %22, label %102

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %101 [
    i32 240, label %24
    i32 241, label %32
    i32 243, label %32
    i32 242, label %40
    i32 244, label %48
    i32 245, label %48
    i32 246, label %53
    i32 247, label %62
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %27 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %25, i32* %29, align 4
  %30 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %31 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %30, i32 0, i32 2
  store i32 129, i32* %31, align 8
  br label %101

32:                                               ; preds = %22, %22
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %35 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %39 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %38, i32 0, i32 2
  store i32 133, i32* %39, align 8
  br label %101

40:                                               ; preds = %22
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %43 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %41, i32* %45, align 4
  %46 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %47 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %46, i32 0, i32 2
  store i32 132, i32* %47, align 8
  br label %101

48:                                               ; preds = %22, %22
  %49 = load i8*, i8** @STATE_UNKNOWN, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %52 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  br label %101

53:                                               ; preds = %22
  %54 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, 5
  %57 = call i32 @gmidi_transmit_packet(%struct.usb_request* %54, i32 %56, i32 246, i32 0, i32 0)
  %58 = load i8*, i8** @STATE_UNKNOWN, align 8
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %61 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  br label %101

62:                                               ; preds = %22
  %63 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %64 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %96 [
    i32 130, label %66
    i32 129, label %71
    i32 128, label %81
  ]

66:                                               ; preds = %62
  %67 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, 5
  %70 = call i32 @gmidi_transmit_packet(%struct.usb_request* %67, i32 %69, i32 247, i32 0, i32 0)
  br label %96

71:                                               ; preds = %62
  %72 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, 6
  %75 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %76 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @gmidi_transmit_packet(%struct.usb_request* %72, i32 %74, i32 %79, i32 247, i32 0)
  br label %96

81:                                               ; preds = %62
  %82 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, 7
  %85 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %86 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %91 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @gmidi_transmit_packet(%struct.usb_request* %82, i32 %84, i32 %89, i32 %94, i32 247)
  br label %96

96:                                               ; preds = %62, %81, %71, %66
  %97 = load i8*, i8** @STATE_UNKNOWN, align 8
  %98 = ptrtoint i8* %97 to i32
  %99 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %100 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %22, %96, %53, %48, %40, %32, %24
  br label %244

102:                                              ; preds = %19
  %103 = load i32, i32* %6, align 4
  %104 = icmp sge i32 %103, 128
  br i1 %104, label %105, label %123

105:                                              ; preds = %102
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %108 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  store i32 %106, i32* %110, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp sge i32 %111, 192
  br i1 %112, label %113, label %119

113:                                              ; preds = %105
  %114 = load i32, i32* %6, align 4
  %115 = icmp sle i32 %114, 223
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %118 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %117, i32 0, i32 2
  store i32 133, i32* %118, align 8
  br label %122

119:                                              ; preds = %113, %105
  %120 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %121 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %120, i32 0, i32 2
  store i32 132, i32* %121, align 8
  br label %122

122:                                              ; preds = %119, %116
  br label %243

123:                                              ; preds = %102
  %124 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %125 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  switch i32 %126, label %242 [
    i32 133, label %127
    i32 132, label %160
    i32 131, label %168
    i32 130, label %208
    i32 129, label %216
    i32 128, label %224
  ]

127:                                              ; preds = %123
  %128 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %129 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %132, 240
  br i1 %133, label %134, label %143

134:                                              ; preds = %127
  %135 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %136 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = ashr i32 %139, 4
  %141 = load i32, i32* %7, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %7, align 4
  br label %150

143:                                              ; preds = %127
  %144 = load i32, i32* %7, align 4
  %145 = or i32 %144, 2
  store i32 %145, i32* %7, align 4
  %146 = load i8*, i8** @STATE_UNKNOWN, align 8
  %147 = ptrtoint i8* %146 to i32
  %148 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %149 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  br label %150

150:                                              ; preds = %143, %134
  %151 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %152 = load i32, i32* %7, align 4
  %153 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %154 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @gmidi_transmit_packet(%struct.usb_request* %151, i32 %152, i32 %157, i32 %158, i32 0)
  br label %242

160:                                              ; preds = %123
  %161 = load i32, i32* %6, align 4
  %162 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %163 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  store i32 %161, i32* %165, align 4
  %166 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %167 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %166, i32 0, i32 2
  store i32 131, i32* %167, align 8
  br label %242

168:                                              ; preds = %123
  %169 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %170 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp slt i32 %173, 240
  br i1 %174, label %175, label %186

175:                                              ; preds = %168
  %176 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %177 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  %180 = load i32, i32* %179, align 4
  %181 = ashr i32 %180, 4
  %182 = load i32, i32* %7, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %7, align 4
  %184 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %185 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %184, i32 0, i32 2
  store i32 132, i32* %185, align 8
  br label %193

186:                                              ; preds = %168
  %187 = load i32, i32* %7, align 4
  %188 = or i32 %187, 3
  store i32 %188, i32* %7, align 4
  %189 = load i8*, i8** @STATE_UNKNOWN, align 8
  %190 = ptrtoint i8* %189 to i32
  %191 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %192 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %191, i32 0, i32 2
  store i32 %190, i32* %192, align 8
  br label %193

193:                                              ; preds = %186, %175
  %194 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %195 = load i32, i32* %7, align 4
  %196 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %197 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %202 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %6, align 4
  %207 = call i32 @gmidi_transmit_packet(%struct.usb_request* %194, i32 %195, i32 %200, i32 %205, i32 %206)
  br label %242

208:                                              ; preds = %123
  %209 = load i32, i32* %6, align 4
  %210 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %211 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  store i32 %209, i32* %213, align 4
  %214 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %215 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %214, i32 0, i32 2
  store i32 129, i32* %215, align 8
  br label %242

216:                                              ; preds = %123
  %217 = load i32, i32* %6, align 4
  %218 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %219 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 1
  store i32 %217, i32* %221, align 4
  %222 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %223 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %222, i32 0, i32 2
  store i32 128, i32* %223, align 8
  br label %242

224:                                              ; preds = %123
  %225 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %226 = load i32, i32* %7, align 4
  %227 = or i32 %226, 4
  %228 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %229 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %234 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %233, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 1
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %6, align 4
  %239 = call i32 @gmidi_transmit_packet(%struct.usb_request* %225, i32 %227, i32 %232, i32 %237, i32 %238)
  %240 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %5, align 8
  %241 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %240, i32 0, i32 2
  store i32 130, i32* %241, align 8
  br label %242

242:                                              ; preds = %123, %224, %216, %208, %193, %160, %150
  br label %243

243:                                              ; preds = %242, %122
  br label %244

244:                                              ; preds = %243, %101
  br label %245

245:                                              ; preds = %244, %13
  ret void
}

declare dso_local i32 @gmidi_transmit_packet(%struct.usb_request*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

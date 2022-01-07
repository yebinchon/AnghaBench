; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_dummy_hcd.c_dummy_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_dummy_hcd.c_dummy_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32, i32 }
%struct.usb_endpoint_descriptor = type { i64, i32, i32, i32 }
%struct.dummy = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dummy_ep = type { i64, i64, %struct.usb_endpoint_descriptor*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ep0name = common dso_local global i32 0, align 4
@USB_DT_ENDPOINT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"-iso\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-int\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"-bulk\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"enabled %s (ep%d%s-%s) maxpacket %d\0A\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"bulk\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"iso\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"intr\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"ctrl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_endpoint_descriptor*)* @dummy_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_enable(%struct.usb_ep* %0, %struct.usb_endpoint_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.dummy*, align 8
  %7 = alloca %struct.dummy_ep*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %4, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %5, align 8
  %12 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %13 = call %struct.dummy_ep* @usb_ep_to_dummy_ep(%struct.usb_ep* %12)
  store %struct.dummy_ep* %13, %struct.dummy_ep** %7, align 8
  %14 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %15 = icmp ne %struct.usb_ep* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %2
  %17 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %18 = icmp ne %struct.usb_endpoint_descriptor* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load %struct.dummy_ep*, %struct.dummy_ep** %7, align 8
  %21 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %20, i32 0, i32 2
  %22 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %21, align 8
  %23 = icmp ne %struct.usb_endpoint_descriptor* %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %19
  %25 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %26 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ep0name, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %32 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @USB_DT_ENDPOINT, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %24, %19, %16, %2
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %212

39:                                               ; preds = %30
  %40 = load %struct.dummy_ep*, %struct.dummy_ep** %7, align 8
  %41 = call %struct.dummy* @ep_to_dummy(%struct.dummy_ep* %40)
  store %struct.dummy* %41, %struct.dummy** %6, align 8
  %42 = load %struct.dummy*, %struct.dummy** %6, align 8
  %43 = getelementptr inbounds %struct.dummy, %struct.dummy* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.dummy*, %struct.dummy** %6, align 8
  %48 = call i32 @is_enabled(%struct.dummy* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46, %39
  %51 = load i32, i32* @ESHUTDOWN, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %212

53:                                               ; preds = %46
  %54 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %55 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @le16_to_cpu(i32 %56)
  %58 = and i32 %57, 1023
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %9, align 4
  %61 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %62 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, 3
  switch i32 %64, label %167 [
    i32 132, label %65
    i32 131, label %106
    i32 130, label %135
  ]

65:                                               ; preds = %53
  %66 = load %struct.dummy_ep*, %struct.dummy_ep** %7, align 8
  %67 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @strstr(i32 %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %65
  %73 = load %struct.dummy_ep*, %struct.dummy_ep** %7, align 8
  %74 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @strstr(i32 %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72, %65
  br label %210

80:                                               ; preds = %72
  %81 = load %struct.dummy*, %struct.dummy** %6, align 8
  %82 = getelementptr inbounds %struct.dummy, %struct.dummy* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %104 [
    i32 128, label %85
    i32 129, label %90
  ]

85:                                               ; preds = %80
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %86, 512
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %105

89:                                               ; preds = %85
  br label %210

90:                                               ; preds = %80
  %91 = load i32, i32* %8, align 4
  %92 = icmp eq i32 %91, 8
  br i1 %92, label %102, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %8, align 4
  %95 = icmp eq i32 %94, 16
  br i1 %95, label %102, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = icmp eq i32 %97, 32
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %8, align 4
  %101 = icmp eq i32 %100, 64
  br i1 %101, label %102, label %103

102:                                              ; preds = %99, %96, %93, %90
  br label %105

103:                                              ; preds = %99
  br label %104

104:                                              ; preds = %80, %103
  br label %210

105:                                              ; preds = %102, %88
  br label %168

106:                                              ; preds = %53
  %107 = load %struct.dummy_ep*, %struct.dummy_ep** %7, align 8
  %108 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @strstr(i32 %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %210

114:                                              ; preds = %106
  %115 = load %struct.dummy*, %struct.dummy** %6, align 8
  %116 = getelementptr inbounds %struct.dummy, %struct.dummy* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  switch i32 %118, label %129 [
    i32 128, label %119
    i32 129, label %124
  ]

119:                                              ; preds = %114
  %120 = load i32, i32* %8, align 4
  %121 = icmp ule i32 %120, 1024
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %134

123:                                              ; preds = %119
  br label %124

124:                                              ; preds = %114, %123
  %125 = load i32, i32* %8, align 4
  %126 = icmp ule i32 %125, 64
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %134

128:                                              ; preds = %124
  br label %129

129:                                              ; preds = %114, %128
  %130 = load i32, i32* %8, align 4
  %131 = icmp ule i32 %130, 8
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %134

133:                                              ; preds = %129
  br label %210

134:                                              ; preds = %132, %127, %122
  br label %168

135:                                              ; preds = %53
  %136 = load %struct.dummy_ep*, %struct.dummy_ep** %7, align 8
  %137 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @strstr(i32 %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %135
  %143 = load %struct.dummy_ep*, %struct.dummy_ep** %7, align 8
  %144 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @strstr(i32 %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142, %135
  br label %210

150:                                              ; preds = %142
  %151 = load %struct.dummy*, %struct.dummy** %6, align 8
  %152 = getelementptr inbounds %struct.dummy, %struct.dummy* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  switch i32 %154, label %165 [
    i32 128, label %155
    i32 129, label %160
  ]

155:                                              ; preds = %150
  %156 = load i32, i32* %8, align 4
  %157 = icmp ule i32 %156, 1024
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  br label %166

159:                                              ; preds = %155
  br label %160

160:                                              ; preds = %150, %159
  %161 = load i32, i32* %8, align 4
  %162 = icmp ule i32 %161, 1023
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  br label %166

164:                                              ; preds = %160
  br label %165

165:                                              ; preds = %150, %164
  br label %210

166:                                              ; preds = %163, %158
  br label %168

167:                                              ; preds = %53
  br label %210

168:                                              ; preds = %166, %134, %105
  %169 = load i32, i32* %8, align 4
  %170 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %171 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 4
  %172 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %173 = load %struct.dummy_ep*, %struct.dummy_ep** %7, align 8
  %174 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %173, i32 0, i32 2
  store %struct.usb_endpoint_descriptor* %172, %struct.usb_endpoint_descriptor** %174, align 8
  %175 = load %struct.dummy*, %struct.dummy** %6, align 8
  %176 = call i32 @udc_dev(%struct.dummy* %175)
  %177 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %178 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %181 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, 15
  %184 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %185 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @USB_DIR_IN, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %192 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %193 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = and i32 %194, 3
  switch i32 %195, label %199 [
    i32 132, label %196
    i32 130, label %197
    i32 131, label %198
  ]

196:                                              ; preds = %168
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %10, align 8
  br label %200

197:                                              ; preds = %168
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %10, align 8
  br label %200

198:                                              ; preds = %168
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %10, align 8
  br label %200

199:                                              ; preds = %168
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %10, align 8
  br label %200

200:                                              ; preds = %199, %198, %197, %196
  %201 = load i8*, i8** %10, align 8
  store i8* %201, i8** %11, align 8
  %202 = load i8*, i8** %11, align 8
  %203 = ptrtoint i8* %202 to i32
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @dev_dbg(i32 %176, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %179, i32 %183, i8* %191, i32 %203, i32 %204)
  %206 = load %struct.dummy_ep*, %struct.dummy_ep** %7, align 8
  %207 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %206, i32 0, i32 0
  store i64 0, i64* %207, align 8
  %208 = load %struct.dummy_ep*, %struct.dummy_ep** %7, align 8
  %209 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %208, i32 0, i32 1
  store i64 0, i64* %209, align 8
  store i32 0, i32* %9, align 4
  br label %210

210:                                              ; preds = %200, %167, %165, %149, %133, %113, %104, %89, %79
  %211 = load i32, i32* %9, align 4
  store i32 %211, i32* %3, align 4
  br label %212

212:                                              ; preds = %210, %50, %36
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local %struct.dummy_ep* @usb_ep_to_dummy_ep(%struct.usb_ep*) #1

declare dso_local %struct.dummy* @ep_to_dummy(%struct.dummy_ep*) #1

declare dso_local i32 @is_enabled(%struct.dummy*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @strstr(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @udc_dev(%struct.dummy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

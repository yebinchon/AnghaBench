; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_dummy_hcd.c_set_link_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_dummy_hcd.c_set_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummy = type { i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_2__*, i64, i64, i32 }
%struct.TYPE_2__ = type { i32 (i32*)*, i32 (i32*)*, i32 (i32*)* }

@USB_PORT_STAT_POWER = common dso_local global i32 0, align 4
@USB_PORT_STAT_CONNECTION = common dso_local global i32 0, align 4
@USB_PORT_STAT_ENABLE = common dso_local global i32 0, align 4
@USB_PORT_STAT_LOW_SPEED = common dso_local global i32 0, align 4
@USB_PORT_STAT_HIGH_SPEED = common dso_local global i32 0, align 4
@USB_PORT_STAT_SUSPEND = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_CONNECTION = common dso_local global i32 0, align 4
@DUMMY_RH_SUSPENDED = common dso_local global i64 0, align 8
@USB_PORT_STAT_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dummy*)* @set_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_link_state(%struct.dummy* %0) #0 {
  %2 = alloca %struct.dummy*, align 8
  store %struct.dummy* %0, %struct.dummy** %2, align 8
  %3 = load %struct.dummy*, %struct.dummy** %2, align 8
  %4 = getelementptr inbounds %struct.dummy, %struct.dummy* %3, i32 0, i32 0
  store i32 0, i32* %4, align 8
  %5 = load %struct.dummy*, %struct.dummy** %2, align 8
  %6 = getelementptr inbounds %struct.dummy, %struct.dummy* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @USB_PORT_STAT_POWER, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.dummy*, %struct.dummy** %2, align 8
  %13 = getelementptr inbounds %struct.dummy, %struct.dummy* %12, i32 0, i32 1
  store i32 0, i32* %13, align 4
  br label %105

14:                                               ; preds = %1
  %15 = load %struct.dummy*, %struct.dummy** %2, align 8
  %16 = getelementptr inbounds %struct.dummy, %struct.dummy* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.dummy*, %struct.dummy** %2, align 8
  %21 = getelementptr inbounds %struct.dummy, %struct.dummy* %20, i32 0, i32 9
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %19, %14
  %25 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %26 = load i32, i32* @USB_PORT_STAT_ENABLE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @USB_PORT_STAT_LOW_SPEED, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @USB_PORT_STAT_HIGH_SPEED, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @USB_PORT_STAT_SUSPEND, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load %struct.dummy*, %struct.dummy** %2, align 8
  %36 = getelementptr inbounds %struct.dummy, %struct.dummy* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.dummy*, %struct.dummy** %2, align 8
  %40 = getelementptr inbounds %struct.dummy, %struct.dummy* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %24
  %46 = load i32, i32* @USB_PORT_STAT_C_CONNECTION, align 4
  %47 = shl i32 %46, 16
  %48 = load %struct.dummy*, %struct.dummy** %2, align 8
  %49 = getelementptr inbounds %struct.dummy, %struct.dummy* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %45, %24
  br label %104

53:                                               ; preds = %19
  %54 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %55 = load %struct.dummy*, %struct.dummy** %2, align 8
  %56 = getelementptr inbounds %struct.dummy, %struct.dummy* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.dummy*, %struct.dummy** %2, align 8
  %60 = getelementptr inbounds %struct.dummy, %struct.dummy* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %53
  %66 = load i32, i32* @USB_PORT_STAT_C_CONNECTION, align 4
  %67 = shl i32 %66, 16
  %68 = load %struct.dummy*, %struct.dummy** %2, align 8
  %69 = getelementptr inbounds %struct.dummy, %struct.dummy* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %65, %53
  %73 = load %struct.dummy*, %struct.dummy** %2, align 8
  %74 = getelementptr inbounds %struct.dummy, %struct.dummy* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @USB_PORT_STAT_ENABLE, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  %80 = load i32, i32* @USB_PORT_STAT_SUSPEND, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.dummy*, %struct.dummy** %2, align 8
  %83 = getelementptr inbounds %struct.dummy, %struct.dummy* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %103

86:                                               ; preds = %72
  %87 = load %struct.dummy*, %struct.dummy** %2, align 8
  %88 = getelementptr inbounds %struct.dummy, %struct.dummy* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @USB_PORT_STAT_SUSPEND, align 4
  %91 = and i32 %89, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %86
  %94 = load %struct.dummy*, %struct.dummy** %2, align 8
  %95 = getelementptr inbounds %struct.dummy, %struct.dummy* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @DUMMY_RH_SUSPENDED, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load %struct.dummy*, %struct.dummy** %2, align 8
  %101 = getelementptr inbounds %struct.dummy, %struct.dummy* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  br label %102

102:                                              ; preds = %99, %93, %86
  br label %103

103:                                              ; preds = %102, %79
  br label %104

104:                                              ; preds = %103, %52
  br label %105

105:                                              ; preds = %104, %11
  %106 = load %struct.dummy*, %struct.dummy** %2, align 8
  %107 = getelementptr inbounds %struct.dummy, %struct.dummy* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @USB_PORT_STAT_ENABLE, align 4
  %110 = and i32 %108, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %105
  %113 = load %struct.dummy*, %struct.dummy** %2, align 8
  %114 = getelementptr inbounds %struct.dummy, %struct.dummy* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112, %105
  %118 = load %struct.dummy*, %struct.dummy** %2, align 8
  %119 = getelementptr inbounds %struct.dummy, %struct.dummy* %118, i32 0, i32 8
  store i64 0, i64* %119, align 8
  br label %120

120:                                              ; preds = %117, %112
  %121 = load %struct.dummy*, %struct.dummy** %2, align 8
  %122 = getelementptr inbounds %struct.dummy, %struct.dummy* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %125 = and i32 %123, %124
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %120
  %128 = load %struct.dummy*, %struct.dummy** %2, align 8
  %129 = getelementptr inbounds %struct.dummy, %struct.dummy* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @USB_PORT_STAT_RESET, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %171

134:                                              ; preds = %127, %120
  %135 = load %struct.dummy*, %struct.dummy** %2, align 8
  %136 = getelementptr inbounds %struct.dummy, %struct.dummy* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %170

141:                                              ; preds = %134
  %142 = load %struct.dummy*, %struct.dummy** %2, align 8
  %143 = getelementptr inbounds %struct.dummy, %struct.dummy* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @USB_PORT_STAT_RESET, align 4
  %146 = and i32 %144, %145
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %170

148:                                              ; preds = %141
  %149 = load %struct.dummy*, %struct.dummy** %2, align 8
  %150 = getelementptr inbounds %struct.dummy, %struct.dummy* %149, i32 0, i32 7
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = icmp ne %struct.TYPE_2__* %151, null
  br i1 %152, label %153, label %170

153:                                              ; preds = %148
  %154 = load %struct.dummy*, %struct.dummy** %2, align 8
  %155 = call i32 @stop_activity(%struct.dummy* %154)
  %156 = load %struct.dummy*, %struct.dummy** %2, align 8
  %157 = getelementptr inbounds %struct.dummy, %struct.dummy* %156, i32 0, i32 5
  %158 = call i32 @spin_unlock(i32* %157)
  %159 = load %struct.dummy*, %struct.dummy** %2, align 8
  %160 = getelementptr inbounds %struct.dummy, %struct.dummy* %159, i32 0, i32 7
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 2
  %163 = load i32 (i32*)*, i32 (i32*)** %162, align 8
  %164 = load %struct.dummy*, %struct.dummy** %2, align 8
  %165 = getelementptr inbounds %struct.dummy, %struct.dummy* %164, i32 0, i32 6
  %166 = call i32 %163(i32* %165)
  %167 = load %struct.dummy*, %struct.dummy** %2, align 8
  %168 = getelementptr inbounds %struct.dummy, %struct.dummy* %167, i32 0, i32 5
  %169 = call i32 @spin_lock(i32* %168)
  br label %170

170:                                              ; preds = %153, %148, %141, %134
  br label %236

171:                                              ; preds = %127
  %172 = load %struct.dummy*, %struct.dummy** %2, align 8
  %173 = getelementptr inbounds %struct.dummy, %struct.dummy* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.dummy*, %struct.dummy** %2, align 8
  %176 = getelementptr inbounds %struct.dummy, %struct.dummy* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = icmp ne i32 %174, %177
  br i1 %178, label %179, label %235

179:                                              ; preds = %171
  %180 = load %struct.dummy*, %struct.dummy** %2, align 8
  %181 = getelementptr inbounds %struct.dummy, %struct.dummy* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %206

184:                                              ; preds = %179
  %185 = load %struct.dummy*, %struct.dummy** %2, align 8
  %186 = getelementptr inbounds %struct.dummy, %struct.dummy* %185, i32 0, i32 7
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 1
  %189 = load i32 (i32*)*, i32 (i32*)** %188, align 8
  %190 = icmp ne i32 (i32*)* %189, null
  br i1 %190, label %191, label %206

191:                                              ; preds = %184
  %192 = load %struct.dummy*, %struct.dummy** %2, align 8
  %193 = getelementptr inbounds %struct.dummy, %struct.dummy* %192, i32 0, i32 5
  %194 = call i32 @spin_unlock(i32* %193)
  %195 = load %struct.dummy*, %struct.dummy** %2, align 8
  %196 = getelementptr inbounds %struct.dummy, %struct.dummy* %195, i32 0, i32 7
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 1
  %199 = load i32 (i32*)*, i32 (i32*)** %198, align 8
  %200 = load %struct.dummy*, %struct.dummy** %2, align 8
  %201 = getelementptr inbounds %struct.dummy, %struct.dummy* %200, i32 0, i32 6
  %202 = call i32 %199(i32* %201)
  %203 = load %struct.dummy*, %struct.dummy** %2, align 8
  %204 = getelementptr inbounds %struct.dummy, %struct.dummy* %203, i32 0, i32 5
  %205 = call i32 @spin_lock(i32* %204)
  br label %234

206:                                              ; preds = %184, %179
  %207 = load %struct.dummy*, %struct.dummy** %2, align 8
  %208 = getelementptr inbounds %struct.dummy, %struct.dummy* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %233, label %211

211:                                              ; preds = %206
  %212 = load %struct.dummy*, %struct.dummy** %2, align 8
  %213 = getelementptr inbounds %struct.dummy, %struct.dummy* %212, i32 0, i32 7
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 0
  %216 = load i32 (i32*)*, i32 (i32*)** %215, align 8
  %217 = icmp ne i32 (i32*)* %216, null
  br i1 %217, label %218, label %233

218:                                              ; preds = %211
  %219 = load %struct.dummy*, %struct.dummy** %2, align 8
  %220 = getelementptr inbounds %struct.dummy, %struct.dummy* %219, i32 0, i32 5
  %221 = call i32 @spin_unlock(i32* %220)
  %222 = load %struct.dummy*, %struct.dummy** %2, align 8
  %223 = getelementptr inbounds %struct.dummy, %struct.dummy* %222, i32 0, i32 7
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 0
  %226 = load i32 (i32*)*, i32 (i32*)** %225, align 8
  %227 = load %struct.dummy*, %struct.dummy** %2, align 8
  %228 = getelementptr inbounds %struct.dummy, %struct.dummy* %227, i32 0, i32 6
  %229 = call i32 %226(i32* %228)
  %230 = load %struct.dummy*, %struct.dummy** %2, align 8
  %231 = getelementptr inbounds %struct.dummy, %struct.dummy* %230, i32 0, i32 5
  %232 = call i32 @spin_lock(i32* %231)
  br label %233

233:                                              ; preds = %218, %211, %206
  br label %234

234:                                              ; preds = %233, %191
  br label %235

235:                                              ; preds = %234, %171
  br label %236

236:                                              ; preds = %235, %170
  %237 = load %struct.dummy*, %struct.dummy** %2, align 8
  %238 = getelementptr inbounds %struct.dummy, %struct.dummy* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.dummy*, %struct.dummy** %2, align 8
  %241 = getelementptr inbounds %struct.dummy, %struct.dummy* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 8
  %242 = load %struct.dummy*, %struct.dummy** %2, align 8
  %243 = getelementptr inbounds %struct.dummy, %struct.dummy* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.dummy*, %struct.dummy** %2, align 8
  %246 = getelementptr inbounds %struct.dummy, %struct.dummy* %245, i32 0, i32 4
  store i32 %244, i32* %246, align 8
  ret void
}

declare dso_local i32 @stop_activity(%struct.dummy*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

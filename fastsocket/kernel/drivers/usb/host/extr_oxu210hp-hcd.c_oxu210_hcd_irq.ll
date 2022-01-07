; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_oxu210_hcd_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_oxu210_hcd_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i64, i32 }
%struct.oxu_hcd = type { i32, i64*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [16 x i8] c"device removed\0A\00", align 1
@INTR_MASK = common dso_local global i32 0, align 4
@HC_STATE_HALT = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@STS_INT = common dso_local global i32 0, align 4
@STS_ERR = common dso_local global i32 0, align 4
@STS_IAA = common dso_local global i32 0, align 4
@STS_PCD = common dso_local global i32 0, align 4
@CMD_RUN = common dso_local global i32 0, align 4
@PORT_OWNER = common dso_local global i32 0, align 4
@PORT_RESUME = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"port %d remote wakeup\0A\00", align 1
@STS_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"fatal\00", align 1
@STS_HALT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"fatal error\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @oxu210_hcd_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxu210_hcd_irq(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.oxu_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %11 = call %struct.oxu_hcd* @hcd_to_oxu(%struct.usb_hcd* %10)
  store %struct.oxu_hcd* %11, %struct.oxu_hcd** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %13 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %12, i32 0, i32 2
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %16 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = call i32 @readl(i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %24 = call i32 (%struct.oxu_hcd*, i8*, ...) @oxu_dbg(%struct.oxu_hcd* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %188

25:                                               ; preds = %1
  %26 = load i32, i32* @INTR_MASK, align 4
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %33 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @HC_STATE_HALT, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31, %25
  %41 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %42 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %41, i32 0, i32 2
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load i32, i32* @IRQ_NONE, align 4
  store i32 %44, i32* %2, align 4
  br label %218

45:                                               ; preds = %31
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %48 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = call i32 @writel(i32 %46, i32* %50)
  %52 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %53 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %52, i32 0, i32 3
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = call i32 @readl(i32* %55)
  store i32 0, i32* %7, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @STS_INT, align 4
  %59 = load i32, i32* @STS_ERR, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i64 @likely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %45
  store i32 1, i32* %7, align 4
  br label %67

67:                                               ; preds = %66, %45
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @STS_IAA, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %74 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  store i32 1, i32* %7, align 4
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @STS_PCD, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %157

80:                                               ; preds = %75
  %81 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %82 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @HCS_N_PORTS(i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %6, align 4
  %86 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %87 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %86, i32 0, i32 3
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = call i32 @readl(i32* %89)
  %91 = load i32, i32* @CMD_RUN, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %80
  %95 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %96 = call i32 @usb_hcd_resume_root_hub(%struct.usb_hcd* %95)
  br label %97

97:                                               ; preds = %94, %80
  br label %98

98:                                               ; preds = %132, %131, %116, %97
  %99 = load i32, i32* %8, align 4
  %100 = add i32 %99, -1
  store i32 %100, i32* %8, align 4
  %101 = icmp ne i32 %99, 0
  br i1 %101, label %102, label %156

102:                                              ; preds = %98
  %103 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %104 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %103, i32 0, i32 3
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = call i32 @readl(i32* %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @PORT_OWNER, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %102
  br label %98

117:                                              ; preds = %102
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @PORT_RESUME, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %124 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %123, i32 0, i32 1
  %125 = load i64*, i64** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %122, %117
  br label %98

132:                                              ; preds = %122
  %133 = load i64, i64* @jiffies, align 8
  %134 = call i64 @msecs_to_jiffies(i32 20)
  %135 = add nsw i64 %133, %134
  %136 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %137 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %136, i32 0, i32 1
  %138 = load i64*, i64** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  store i64 %135, i64* %141, align 8
  %142 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %143 = load i32, i32* %8, align 4
  %144 = add i32 %143, 1
  %145 = call i32 (%struct.oxu_hcd*, i8*, ...) @oxu_dbg(%struct.oxu_hcd* %142, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  %146 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %147 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %146, i32 0, i32 1
  %148 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %149 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %148, i32 0, i32 1
  %150 = load i64*, i64** %149, align 8
  %151 = load i32, i32* %8, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @mod_timer(i32* %147, i64 %154)
  br label %98

156:                                              ; preds = %98
  br label %157

157:                                              ; preds = %156, %75
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* @STS_FATAL, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i32
  %163 = call i64 @unlikely(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %199

165:                                              ; preds = %157
  %166 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %167 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %166, i32 0, i32 3
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 2
  %170 = call i32 @readl(i32* %169)
  store i32 %170, i32* %5, align 4
  %171 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %172 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %173 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %172, i32 0, i32 3
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  %176 = call i32 @readl(i32* %175)
  %177 = call i32 @dbg_cmd(%struct.oxu_hcd* %171, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %176)
  %178 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @dbg_status(%struct.oxu_hcd* %178, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %179)
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* @STS_HALT, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %198

185:                                              ; preds = %165
  %186 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %187 = call i32 @oxu_err(%struct.oxu_hcd* %186, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %188

188:                                              ; preds = %185, %22
  %189 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %190 = call i32 @ehci_reset(%struct.oxu_hcd* %189)
  %191 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %192 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %191, i32 0, i32 3
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = call i32 @writel(i32 0, i32* %194)
  %196 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %197 = call i32 @usb_hc_died(%struct.usb_hcd* %196)
  store i32 1, i32* %7, align 4
  br label %198

198:                                              ; preds = %188, %165
  br label %199

199:                                              ; preds = %198, %157
  %200 = load i32, i32* %7, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %204 = call i32 @ehci_work(%struct.oxu_hcd* %203)
  br label %205

205:                                              ; preds = %202, %199
  %206 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %207 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %206, i32 0, i32 2
  %208 = call i32 @spin_unlock(i32* %207)
  %209 = load i32, i32* %6, align 4
  %210 = load i32, i32* @STS_PCD, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %205
  %214 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %215 = call i32 @usb_hcd_poll_rh_status(%struct.usb_hcd* %214)
  br label %216

216:                                              ; preds = %213, %205
  %217 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %217, i32* %2, align 4
  br label %218

218:                                              ; preds = %216, %40
  %219 = load i32, i32* %2, align 4
  ret i32 %219
}

declare dso_local %struct.oxu_hcd* @hcd_to_oxu(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @oxu_dbg(%struct.oxu_hcd*, i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @HCS_N_PORTS(i32) #1

declare dso_local i32 @usb_hcd_resume_root_hub(%struct.usb_hcd*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @dbg_cmd(%struct.oxu_hcd*, i8*, i32) #1

declare dso_local i32 @dbg_status(%struct.oxu_hcd*, i8*, i32) #1

declare dso_local i32 @oxu_err(%struct.oxu_hcd*, i8*) #1

declare dso_local i32 @ehci_reset(%struct.oxu_hcd*) #1

declare dso_local i32 @usb_hc_died(%struct.usb_hcd*) #1

declare dso_local i32 @ehci_work(%struct.oxu_hcd*) #1

declare dso_local i32 @usb_hcd_poll_rh_status(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

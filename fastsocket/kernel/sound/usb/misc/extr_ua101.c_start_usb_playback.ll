; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/misc/extr_ua101.c_start_usb_playback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/misc/extr_ua101.c_start_usb_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ua101 = type { i32, i32*, i64, %struct.TYPE_7__, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.urb }
%struct.urb = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@DISCONNECTED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@USB_PLAYBACK_RUNNING = common dso_local global i32 0, align 4
@INTF_PLAYBACK = common dso_local global i32 0, align 4
@PLAYBACK_URB_COMPLETED = common dso_local global i32 0, align 4
@first_playback_urb_complete = common dso_local global i32 0, align 4
@USB_CAPTURE_RUNNING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ua101*)* @start_usb_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_usb_playback(%struct.ua101* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ua101*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  store %struct.ua101* %0, %struct.ua101** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @DISCONNECTED, align 4
  %9 = load %struct.ua101*, %struct.ua101** %3, align 8
  %10 = getelementptr inbounds %struct.ua101, %struct.ua101* %9, i32 0, i32 4
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %188

16:                                               ; preds = %1
  %17 = load i32, i32* @USB_PLAYBACK_RUNNING, align 4
  %18 = load %struct.ua101*, %struct.ua101** %3, align 8
  %19 = getelementptr inbounds %struct.ua101, %struct.ua101* %18, i32 0, i32 4
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %188

23:                                               ; preds = %16
  %24 = load %struct.ua101*, %struct.ua101** %3, align 8
  %25 = getelementptr inbounds %struct.ua101, %struct.ua101* %24, i32 0, i32 3
  %26 = call i32 @kill_stream_urbs(%struct.TYPE_7__* %25)
  %27 = load %struct.ua101*, %struct.ua101** %3, align 8
  %28 = getelementptr inbounds %struct.ua101, %struct.ua101* %27, i32 0, i32 8
  %29 = call i32 @tasklet_kill(i32* %28)
  %30 = load %struct.ua101*, %struct.ua101** %3, align 8
  %31 = load i32, i32* @INTF_PLAYBACK, align 4
  %32 = call i32 @enable_iso_interface(%struct.ua101* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %188

37:                                               ; preds = %23
  %38 = load i32, i32* @PLAYBACK_URB_COMPLETED, align 4
  %39 = load %struct.ua101*, %struct.ua101** %3, align 8
  %40 = getelementptr inbounds %struct.ua101, %struct.ua101* %39, i32 0, i32 4
  %41 = call i32 @clear_bit(i32 %38, i32* %40)
  %42 = load i32, i32* @first_playback_urb_complete, align 4
  %43 = load %struct.ua101*, %struct.ua101** %3, align 8
  %44 = getelementptr inbounds %struct.ua101, %struct.ua101* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %46, i64 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 2
  store i32 %42, i32* %50, align 4
  %51 = load %struct.ua101*, %struct.ua101** %3, align 8
  %52 = getelementptr inbounds %struct.ua101, %struct.ua101* %51, i32 0, i32 5
  %53 = call i32 @spin_lock_irq(i32* %52)
  %54 = load %struct.ua101*, %struct.ua101** %3, align 8
  %55 = getelementptr inbounds %struct.ua101, %struct.ua101* %54, i32 0, i32 7
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load %struct.ua101*, %struct.ua101** %3, align 8
  %58 = getelementptr inbounds %struct.ua101, %struct.ua101* %57, i32 0, i32 5
  %59 = call i32 @spin_unlock_irq(i32* %58)
  %60 = load %struct.ua101*, %struct.ua101** %3, align 8
  %61 = getelementptr inbounds %struct.ua101, %struct.ua101* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ua101*, %struct.ua101** %3, align 8
  %64 = getelementptr inbounds %struct.ua101, %struct.ua101* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ua101*, %struct.ua101** %3, align 8
  %67 = getelementptr inbounds %struct.ua101, %struct.ua101* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp uge i32 %65, %69
  br i1 %70, label %83, label %71

71:                                               ; preds = %37
  %72 = load i32, i32* @USB_CAPTURE_RUNNING, align 4
  %73 = load %struct.ua101*, %struct.ua101** %3, align 8
  %74 = getelementptr inbounds %struct.ua101, %struct.ua101* %73, i32 0, i32 4
  %75 = call i64 @test_bit(i32 %72, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load i32, i32* @DISCONNECTED, align 4
  %79 = load %struct.ua101*, %struct.ua101** %3, align 8
  %80 = getelementptr inbounds %struct.ua101, %struct.ua101* %79, i32 0, i32 4
  %81 = call i64 @test_bit(i32 %78, i32* %80)
  %82 = icmp ne i64 %81, 0
  br label %83

83:                                               ; preds = %77, %71, %37
  %84 = phi i1 [ true, %71 ], [ true, %37 ], [ %82, %77 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @wait_event(i32 %62, i32 %85)
  %87 = load i32, i32* @DISCONNECTED, align 4
  %88 = load %struct.ua101*, %struct.ua101** %3, align 8
  %89 = getelementptr inbounds %struct.ua101, %struct.ua101* %88, i32 0, i32 4
  %90 = call i64 @test_bit(i32 %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %83
  %93 = load %struct.ua101*, %struct.ua101** %3, align 8
  %94 = call i32 @stop_usb_playback(%struct.ua101* %93)
  %95 = load i32, i32* @ENODEV, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %188

97:                                               ; preds = %83
  %98 = load i32, i32* @USB_CAPTURE_RUNNING, align 4
  %99 = load %struct.ua101*, %struct.ua101** %3, align 8
  %100 = getelementptr inbounds %struct.ua101, %struct.ua101* %99, i32 0, i32 4
  %101 = call i64 @test_bit(i32 %98, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %97
  %104 = load %struct.ua101*, %struct.ua101** %3, align 8
  %105 = call i32 @stop_usb_playback(%struct.ua101* %104)
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %188

108:                                              ; preds = %97
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %169, %108
  %110 = load i32, i32* %4, align 4
  %111 = load %struct.ua101*, %struct.ua101** %3, align 8
  %112 = getelementptr inbounds %struct.ua101, %struct.ua101* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ult i32 %110, %114
  br i1 %115, label %116, label %172

116:                                              ; preds = %109
  %117 = load %struct.ua101*, %struct.ua101** %3, align 8
  %118 = getelementptr inbounds %struct.ua101, %struct.ua101* %117, i32 0, i32 5
  %119 = call i32 @spin_lock_irq(i32* %118)
  %120 = load %struct.ua101*, %struct.ua101** %3, align 8
  %121 = getelementptr inbounds %struct.ua101, %struct.ua101* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.ua101*, %struct.ua101** %3, align 8
  %124 = getelementptr inbounds %struct.ua101, %struct.ua101* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %5, align 4
  %128 = load %struct.ua101*, %struct.ua101** %3, align 8
  %129 = load %struct.ua101*, %struct.ua101** %3, align 8
  %130 = getelementptr inbounds %struct.ua101, %struct.ua101* %129, i32 0, i32 2
  %131 = call i32 @add_with_wraparound(%struct.ua101* %128, i64* %130, i32 1)
  %132 = load %struct.ua101*, %struct.ua101** %3, align 8
  %133 = getelementptr inbounds %struct.ua101, %struct.ua101* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add i32 %134, -1
  store i32 %135, i32* %133, align 8
  %136 = load %struct.ua101*, %struct.ua101** %3, align 8
  %137 = getelementptr inbounds %struct.ua101, %struct.ua101* %136, i32 0, i32 5
  %138 = call i32 @spin_unlock_irq(i32* %137)
  %139 = load %struct.ua101*, %struct.ua101** %3, align 8
  %140 = getelementptr inbounds %struct.ua101, %struct.ua101* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %142, i64 %144
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  store %struct.urb* %147, %struct.urb** %6, align 8
  %148 = load i32, i32* %5, align 4
  %149 = load %struct.ua101*, %struct.ua101** %3, align 8
  %150 = getelementptr inbounds %struct.ua101, %struct.ua101* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = mul i32 %148, %152
  %154 = load %struct.urb*, %struct.urb** %6, align 8
  %155 = getelementptr inbounds %struct.urb, %struct.urb* %154, i32 0, i32 0
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i64 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  store i32 %153, i32* %158, align 4
  %159 = load %struct.urb*, %struct.urb** %6, align 8
  %160 = getelementptr inbounds %struct.urb, %struct.urb* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.urb*, %struct.urb** %6, align 8
  %163 = getelementptr inbounds %struct.urb, %struct.urb* %162, i32 0, i32 0
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i64 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @memset(i32 %161, i32 0, i32 %167)
  br label %169

169:                                              ; preds = %116
  %170 = load i32, i32* %4, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %4, align 4
  br label %109

172:                                              ; preds = %109
  %173 = load i32, i32* @USB_PLAYBACK_RUNNING, align 4
  %174 = load %struct.ua101*, %struct.ua101** %3, align 8
  %175 = getelementptr inbounds %struct.ua101, %struct.ua101* %174, i32 0, i32 4
  %176 = call i32 @set_bit(i32 %173, i32* %175)
  %177 = load %struct.ua101*, %struct.ua101** %3, align 8
  %178 = load %struct.ua101*, %struct.ua101** %3, align 8
  %179 = getelementptr inbounds %struct.ua101, %struct.ua101* %178, i32 0, i32 3
  %180 = call i32 @submit_stream_urbs(%struct.ua101* %177, %struct.TYPE_7__* %179)
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %7, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %172
  %184 = load %struct.ua101*, %struct.ua101** %3, align 8
  %185 = call i32 @stop_usb_playback(%struct.ua101* %184)
  br label %186

186:                                              ; preds = %183, %172
  %187 = load i32, i32* %7, align 4
  store i32 %187, i32* %2, align 4
  br label %188

188:                                              ; preds = %186, %103, %92, %35, %22, %13
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @kill_stream_urbs(%struct.TYPE_7__*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @enable_iso_interface(%struct.ua101*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @stop_usb_playback(%struct.ua101*) #1

declare dso_local i32 @add_with_wraparound(%struct.ua101*, i64*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @submit_stream_urbs(%struct.ua101*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

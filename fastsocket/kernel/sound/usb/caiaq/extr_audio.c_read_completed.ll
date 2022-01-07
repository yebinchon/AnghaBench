; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/caiaq/extr_audio.c_read_completed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/caiaq/extr_audio.c_read_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i8*, %struct.TYPE_3__*, %struct.snd_usb_caiaq_cb_info*, i64 }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }
%struct.snd_usb_caiaq_cb_info = type { i32, %struct.snd_usb_caiaqdev* }
%struct.snd_usb_caiaqdev = type { i32, i32, i32, i32, %struct.urb**, i32 }

@N_URBS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to find an output urb to use\0A\00", align 1
@FRAMES_PER_URB = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i8* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BYTES_PER_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @read_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_completed(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.snd_usb_caiaq_cb_info*, align 8
  %4 = alloca %struct.snd_usb_caiaqdev*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.snd_usb_caiaq_cb_info*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %13 = load %struct.urb*, %struct.urb** %2, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 3
  %15 = load %struct.snd_usb_caiaq_cb_info*, %struct.snd_usb_caiaq_cb_info** %14, align 8
  store %struct.snd_usb_caiaq_cb_info* %15, %struct.snd_usb_caiaq_cb_info** %3, align 8
  store %struct.urb* null, %struct.urb** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %16 = load %struct.urb*, %struct.urb** %2, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load %struct.snd_usb_caiaq_cb_info*, %struct.snd_usb_caiaq_cb_info** %3, align 8
  %22 = icmp ne %struct.snd_usb_caiaq_cb_info* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %1
  br label %225

24:                                               ; preds = %20
  %25 = load %struct.snd_usb_caiaq_cb_info*, %struct.snd_usb_caiaq_cb_info** %3, align 8
  %26 = getelementptr inbounds %struct.snd_usb_caiaq_cb_info, %struct.snd_usb_caiaq_cb_info* %25, i32 0, i32 1
  %27 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %26, align 8
  store %struct.snd_usb_caiaqdev* %27, %struct.snd_usb_caiaqdev** %4, align 8
  %28 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %29 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  br label %225

33:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %53, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @N_URBS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %41 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %40, i32 0, i32 0
  %42 = call i64 @test_and_set_bit(i32 %39, i32* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %46 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %45, i32 0, i32 4
  %47 = load %struct.urb**, %struct.urb*** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.urb*, %struct.urb** %47, i64 %49
  %51 = load %struct.urb*, %struct.urb** %50, align 8
  store %struct.urb* %51, %struct.urb** %5, align 8
  br label %56

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %34

56:                                               ; preds = %44, %34
  %57 = load %struct.urb*, %struct.urb** %5, align 8
  %58 = icmp ne %struct.urb* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = call i32 @log(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %180

61:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %153, %61
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @FRAMES_PER_URB, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %156

66:                                               ; preds = %62
  %67 = load %struct.urb*, %struct.urb** %2, align 8
  %68 = getelementptr inbounds %struct.urb, %struct.urb* %67, i32 0, i32 2
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %153

77:                                               ; preds = %66
  %78 = load %struct.urb*, %struct.urb** %2, align 8
  %79 = getelementptr inbounds %struct.urb, %struct.urb* %78, i32 0, i32 2
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.urb*, %struct.urb** %5, align 8
  %88 = getelementptr inbounds %struct.urb, %struct.urb* %87, i32 0, i32 2
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  store i32 %86, i32* %93, align 4
  %94 = load %struct.urb*, %struct.urb** %5, align 8
  %95 = getelementptr inbounds %struct.urb, %struct.urb* %94, i32 0, i32 2
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  %101 = load i64, i64* %11, align 8
  %102 = load %struct.urb*, %struct.urb** %5, align 8
  %103 = getelementptr inbounds %struct.urb, %struct.urb* %102, i32 0, i32 2
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  store i64 %101, i64* %108, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* %11, align 8
  %112 = add i64 %111, %110
  store i64 %112, i64* %11, align 8
  %113 = load i32, i32* %8, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %150

115:                                              ; preds = %77
  %116 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %117 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %116, i32 0, i32 3
  %118 = call i32 @spin_lock(i32* %117)
  %119 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %120 = load %struct.urb*, %struct.urb** %5, align 8
  %121 = load %struct.urb*, %struct.urb** %5, align 8
  %122 = getelementptr inbounds %struct.urb, %struct.urb* %121, i32 0, i32 2
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 %125
  %127 = call i32 @fill_out_urb(%struct.snd_usb_caiaqdev* %119, %struct.urb* %120, %struct.TYPE_3__* %126)
  %128 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %129 = load %struct.urb*, %struct.urb** %2, align 8
  %130 = load %struct.urb*, %struct.urb** %2, align 8
  %131 = getelementptr inbounds %struct.urb, %struct.urb* %130, i32 0, i32 2
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i64 %134
  %136 = call i32 @read_in_urb(%struct.snd_usb_caiaqdev* %128, %struct.urb* %129, %struct.TYPE_3__* %135)
  %137 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %138 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %137, i32 0, i32 3
  %139 = call i32 @spin_unlock(i32* %138)
  %140 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %141 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %142 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @check_for_elapsed_periods(%struct.snd_usb_caiaqdev* %140, i32 %143)
  %145 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %146 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %147 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @check_for_elapsed_periods(%struct.snd_usb_caiaqdev* %145, i32 %148)
  store i32 1, i32* %9, align 4
  br label %150

150:                                              ; preds = %115, %77
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %10, align 4
  br label %153

153:                                              ; preds = %150, %76
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %7, align 4
  br label %62

156:                                              ; preds = %62
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %156
  %160 = load i32, i32* %10, align 4
  %161 = load %struct.urb*, %struct.urb** %5, align 8
  %162 = getelementptr inbounds %struct.urb, %struct.urb* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load i8*, i8** @URB_ISO_ASAP, align 8
  %164 = load %struct.urb*, %struct.urb** %5, align 8
  %165 = getelementptr inbounds %struct.urb, %struct.urb* %164, i32 0, i32 1
  store i8* %163, i8** %165, align 8
  %166 = load %struct.urb*, %struct.urb** %5, align 8
  %167 = load i32, i32* @GFP_ATOMIC, align 4
  %168 = call i32 @usb_submit_urb(%struct.urb* %166, i32 %167)
  br label %179

169:                                              ; preds = %156
  %170 = load %struct.urb*, %struct.urb** %5, align 8
  %171 = getelementptr inbounds %struct.urb, %struct.urb* %170, i32 0, i32 3
  %172 = load %struct.snd_usb_caiaq_cb_info*, %struct.snd_usb_caiaq_cb_info** %171, align 8
  store %struct.snd_usb_caiaq_cb_info* %172, %struct.snd_usb_caiaq_cb_info** %12, align 8
  %173 = load %struct.snd_usb_caiaq_cb_info*, %struct.snd_usb_caiaq_cb_info** %12, align 8
  %174 = getelementptr inbounds %struct.snd_usb_caiaq_cb_info, %struct.snd_usb_caiaq_cb_info* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %177 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %176, i32 0, i32 0
  %178 = call i32 @clear_bit(i32 %175, i32* %177)
  br label %179

179:                                              ; preds = %169, %159
  br label %180

180:                                              ; preds = %179, %59
  store i32 0, i32* %7, align 4
  br label %181

181:                                              ; preds = %212, %180
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* @FRAMES_PER_URB, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %215

185:                                              ; preds = %181
  %186 = load i32, i32* @BYTES_PER_FRAME, align 4
  %187 = load i32, i32* %7, align 4
  %188 = mul nsw i32 %186, %187
  %189 = sext i32 %188 to i64
  %190 = load %struct.urb*, %struct.urb** %2, align 8
  %191 = getelementptr inbounds %struct.urb, %struct.urb* %190, i32 0, i32 2
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %191, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 2
  store i64 %189, i64* %196, align 8
  %197 = load i32, i32* @BYTES_PER_FRAME, align 4
  %198 = load %struct.urb*, %struct.urb** %2, align 8
  %199 = getelementptr inbounds %struct.urb, %struct.urb* %198, i32 0, i32 2
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %199, align 8
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 1
  store i32 %197, i32* %204, align 4
  %205 = load %struct.urb*, %struct.urb** %2, align 8
  %206 = getelementptr inbounds %struct.urb, %struct.urb* %205, i32 0, i32 2
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %206, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 0
  store i32 0, i32* %211, align 8
  br label %212

212:                                              ; preds = %185
  %213 = load i32, i32* %7, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %7, align 4
  br label %181

215:                                              ; preds = %181
  %216 = load i32, i32* @FRAMES_PER_URB, align 4
  %217 = load %struct.urb*, %struct.urb** %2, align 8
  %218 = getelementptr inbounds %struct.urb, %struct.urb* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 8
  %219 = load i8*, i8** @URB_ISO_ASAP, align 8
  %220 = load %struct.urb*, %struct.urb** %2, align 8
  %221 = getelementptr inbounds %struct.urb, %struct.urb* %220, i32 0, i32 1
  store i8* %219, i8** %221, align 8
  %222 = load %struct.urb*, %struct.urb** %2, align 8
  %223 = load i32, i32* @GFP_ATOMIC, align 4
  %224 = call i32 @usb_submit_urb(%struct.urb* %222, i32 %223)
  br label %225

225:                                              ; preds = %215, %32, %23
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @log(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @fill_out_urb(%struct.snd_usb_caiaqdev*, %struct.urb*, %struct.TYPE_3__*) #1

declare dso_local i32 @read_in_urb(%struct.snd_usb_caiaqdev*, %struct.urb*, %struct.TYPE_3__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @check_for_elapsed_periods(%struct.snd_usb_caiaqdev*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

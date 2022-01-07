; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/lapb/extr_lapb_out.c_lapb_check_iframes_acked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/lapb/extr_lapb_out.c_lapb_check_iframes_acked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lapb_cb = type { i16, i16, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lapb_check_iframes_acked(%struct.lapb_cb* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.lapb_cb*, align 8
  %4 = alloca i16, align 2
  store %struct.lapb_cb* %0, %struct.lapb_cb** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %6 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %5, i32 0, i32 0
  %7 = load i16, i16* %6, align 8
  %8 = zext i16 %7 to i32
  %9 = load i16, i16* %4, align 2
  %10 = zext i16 %9 to i32
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %14 = load i16, i16* %4, align 2
  %15 = call i32 @lapb_frames_acked(%struct.lapb_cb* %13, i16 zeroext %14)
  %16 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %17 = call i32 @lapb_stop_t1timer(%struct.lapb_cb* %16)
  %18 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %19 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  br label %35

20:                                               ; preds = %2
  %21 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %22 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %21, i32 0, i32 1
  %23 = load i16, i16* %22, align 2
  %24 = zext i16 %23 to i32
  %25 = load i16, i16* %4, align 2
  %26 = zext i16 %25 to i32
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %30 = load i16, i16* %4, align 2
  %31 = call i32 @lapb_frames_acked(%struct.lapb_cb* %29, i16 zeroext %30)
  %32 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %33 = call i32 @lapb_start_t1timer(%struct.lapb_cb* %32)
  br label %34

34:                                               ; preds = %28, %20
  br label %35

35:                                               ; preds = %34, %12
  ret void
}

declare dso_local i32 @lapb_frames_acked(%struct.lapb_cb*, i16 zeroext) #1

declare dso_local i32 @lapb_stop_t1timer(%struct.lapb_cb*) #1

declare dso_local i32 @lapb_start_t1timer(%struct.lapb_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

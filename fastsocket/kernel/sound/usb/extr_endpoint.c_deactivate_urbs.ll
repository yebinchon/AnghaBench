; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_endpoint.c_deactivate_urbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_endpoint.c_deactivate_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_endpoint = type { i32, %struct.TYPE_4__*, i32, i32, i64, i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.urb* }
%struct.urb = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }

@EBADFD = common dso_local global i32 0, align 4
@EP_FLAG_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_endpoint*, i32, i32)* @deactivate_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deactivate_urbs(%struct.snd_usb_endpoint* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_usb_endpoint*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.urb*, align 8
  store %struct.snd_usb_endpoint* %0, %struct.snd_usb_endpoint** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %3
  %14 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %15 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %14, i32 0, i32 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, i32* @EBADFD, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %96

23:                                               ; preds = %13, %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %28 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %27, i32 0, i32 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %26, %23
  %34 = phi i1 [ false, %23 ], [ %32, %26 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* @EP_FLAG_RUNNING, align 4
  %37 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %38 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %37, i32 0, i32 7
  %39 = call i32 @clear_bit(i32 %36, i32* %38)
  %40 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %41 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %40, i32 0, i32 6
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %44 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %46 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %33
  %50 = call i64 (...) @in_interrupt()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %96

53:                                               ; preds = %49, %33
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %92, %53
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %57 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ult i32 %55, %58
  br i1 %59, label %60, label %95

60:                                               ; preds = %54
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %63 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %62, i32 0, i32 3
  %64 = call i64 @test_bit(i32 %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %91

66:                                               ; preds = %60
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %69 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %68, i32 0, i32 2
  %70 = call i32 @test_and_set_bit(i32 %67, i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %90, label %72

72:                                               ; preds = %66
  %73 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %74 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.urb*, %struct.urb** %79, align 8
  store %struct.urb* %80, %struct.urb** %10, align 8
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %72
  %84 = load %struct.urb*, %struct.urb** %10, align 8
  %85 = call i32 @usb_unlink_urb(%struct.urb* %84)
  br label %89

86:                                               ; preds = %72
  %87 = load %struct.urb*, %struct.urb** %10, align 8
  %88 = call i32 @usb_kill_urb(%struct.urb* %87)
  br label %89

89:                                               ; preds = %86, %83
  br label %90

90:                                               ; preds = %89, %66
  br label %91

91:                                               ; preds = %90, %60
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %8, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %54

95:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %52, %20
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @usb_unlink_urb(%struct.urb*) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

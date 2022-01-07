; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_serial.c_gser_set_alt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_serial.c_gser_set_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }
%struct.f_gser = type { i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i8*, i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"reset generic ttyGS%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"activate generic ttyGS%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, i32, i32)* @gser_set_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gser_set_alt(%struct.usb_function* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usb_function*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.f_gser*, align 8
  %8 = alloca %struct.usb_composite_dev*, align 8
  store %struct.usb_function* %0, %struct.usb_function** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %10 = call %struct.f_gser* @func_to_gser(%struct.usb_function* %9)
  store %struct.f_gser* %10, %struct.f_gser** %7, align 8
  %11 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %12 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %14, align 8
  store %struct.usb_composite_dev* %15, %struct.usb_composite_dev** %8, align 8
  %16 = load %struct.f_gser*, %struct.f_gser** %7, align 8
  %17 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %8, align 8
  %25 = load %struct.f_gser*, %struct.f_gser** %7, align 8
  %26 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @DBG(%struct.usb_composite_dev* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.f_gser*, %struct.f_gser** %7, align 8
  %30 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %29, i32 0, i32 1
  %31 = call i32 @gserial_disconnect(%struct.TYPE_11__* %30)
  br label %68

32:                                               ; preds = %3
  %33 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %8, align 8
  %34 = load %struct.f_gser*, %struct.f_gser** %7, align 8
  %35 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @DBG(%struct.usb_composite_dev* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %8, align 8
  %39 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.f_gser*, %struct.f_gser** %7, align 8
  %42 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.f_gser*, %struct.f_gser** %7, align 8
  %46 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @ep_choose(i32 %40, i32 %44, i32 %48)
  %50 = load %struct.f_gser*, %struct.f_gser** %7, align 8
  %51 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  store i8* %49, i8** %52, align 8
  %53 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %8, align 8
  %54 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.f_gser*, %struct.f_gser** %7, align 8
  %57 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.f_gser*, %struct.f_gser** %7, align 8
  %61 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i8* @ep_choose(i32 %55, i32 %59, i32 %63)
  %65 = load %struct.f_gser*, %struct.f_gser** %7, align 8
  %66 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  store i8* %64, i8** %67, align 8
  br label %68

68:                                               ; preds = %32, %23
  %69 = load %struct.f_gser*, %struct.f_gser** %7, align 8
  %70 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %69, i32 0, i32 1
  %71 = load %struct.f_gser*, %struct.f_gser** %7, align 8
  %72 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @gserial_connect(%struct.TYPE_11__* %70, i32 %73)
  ret i32 0
}

declare dso_local %struct.f_gser* @func_to_gser(%struct.usb_function*) #1

declare dso_local i32 @DBG(%struct.usb_composite_dev*, i8*, i32) #1

declare dso_local i32 @gserial_disconnect(%struct.TYPE_11__*) #1

declare dso_local i8* @ep_choose(i32, i32, i32) #1

declare dso_local i32 @gserial_connect(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

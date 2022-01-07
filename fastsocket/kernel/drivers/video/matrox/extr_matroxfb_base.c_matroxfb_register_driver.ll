; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_base.c_matroxfb_register_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_base.c_matroxfb_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }
%struct.matroxfb_driver = type { i8* (%struct.matrox_fb_info*)*, i32 }
%struct.matrox_fb_info = type opaque
%struct.matrox_fb_info.0 = type { i64, %struct.matroxfb_driver**, i8**, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }

@matroxfb_driver_list = common dso_local global i32 0, align 4
@matroxfb_list = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@MATROXFB_MAX_FB_DRIVERS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @matroxfb_register_driver(%struct.matroxfb_driver* %0) #0 {
  %2 = alloca %struct.matroxfb_driver*, align 8
  %3 = alloca %struct.matrox_fb_info.0*, align 8
  %4 = alloca i8*, align 8
  store %struct.matroxfb_driver* %0, %struct.matroxfb_driver** %2, align 8
  %5 = load %struct.matroxfb_driver*, %struct.matroxfb_driver** %2, align 8
  %6 = getelementptr inbounds %struct.matroxfb_driver, %struct.matroxfb_driver* %5, i32 0, i32 1
  %7 = call i32 @list_add(i32* %6, i32* @matroxfb_driver_list)
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @matroxfb_list, i32 0, i32 0), align 8
  %9 = call %struct.matrox_fb_info.0* @matroxfb_l(%struct.TYPE_5__* %8)
  store %struct.matrox_fb_info.0* %9, %struct.matrox_fb_info.0** %3, align 8
  br label %10

10:                                               ; preds = %49, %1
  %11 = load %struct.matrox_fb_info.0*, %struct.matrox_fb_info.0** %3, align 8
  %12 = call %struct.matrox_fb_info.0* @matroxfb_l(%struct.TYPE_5__* @matroxfb_list)
  %13 = icmp ne %struct.matrox_fb_info.0* %11, %12
  br i1 %13, label %14, label %55

14:                                               ; preds = %10
  %15 = load %struct.matrox_fb_info.0*, %struct.matrox_fb_info.0** %3, align 8
  %16 = getelementptr inbounds %struct.matrox_fb_info.0, %struct.matrox_fb_info.0* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MATROXFB_MAX_FB_DRIVERS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %49

21:                                               ; preds = %14
  %22 = load %struct.matroxfb_driver*, %struct.matroxfb_driver** %2, align 8
  %23 = getelementptr inbounds %struct.matroxfb_driver, %struct.matroxfb_driver* %22, i32 0, i32 0
  %24 = load i8* (%struct.matrox_fb_info*)*, i8* (%struct.matrox_fb_info*)** %23, align 8
  %25 = load %struct.matrox_fb_info.0*, %struct.matrox_fb_info.0** %3, align 8
  %26 = bitcast %struct.matrox_fb_info.0* %25 to %struct.matrox_fb_info*
  %27 = call i8* %24(%struct.matrox_fb_info* %26)
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %21
  %31 = load i8*, i8** %4, align 8
  %32 = load %struct.matrox_fb_info.0*, %struct.matrox_fb_info.0** %3, align 8
  %33 = getelementptr inbounds %struct.matrox_fb_info.0, %struct.matrox_fb_info.0* %32, i32 0, i32 2
  %34 = load i8**, i8*** %33, align 8
  %35 = load %struct.matrox_fb_info.0*, %struct.matrox_fb_info.0** %3, align 8
  %36 = getelementptr inbounds %struct.matrox_fb_info.0, %struct.matrox_fb_info.0* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i8*, i8** %34, i64 %37
  store i8* %31, i8** %38, align 8
  %39 = load %struct.matroxfb_driver*, %struct.matroxfb_driver** %2, align 8
  %40 = load %struct.matrox_fb_info.0*, %struct.matrox_fb_info.0** %3, align 8
  %41 = getelementptr inbounds %struct.matrox_fb_info.0, %struct.matrox_fb_info.0* %40, i32 0, i32 1
  %42 = load %struct.matroxfb_driver**, %struct.matroxfb_driver*** %41, align 8
  %43 = load %struct.matrox_fb_info.0*, %struct.matrox_fb_info.0** %3, align 8
  %44 = getelementptr inbounds %struct.matrox_fb_info.0, %struct.matrox_fb_info.0* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = getelementptr inbounds %struct.matroxfb_driver*, %struct.matroxfb_driver** %42, i64 %45
  store %struct.matroxfb_driver* %39, %struct.matroxfb_driver** %47, align 8
  br label %48

48:                                               ; preds = %30, %21
  br label %49

49:                                               ; preds = %48, %20
  %50 = load %struct.matrox_fb_info.0*, %struct.matrox_fb_info.0** %3, align 8
  %51 = getelementptr inbounds %struct.matrox_fb_info.0, %struct.matrox_fb_info.0* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = call %struct.matrox_fb_info.0* @matroxfb_l(%struct.TYPE_5__* %53)
  store %struct.matrox_fb_info.0* %54, %struct.matrox_fb_info.0** %3, align 8
  br label %10

55:                                               ; preds = %10
  ret i32 0
}

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local %struct.matrox_fb_info.0* @matroxfb_l(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_jack.c_snd_jack_dev_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_jack.c_snd_jack_dev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_device = type { %struct.snd_card*, %struct.snd_jack* }
%struct.snd_card = type { i8* }
%struct.snd_jack = type { i8*, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_device*)* @snd_jack_dev_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_jack_dev_register(%struct.snd_device* %0) #0 {
  %2 = alloca %struct.snd_device*, align 8
  %3 = alloca %struct.snd_jack*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_device* %0, %struct.snd_device** %2, align 8
  %6 = load %struct.snd_device*, %struct.snd_device** %2, align 8
  %7 = getelementptr inbounds %struct.snd_device, %struct.snd_device* %6, i32 0, i32 1
  %8 = load %struct.snd_jack*, %struct.snd_jack** %7, align 8
  store %struct.snd_jack* %8, %struct.snd_jack** %3, align 8
  %9 = load %struct.snd_device*, %struct.snd_device** %2, align 8
  %10 = getelementptr inbounds %struct.snd_device, %struct.snd_device* %9, i32 0, i32 0
  %11 = load %struct.snd_card*, %struct.snd_card** %10, align 8
  store %struct.snd_card* %11, %struct.snd_card** %4, align 8
  %12 = load %struct.snd_jack*, %struct.snd_jack** %3, align 8
  %13 = getelementptr inbounds %struct.snd_jack, %struct.snd_jack* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %16 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.snd_jack*, %struct.snd_jack** %3, align 8
  %19 = getelementptr inbounds %struct.snd_jack, %struct.snd_jack* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @snprintf(i32 %14, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %20)
  %22 = load %struct.snd_jack*, %struct.snd_jack** %3, align 8
  %23 = getelementptr inbounds %struct.snd_jack, %struct.snd_jack* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.snd_jack*, %struct.snd_jack** %3, align 8
  %26 = getelementptr inbounds %struct.snd_jack, %struct.snd_jack* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 %24, i32* %28, align 8
  %29 = load %struct.snd_jack*, %struct.snd_jack** %3, align 8
  %30 = getelementptr inbounds %struct.snd_jack, %struct.snd_jack* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %1
  %37 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %38 = call i64 @snd_card_get_device_link(%struct.snd_card* %37)
  %39 = load %struct.snd_jack*, %struct.snd_jack** %3, align 8
  %40 = getelementptr inbounds %struct.snd_jack, %struct.snd_jack* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i64 %38, i64* %43, align 8
  br label %44

44:                                               ; preds = %36, %1
  %45 = load %struct.snd_jack*, %struct.snd_jack** %3, align 8
  %46 = getelementptr inbounds %struct.snd_jack, %struct.snd_jack* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = call i32 @input_register_device(%struct.TYPE_4__* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.snd_jack*, %struct.snd_jack** %3, align 8
  %53 = getelementptr inbounds %struct.snd_jack, %struct.snd_jack* %52, i32 0, i32 1
  store i32 1, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %44
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i64 @snd_card_get_device_link(%struct.snd_card*) #1

declare dso_local i32 @input_register_device(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

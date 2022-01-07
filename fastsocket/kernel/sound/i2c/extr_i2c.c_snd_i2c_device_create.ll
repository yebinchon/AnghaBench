; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/extr_i2c.c_snd_i2c_device_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/extr_i2c.c_snd_i2c_device_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_i2c_bus = type { i32 }
%struct.snd_i2c_device = type { i8, %struct.snd_i2c_bus*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_i2c_device_create(%struct.snd_i2c_bus* %0, i8* %1, i8 zeroext %2, %struct.snd_i2c_device** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_i2c_bus*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.snd_i2c_device**, align 8
  %10 = alloca %struct.snd_i2c_device*, align 8
  store %struct.snd_i2c_bus* %0, %struct.snd_i2c_bus** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8 %2, i8* %8, align 1
  store %struct.snd_i2c_device** %3, %struct.snd_i2c_device*** %9, align 8
  %11 = load %struct.snd_i2c_device**, %struct.snd_i2c_device*** %9, align 8
  store %struct.snd_i2c_device* null, %struct.snd_i2c_device** %11, align 8
  %12 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %6, align 8
  %13 = icmp ne %struct.snd_i2c_bus* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @snd_BUG_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %48

21:                                               ; preds = %4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.snd_i2c_device* @kzalloc(i32 24, i32 %22)
  store %struct.snd_i2c_device* %23, %struct.snd_i2c_device** %10, align 8
  %24 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %10, align 8
  %25 = icmp eq %struct.snd_i2c_device* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %48

29:                                               ; preds = %21
  %30 = load i8, i8* %8, align 1
  %31 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %10, align 8
  %32 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %31, i32 0, i32 0
  store i8 %30, i8* %32, align 8
  %33 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %10, align 8
  %34 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @strlcpy(i32 %35, i8* %36, i32 4)
  %38 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %10, align 8
  %39 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %38, i32 0, i32 2
  %40 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %6, align 8
  %41 = getelementptr inbounds %struct.snd_i2c_bus, %struct.snd_i2c_bus* %40, i32 0, i32 0
  %42 = call i32 @list_add_tail(i32* %39, i32* %41)
  %43 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %6, align 8
  %44 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %10, align 8
  %45 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %44, i32 0, i32 1
  store %struct.snd_i2c_bus* %43, %struct.snd_i2c_bus** %45, align 8
  %46 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %10, align 8
  %47 = load %struct.snd_i2c_device**, %struct.snd_i2c_device*** %9, align 8
  store %struct.snd_i2c_device* %46, %struct.snd_i2c_device** %47, align 8
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %29, %26, %18
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local %struct.snd_i2c_device* @kzalloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

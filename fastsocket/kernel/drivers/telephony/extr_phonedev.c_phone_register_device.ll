; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_phonedev.c_phone_register_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_phonedev.c_phone_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phone_device = type { i32 }

@PHONE_NUM_DEVICES = common dso_local global i32 0, align 4
@PHONE_UNIT_ANY = common dso_local global i32 0, align 4
@phone_lock = common dso_local global i32 0, align 4
@phone_device = common dso_local global %struct.phone_device** null, align 8
@ENFILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phone_register_device(%struct.phone_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phone_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.phone_device* %0, %struct.phone_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @PHONE_NUM_DEVICES, align 4
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @PHONE_UNIT_ANY, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %14, %2
  %19 = call i32 @mutex_lock(i32* @phone_lock)
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %43, %18
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %21
  %26 = load %struct.phone_device**, %struct.phone_device*** @phone_device, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.phone_device*, %struct.phone_device** %26, i64 %28
  %30 = load %struct.phone_device*, %struct.phone_device** %29, align 8
  %31 = icmp eq %struct.phone_device* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %25
  %33 = load %struct.phone_device*, %struct.phone_device** %4, align 8
  %34 = load %struct.phone_device**, %struct.phone_device*** @phone_device, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.phone_device*, %struct.phone_device** %34, i64 %36
  store %struct.phone_device* %33, %struct.phone_device** %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.phone_device*, %struct.phone_device** %4, align 8
  %40 = getelementptr inbounds %struct.phone_device, %struct.phone_device* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = call i32 @mutex_unlock(i32* @phone_lock)
  store i32 0, i32* %3, align 4
  br label %50

42:                                               ; preds = %25
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %21

46:                                               ; preds = %21
  %47 = call i32 @mutex_unlock(i32* @phone_lock)
  %48 = load i32, i32* @ENFILE, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %32
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

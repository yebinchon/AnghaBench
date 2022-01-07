; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_probe_mpu401.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_probe_mpu401.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_info = type { i64, i64, i32, i32 }
%struct.resource = type { i32 }
%struct.mpu_config = type { i32, i64, i64, i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"MPU401: Port %x looks dead.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"MPU401: Reset failed on port %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @probe_mpu401(%struct.address_info* %0, %struct.resource* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_info*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mpu_config, align 8
  store %struct.address_info* %0, %struct.address_info** %4, align 8
  store %struct.resource* %1, %struct.resource** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.address_info*, %struct.address_info** %4, align 8
  %9 = getelementptr inbounds %struct.address_info, %struct.address_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %7, i32 0, i32 4
  store i64 %10, i64* %11, align 8
  %12 = load %struct.address_info*, %struct.address_info** %4, align 8
  %13 = getelementptr inbounds %struct.address_info, %struct.address_info* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %7, i32 0, i32 3
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %7, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %7, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.address_info*, %struct.address_info** %4, align 8
  %19 = getelementptr inbounds %struct.address_info, %struct.address_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %7, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load %struct.address_info*, %struct.address_info** %4, align 8
  %23 = getelementptr inbounds %struct.address_info, %struct.address_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %52

27:                                               ; preds = %2
  %28 = load %struct.address_info*, %struct.address_info** %4, align 8
  %29 = getelementptr inbounds %struct.address_info, %struct.address_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  %32 = call i32 @inb(i64 %31)
  %33 = icmp eq i32 %32, 255
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.address_info*, %struct.address_info** %4, align 8
  %36 = getelementptr inbounds %struct.address_info, %struct.address_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = call i32 @DDB(i32 %38)
  store i32 0, i32* %3, align 4
  br label %52

40:                                               ; preds = %27
  %41 = call i32 @reset_mpu401(%struct.mpu_config* %7)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = load %struct.address_info*, %struct.address_info** %4, align 8
  %46 = getelementptr inbounds %struct.address_info, %struct.address_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  %49 = call i32 @DDB(i32 %48)
  br label %50

50:                                               ; preds = %44, %40
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %34, %26
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @DDB(i32) #1

declare dso_local i32 @printk(i8*, i64) #1

declare dso_local i32 @reset_mpu401(%struct.mpu_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

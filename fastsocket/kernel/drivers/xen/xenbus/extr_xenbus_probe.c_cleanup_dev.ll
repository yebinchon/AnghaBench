; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_probe.c_cleanup_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_probe.c_cleanup_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.xenbus_device = type { i8* }
%struct.xb_find_info = type { i8*, %struct.xenbus_device* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @cleanup_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cleanup_dev(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xenbus_device*, align 8
  %7 = alloca %struct.xb_find_info*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.xenbus_device* @to_xenbus_device(%struct.device* %9)
  store %struct.xenbus_device* %10, %struct.xenbus_device** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.xb_find_info*
  store %struct.xb_find_info* %12, %struct.xb_find_info** %7, align 8
  %13 = load %struct.xb_find_info*, %struct.xb_find_info** %7, align 8
  %14 = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @strlen(i8* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.xb_find_info*, %struct.xb_find_info** %7, align 8
  %18 = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @DPRINTK(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %22 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.xb_find_info*, %struct.xb_find_info** %7, align 8
  %25 = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @strncmp(i8* %23, i8* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

31:                                               ; preds = %2
  %32 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %33 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = load i32, i32* %8, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %31
  %39 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %40 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 47
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %55

49:                                               ; preds = %38, %31
  %50 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %51 = load %struct.xb_find_info*, %struct.xb_find_info** %7, align 8
  %52 = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %51, i32 0, i32 1
  store %struct.xenbus_device* %50, %struct.xenbus_device** %52, align 8
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call i32 @get_device(%struct.device* %53)
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %49, %48, %30
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.xenbus_device* @to_xenbus_device(%struct.device*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @DPRINTK(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @get_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

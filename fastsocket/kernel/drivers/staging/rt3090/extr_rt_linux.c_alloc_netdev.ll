; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/extr_rt_linux.c_alloc_netdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/extr_rt_linux.c_alloc_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RT_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"alloc_netdev: Unable to allocate device memory.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @alloc_netdev(i32 %0, i8* %1, void (%struct.net_device*)* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca void (%struct.net_device*)*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store void (%struct.net_device*)* %2, void (%struct.net_device*)** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 16, %11
  %13 = add i64 %12, 31
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i64 @kmalloc(i32 %15, i32 %16)
  %18 = inttoptr i64 %17 to %struct.net_device*
  store %struct.net_device* %18, %struct.net_device** %8, align 8
  %19 = load %struct.net_device*, %struct.net_device** %8, align 8
  %20 = icmp eq %struct.net_device* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @RT_DEBUG_ERROR, align 4
  %23 = call i32 @DBGPRINT(i32 %22, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store %struct.net_device* null, %struct.net_device** %4, align 8
  br label %48

24:                                               ; preds = %3
  %25 = load %struct.net_device*, %struct.net_device** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @memset(%struct.net_device* %25, i32 0, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.net_device*, %struct.net_device** %8, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i64 1
  %33 = ptrtoint %struct.net_device* %32 to i64
  %34 = add nsw i64 %33, 31
  %35 = and i64 %34, -32
  %36 = inttoptr i64 %35 to i8*
  %37 = load %struct.net_device*, %struct.net_device** %8, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  br label %39

39:                                               ; preds = %30, %24
  %40 = load void (%struct.net_device*)*, void (%struct.net_device*)** %7, align 8
  %41 = load %struct.net_device*, %struct.net_device** %8, align 8
  call void %40(%struct.net_device* %41)
  %42 = load %struct.net_device*, %struct.net_device** %8, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @strcpy(i32 %44, i8* %45)
  %47 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %47, %struct.net_device** %4, align 8
  br label %48

48:                                               ; preds = %39, %21
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  ret %struct.net_device* %49
}

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @DBGPRINT(i32, i8*) #1

declare dso_local i32 @memset(%struct.net_device*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

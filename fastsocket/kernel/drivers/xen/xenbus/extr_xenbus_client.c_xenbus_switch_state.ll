; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_client.c_xenbus_switch_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_client.c_xenbus_switch_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32, i32 }

@XBT_NIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@XenbusStateClosing = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"writing new state\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenbus_switch_state(%struct.xenbus_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %10 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

14:                                               ; preds = %2
  %15 = load i32, i32* @XBT_NIL, align 4
  %16 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %17 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @xenbus_scanf(i32 %15, i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %46

23:                                               ; preds = %14
  %24 = load i32, i32* @XBT_NIL, align 4
  %25 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %26 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @xenbus_printf(i32 %24, i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %23
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @XenbusStateClosing, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %37, i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %46

42:                                               ; preds = %23
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %45 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %40, %22, %13
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @xenbus_scanf(i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @xenbus_printf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_dev_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_dev_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32 }

@dev_base_lock = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"netdev-%s\00", align 1
@CAP_SYS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [125 x i8] c"Loading kernel module for a network device with CAP_SYS_MODULE (deprecated).  Use CAP_NET_ADMIN and alias netdev-%s instead\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dev_load(%struct.net* %0, i8* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call i32 @read_lock(i32* @dev_base_lock)
  %8 = load %struct.net*, %struct.net** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call %struct.net_device* @__dev_get_by_name(%struct.net* %8, i8* %9)
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = call i32 @read_unlock(i32* @dev_base_lock)
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = icmp ne %struct.net_device* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i32, i32* @CAP_NET_ADMIN, align 4
  %20 = call i64 @capable(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @request_module(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %22, %18, %2
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load i32, i32* @CAP_SYS_MODULE, align 4
  %30 = call i64 @capable(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @request_module(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %36, %32
  br label %40

40:                                               ; preds = %39, %28, %25
  ret void
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.net_device* @__dev_get_by_name(%struct.net*, i8*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i64 @capable(i32) #1

declare dso_local i32 @request_module(i8*, i8*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

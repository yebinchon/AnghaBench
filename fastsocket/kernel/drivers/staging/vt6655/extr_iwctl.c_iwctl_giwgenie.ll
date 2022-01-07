; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_iwctl.c_iwctl_giwgenie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_iwctl.c_iwctl_giwgenie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwctl_giwgenie(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_point*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_point* %2, %struct.iw_point** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call i32 @netdev_priv(%struct.net_device* %13)
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %9, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %10, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %20 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %23 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %33 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %28
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @copy_to_user(i8* %40, i32 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load i32, i32* @EFAULT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %49, %39
  br label %56

53:                                               ; preds = %28
  %54 = load i32, i32* @E2BIG, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %53, %52
  br label %57

57:                                               ; preds = %56, %4
  %58 = load i32, i32* %11, align 4
  ret i32 %58
}

declare dso_local i32 @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @copy_to_user(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

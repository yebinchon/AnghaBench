; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_iwctl.c_iwctl_siwgenie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_iwctl.c_iwctl_siwgenie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAX_WPA_IE_LEN = common dso_local global i8 0, align 1
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwctl_siwgenie(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_point*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_point* %2, %struct.iw_point** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call i32 @netdev_priv(%struct.net_device* %12)
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %9, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %19 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %76

22:                                               ; preds = %4
  %23 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %24 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = add nsw i32 %31, 2
  %33 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %34 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %27, %22
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %11, align 4
  br label %85

40:                                               ; preds = %27
  %41 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %42 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8, i8* @MAX_WPA_IE_LEN, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp sgt i32 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  br label %85

50:                                               ; preds = %40
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i8, i8* @MAX_WPA_IE_LEN, align 1
  %55 = call i32 @memset(i32 %53, i32 0, i8 signext %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %61 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = trunc i32 %62 to i8
  %64 = call i64 @copy_from_user(i32 %58, i8* %59, i8 signext %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %50
  %67 = load i32, i32* @EFAULT, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %11, align 4
  br label %85

69:                                               ; preds = %50
  %70 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %71 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = trunc i32 %72 to i8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i8 %73, i8* %75, align 4
  br label %84

76:                                               ; preds = %4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i8, i8* @MAX_WPA_IE_LEN, align 1
  %81 = call i32 @memset(i32 %79, i32 0, i8 signext %80)
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i8 0, i8* %83, align 4
  br label %84

84:                                               ; preds = %76, %69
  br label %85

85:                                               ; preds = %84, %66, %47, %37
  ret i32 0
}

declare dso_local i32 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32, i32, i8 signext) #1

declare dso_local i64 @copy_from_user(i32, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

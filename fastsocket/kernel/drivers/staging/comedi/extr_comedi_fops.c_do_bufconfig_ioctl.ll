; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_do_bufconfig_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_do_bufconfig_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i64, i64 }
%struct.comedi_bufconfig = type { i64, i64, i64 }

@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"subdevice does not have async capability\0A\00", align 1
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i8*)* @do_bufconfig_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_bufconfig_ioctl(%struct.comedi_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_bufconfig, align 8
  %7 = alloca %struct.comedi_async*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @copy_from_user(%struct.comedi_bufconfig* %6, i8* %10, i32 24)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EFAULT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %95

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.comedi_bufconfig, %struct.comedi_bufconfig* %6, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.comedi_bufconfig, %struct.comedi_bufconfig* %6, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %16
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %95

30:                                               ; preds = %23
  %31 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 1
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %32, align 8
  %34 = getelementptr inbounds %struct.comedi_bufconfig, %struct.comedi_bufconfig* %6, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %33, i64 %35
  store %struct.comedi_subdevice* %36, %struct.comedi_subdevice** %8, align 8
  %37 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %38 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %37, i32 0, i32 0
  %39 = load %struct.comedi_async*, %struct.comedi_async** %38, align 8
  store %struct.comedi_async* %39, %struct.comedi_async** %7, align 8
  %40 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %41 = icmp ne %struct.comedi_async* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %30
  %43 = call i32 @DPRINTK(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %44 = getelementptr inbounds %struct.comedi_bufconfig, %struct.comedi_bufconfig* %6, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = getelementptr inbounds %struct.comedi_bufconfig, %struct.comedi_bufconfig* %6, i32 0, i32 1
  store i64 0, i64* %45, align 8
  br label %87

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.comedi_bufconfig, %struct.comedi_bufconfig* %6, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %52 = call i32 @capable(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @EPERM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %95

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.comedi_bufconfig, %struct.comedi_bufconfig* %6, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %61 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %57, %46
  %63 = getelementptr inbounds %struct.comedi_bufconfig, %struct.comedi_bufconfig* %6, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %69 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %70 = getelementptr inbounds %struct.comedi_bufconfig, %struct.comedi_bufconfig* %6, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @resize_async_buffer(%struct.comedi_device* %67, %struct.comedi_subdevice* %68, %struct.comedi_async* %69, i64 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %95

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77, %62
  %79 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %80 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.comedi_bufconfig, %struct.comedi_bufconfig* %6, i32 0, i32 2
  store i64 %81, i64* %82, align 8
  %83 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %84 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.comedi_bufconfig, %struct.comedi_bufconfig* %6, i32 0, i32 1
  store i64 %85, i64* %86, align 8
  br label %87

87:                                               ; preds = %78, %42
  %88 = load i8*, i8** %5, align 8
  %89 = call i64 @copy_to_user(i8* %88, %struct.comedi_bufconfig* %6, i32 24)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* @EFAULT, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %95

94:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %91, %75, %54, %27, %13
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i64 @copy_from_user(%struct.comedi_bufconfig*, i8*, i32) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @resize_async_buffer(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_async*, i64) #1

declare dso_local i64 @copy_to_user(i8*, %struct.comedi_bufconfig*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_range.c_do_rangeinfo_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_range.c_do_rangeinfo_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.comedi_subdevice*, i32 }
%struct.comedi_subdevice = type { i32, %struct.comedi_lrange**, %struct.comedi_lrange* }
%struct.comedi_lrange = type { i32, i32 }
%struct.comedi_rangeinfo = type { i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"wrong length %d should be %d (0x%08x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_rangeinfo_ioctl(%struct.comedi_device* %0, %struct.comedi_rangeinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_rangeinfo*, align 8
  %6 = alloca %struct.comedi_rangeinfo, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.comedi_lrange*, align 8
  %10 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_rangeinfo* %1, %struct.comedi_rangeinfo** %5, align 8
  %11 = load %struct.comedi_rangeinfo*, %struct.comedi_rangeinfo** %5, align 8
  %12 = call i64 @copy_from_user(%struct.comedi_rangeinfo* %6, %struct.comedi_rangeinfo* %11, i32 8)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EFAULT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %121

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.comedi_rangeinfo, %struct.comedi_rangeinfo* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 24
  %21 = and i32 %20, 15
  store i32 %21, i32* %7, align 4
  %22 = getelementptr inbounds %struct.comedi_rangeinfo, %struct.comedi_rangeinfo* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 16
  %25 = and i32 %24, 255
  store i32 %25, i32* %8, align 4
  %26 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %17
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %121

33:                                               ; preds = %17
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %121

42:                                               ; preds = %33
  %43 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 1
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %45, i64 %47
  store %struct.comedi_subdevice* %48, %struct.comedi_subdevice** %10, align 8
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %50 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %49, i32 0, i32 2
  %51 = load %struct.comedi_lrange*, %struct.comedi_lrange** %50, align 8
  %52 = icmp ne %struct.comedi_lrange* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %55 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %54, i32 0, i32 2
  %56 = load %struct.comedi_lrange*, %struct.comedi_lrange** %55, align 8
  store %struct.comedi_lrange* %56, %struct.comedi_lrange** %9, align 8
  br label %83

57:                                               ; preds = %42
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %59 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %58, i32 0, i32 1
  %60 = load %struct.comedi_lrange**, %struct.comedi_lrange*** %59, align 8
  %61 = icmp ne %struct.comedi_lrange** %60, null
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %65 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sge i32 %63, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %121

71:                                               ; preds = %62
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %73 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %72, i32 0, i32 1
  %74 = load %struct.comedi_lrange**, %struct.comedi_lrange*** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.comedi_lrange*, %struct.comedi_lrange** %74, i64 %76
  %78 = load %struct.comedi_lrange*, %struct.comedi_lrange** %77, align 8
  store %struct.comedi_lrange* %78, %struct.comedi_lrange** %9, align 8
  br label %82

79:                                               ; preds = %57
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %121

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82, %53
  %84 = getelementptr inbounds %struct.comedi_rangeinfo, %struct.comedi_rangeinfo* %6, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @RANGE_LENGTH(i32 %85)
  %87 = load %struct.comedi_lrange*, %struct.comedi_lrange** %9, align 8
  %88 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %86, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.comedi_rangeinfo, %struct.comedi_rangeinfo* %6, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @RANGE_LENGTH(i32 %93)
  %95 = load %struct.comedi_lrange*, %struct.comedi_lrange** %9, align 8
  %96 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.comedi_rangeinfo, %struct.comedi_rangeinfo* %6, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @DPRINTK(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %97, i32 %99)
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %121

103:                                              ; preds = %83
  %104 = getelementptr inbounds %struct.comedi_rangeinfo, %struct.comedi_rangeinfo* %6, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.comedi_lrange*, %struct.comedi_lrange** %9, align 8
  %107 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.comedi_lrange*, %struct.comedi_lrange** %9, align 8
  %110 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = mul i64 4, %112
  %114 = trunc i64 %113 to i32
  %115 = call i64 @copy_to_user(i32 %105, i32 %108, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %103
  %118 = load i32, i32* @EFAULT, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %121

120:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %117, %91, %79, %68, %39, %30, %14
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i64 @copy_from_user(%struct.comedi_rangeinfo*, %struct.comedi_rangeinfo*, i32) #1

declare dso_local i32 @RANGE_LENGTH(i32) #1

declare dso_local i32 @DPRINTK(i8*, i32, i32, i32) #1

declare dso_local i64 @copy_to_user(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

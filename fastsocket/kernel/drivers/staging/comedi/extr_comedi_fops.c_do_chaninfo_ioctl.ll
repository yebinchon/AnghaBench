; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_do_chaninfo_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_do_chaninfo_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i32, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i32, i32, %struct.TYPE_2__**, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.comedi_chaninfo = type { i32, i64, i64, i64 }

@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_chaninfo*)* @do_chaninfo_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_chaninfo_ioctl(%struct.comedi_device* %0, %struct.comedi_chaninfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_chaninfo*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_chaninfo, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_chaninfo* %1, %struct.comedi_chaninfo** %5, align 8
  %10 = load %struct.comedi_chaninfo*, %struct.comedi_chaninfo** %5, align 8
  %11 = call i64 @copy_from_user(%struct.comedi_chaninfo* %7, %struct.comedi_chaninfo* %10, i32 32)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EFAULT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %151

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.comedi_chaninfo, %struct.comedi_chaninfo* %7, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %151

26:                                               ; preds = %16
  %27 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 2
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %28, align 8
  %30 = getelementptr inbounds %struct.comedi_chaninfo, %struct.comedi_chaninfo* %7, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %29, i64 %32
  store %struct.comedi_subdevice* %33, %struct.comedi_subdevice** %6, align 8
  %34 = getelementptr inbounds %struct.comedi_chaninfo, %struct.comedi_chaninfo* %7, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %26
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %39 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %44 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42, %37
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %151

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.comedi_chaninfo, %struct.comedi_chaninfo* %7, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %54 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %57 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = call i64 @copy_to_user(i64 %52, i32 %55, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %50
  %65 = load i32, i32* @EFAULT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %151

67:                                               ; preds = %50
  br label %68

68:                                               ; preds = %67, %26
  %69 = getelementptr inbounds %struct.comedi_chaninfo, %struct.comedi_chaninfo* %7, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %98

72:                                               ; preds = %68
  %73 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %74 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %151

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.comedi_chaninfo, %struct.comedi_chaninfo* %7, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %84 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %87 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 4
  %91 = trunc i64 %90 to i32
  %92 = call i64 @copy_to_user(i64 %82, i32 %85, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %80
  %95 = load i32, i32* @EFAULT, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %151

97:                                               ; preds = %80
  br label %98

98:                                               ; preds = %97, %68
  %99 = getelementptr inbounds %struct.comedi_chaninfo, %struct.comedi_chaninfo* %7, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %150

102:                                              ; preds = %98
  %103 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %104 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %103, i32 0, i32 2
  %105 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %104, align 8
  %106 = icmp ne %struct.TYPE_2__** %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %151

110:                                              ; preds = %102
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %146, %110
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %114 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %149

117:                                              ; preds = %111
  %118 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %119 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 28
  %122 = getelementptr inbounds %struct.comedi_chaninfo, %struct.comedi_chaninfo* %7, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = shl i32 %123, 24
  %125 = or i32 %121, %124
  %126 = load i32, i32* %8, align 4
  %127 = shl i32 %126, 16
  %128 = or i32 %125, %127
  %129 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %130 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %129, i32 0, i32 2
  %131 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %131, i64 %133
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %128, %137
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = getelementptr inbounds %struct.comedi_chaninfo, %struct.comedi_chaninfo* %7, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %141, %143
  %145 = call i32 @put_user(i32 %139, i64 %144)
  br label %146

146:                                              ; preds = %117
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %111

149:                                              ; preds = %111
  br label %150

150:                                              ; preds = %149, %98
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %150, %107, %94, %77, %64, %47, %23, %13
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i64 @copy_from_user(%struct.comedi_chaninfo*, %struct.comedi_chaninfo*, i32) #1

declare dso_local i64 @copy_to_user(i64, i32, i32) #1

declare dso_local i32 @put_user(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

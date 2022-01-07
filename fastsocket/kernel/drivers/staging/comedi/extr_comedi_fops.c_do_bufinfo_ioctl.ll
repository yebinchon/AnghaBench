; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_do_bufinfo_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_do_bufinfo_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i32, %struct.comedi_async* }
%struct.comedi_async = type { i64, i64, i64, i64 }
%struct.comedi_bufinfo = type { i64, i64, i64, i64, i64, i64, i64 }

@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"subdevice does not have async capability\0A\00", align 1
@SDF_CMD_READ = common dso_local global i32 0, align 4
@SRF_ERROR = common dso_local global i32 0, align 4
@SRF_RUNNING = common dso_local global i32 0, align 4
@SDF_CMD_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i8*)* @do_bufinfo_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_bufinfo_ioctl(%struct.comedi_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_bufinfo, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_async*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @copy_from_user(%struct.comedi_bufinfo* %6, i8* %9, i32 56)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EFAULT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %134

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.comedi_bufinfo, %struct.comedi_bufinfo* %6, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %17, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.comedi_bufinfo, %struct.comedi_bufinfo* %6, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %15
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %134

29:                                               ; preds = %22
  %30 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 1
  %32 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %31, align 8
  %33 = getelementptr inbounds %struct.comedi_bufinfo, %struct.comedi_bufinfo* %6, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %32, i64 %34
  store %struct.comedi_subdevice* %35, %struct.comedi_subdevice** %7, align 8
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %37 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %36, i32 0, i32 1
  %38 = load %struct.comedi_async*, %struct.comedi_async** %37, align 8
  store %struct.comedi_async* %38, %struct.comedi_async** %8, align 8
  %39 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %40 = icmp ne %struct.comedi_async* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %29
  %42 = call i32 @DPRINTK(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %43 = getelementptr inbounds %struct.comedi_bufinfo, %struct.comedi_bufinfo* %6, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = getelementptr inbounds %struct.comedi_bufinfo, %struct.comedi_bufinfo* %6, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = getelementptr inbounds %struct.comedi_bufinfo, %struct.comedi_bufinfo* %6, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.comedi_bufinfo, %struct.comedi_bufinfo* %6, i32 0, i32 2
  store i64 0, i64* %46, align 8
  br label %126

47:                                               ; preds = %29
  %48 = getelementptr inbounds %struct.comedi_bufinfo, %struct.comedi_bufinfo* %6, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %88

51:                                               ; preds = %47
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %53 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SDF_CMD_READ, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %88

58:                                               ; preds = %51
  %59 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %60 = getelementptr inbounds %struct.comedi_bufinfo, %struct.comedi_bufinfo* %6, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @comedi_buf_read_alloc(%struct.comedi_async* %59, i64 %61)
  %63 = getelementptr inbounds %struct.comedi_bufinfo, %struct.comedi_bufinfo* %6, i32 0, i32 6
  store i64 %62, i64* %63, align 8
  %64 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %65 = getelementptr inbounds %struct.comedi_bufinfo, %struct.comedi_bufinfo* %6, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @comedi_buf_read_free(%struct.comedi_async* %64, i64 %66)
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %69 = call i32 @comedi_get_subdevice_runflags(%struct.comedi_subdevice* %68)
  %70 = load i32, i32* @SRF_ERROR, align 4
  %71 = load i32, i32* @SRF_RUNNING, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %58
  %76 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %77 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %80 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %78, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %75
  %84 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %85 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %86 = call i32 @do_become_nonbusy(%struct.comedi_device* %84, %struct.comedi_subdevice* %85)
  br label %87

87:                                               ; preds = %83, %75, %58
  br label %88

88:                                               ; preds = %87, %51, %47
  %89 = getelementptr inbounds %struct.comedi_bufinfo, %struct.comedi_bufinfo* %6, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %88
  %93 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %94 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @SDF_CMD_WRITE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %92
  %100 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %101 = getelementptr inbounds %struct.comedi_bufinfo, %struct.comedi_bufinfo* %6, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @comedi_buf_write_alloc(%struct.comedi_async* %100, i64 %102)
  %104 = getelementptr inbounds %struct.comedi_bufinfo, %struct.comedi_bufinfo* %6, i32 0, i32 5
  store i64 %103, i64* %104, align 8
  %105 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %106 = getelementptr inbounds %struct.comedi_bufinfo, %struct.comedi_bufinfo* %6, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @comedi_buf_write_free(%struct.comedi_async* %105, i64 %107)
  br label %109

109:                                              ; preds = %99, %92, %88
  %110 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %111 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.comedi_bufinfo, %struct.comedi_bufinfo* %6, i32 0, i32 1
  store i64 %112, i64* %113, align 8
  %114 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %115 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.comedi_bufinfo, %struct.comedi_bufinfo* %6, i32 0, i32 4
  store i64 %116, i64* %117, align 8
  %118 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %119 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.comedi_bufinfo, %struct.comedi_bufinfo* %6, i32 0, i32 2
  store i64 %120, i64* %121, align 8
  %122 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %123 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.comedi_bufinfo, %struct.comedi_bufinfo* %6, i32 0, i32 3
  store i64 %124, i64* %125, align 8
  br label %126

126:                                              ; preds = %109, %41
  %127 = load i8*, i8** %5, align 8
  %128 = call i64 @copy_to_user(i8* %127, %struct.comedi_bufinfo* %6, i32 56)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i32, i32* @EFAULT, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  br label %134

133:                                              ; preds = %126
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %130, %26, %12
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i64 @copy_from_user(%struct.comedi_bufinfo*, i8*, i32) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i64 @comedi_buf_read_alloc(%struct.comedi_async*, i64) #1

declare dso_local i32 @comedi_buf_read_free(%struct.comedi_async*, i64) #1

declare dso_local i32 @comedi_get_subdevice_runflags(%struct.comedi_subdevice*) #1

declare dso_local i32 @do_become_nonbusy(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i64 @comedi_buf_write_alloc(%struct.comedi_async*, i64) #1

declare dso_local i32 @comedi_buf_write_free(%struct.comedi_async*, i64) #1

declare dso_local i64 @copy_to_user(i8*, %struct.comedi_bufinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

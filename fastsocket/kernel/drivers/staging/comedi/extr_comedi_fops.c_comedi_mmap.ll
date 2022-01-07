; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_comedi_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_comedi_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.vm_area_struct = type { i64, i32, i64, i64, %struct.comedi_async*, i32* }
%struct.comedi_async = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.comedi_device_file_info = type { %struct.comedi_device* }
%struct.comedi_device = type { i32, i32, i32 }
%struct.comedi_subdevice = type { %struct.comedi_async* }

@.str = private unnamed_addr constant [34 x i8] c"no driver configured on comedi%i\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"comedi: mmap() offset must be 0.\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHARED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@comedi_vm_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @comedi_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comedi_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device_file_info*, align 8
  %7 = alloca %struct.comedi_device*, align 8
  %8 = alloca %struct.comedi_async*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.comedi_subdevice*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %15 = load %struct.file*, %struct.file** %3, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @iminor(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.comedi_device_file_info* @comedi_get_device_file_info(i32 %21)
  store %struct.comedi_device_file_info* %22, %struct.comedi_device_file_info** %6, align 8
  %23 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %6, align 8
  %24 = getelementptr inbounds %struct.comedi_device_file_info, %struct.comedi_device_file_info* %23, i32 0, i32 0
  %25 = load %struct.comedi_device*, %struct.comedi_device** %24, align 8
  store %struct.comedi_device* %25, %struct.comedi_device** %7, align 8
  store %struct.comedi_async* null, %struct.comedi_async** %8, align 8
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %9, align 8
  %29 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %2
  %37 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %38 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %13, align 4
  br label %151

43:                                               ; preds = %2
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @VM_WRITE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %6, align 8
  %52 = call %struct.comedi_subdevice* @comedi_get_write_subdevice(%struct.comedi_device_file_info* %51)
  store %struct.comedi_subdevice* %52, %struct.comedi_subdevice** %14, align 8
  br label %56

53:                                               ; preds = %43
  %54 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %6, align 8
  %55 = call %struct.comedi_subdevice* @comedi_get_read_subdevice(%struct.comedi_device_file_info* %54)
  store %struct.comedi_subdevice* %55, %struct.comedi_subdevice** %14, align 8
  br label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %14, align 8
  %58 = icmp eq %struct.comedi_subdevice* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %13, align 4
  br label %151

62:                                               ; preds = %56
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %14, align 8
  %64 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %63, i32 0, i32 0
  %65 = load %struct.comedi_async*, %struct.comedi_async** %64, align 8
  store %struct.comedi_async* %65, %struct.comedi_async** %8, align 8
  %66 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %67 = icmp eq %struct.comedi_async* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %13, align 4
  br label %151

71:                                               ; preds = %62
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %73 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %13, align 4
  br label %151

80:                                               ; preds = %71
  %81 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %82 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %85 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = sub i64 %83, %86
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %90 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ugt i64 %88, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %80
  %94 = load i32, i32* @EFAULT, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %13, align 4
  br label %151

96:                                               ; preds = %80
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* @PAGE_MASK, align 8
  %99 = xor i64 %98, -1
  %100 = and i64 %97, %99
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* @EFAULT, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %13, align 4
  br label %151

105:                                              ; preds = %96
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* @PAGE_SHIFT, align 8
  %108 = lshr i64 %106, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %110

110:                                              ; preds = %138, %105
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %141

114:                                              ; preds = %110
  %115 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %118 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %117, i32 0, i32 2
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @virt_to_page(i32 %124)
  %126 = call i32 @page_to_pfn(i32 %125)
  %127 = load i64, i64* @PAGE_SIZE, align 8
  %128 = load i32, i32* @PAGE_SHARED, align 4
  %129 = call i64 @remap_pfn_range(%struct.vm_area_struct* %115, i64 %116, i32 %126, i64 %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %114
  %132 = load i32, i32* @EAGAIN, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %13, align 4
  br label %151

134:                                              ; preds = %114
  %135 = load i64, i64* @PAGE_SIZE, align 8
  %136 = load i64, i64* %9, align 8
  %137 = add i64 %136, %135
  store i64 %137, i64* %9, align 8
  br label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %12, align 4
  br label %110

141:                                              ; preds = %110
  %142 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %143 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %142, i32 0, i32 5
  store i32* @comedi_vm_ops, i32** %143, align 8
  %144 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %145 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %146 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %145, i32 0, i32 4
  store %struct.comedi_async* %144, %struct.comedi_async** %146, align 8
  %147 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %148 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 8
  store i32 0, i32* %13, align 4
  br label %151

151:                                              ; preds = %141, %131, %102, %93, %76, %68, %59, %36
  %152 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %153 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %152, i32 0, i32 0
  %154 = call i32 @mutex_unlock(i32* %153)
  %155 = load i32, i32* %13, align 4
  ret i32 %155
}

declare dso_local i32 @iminor(i32) #1

declare dso_local %struct.comedi_device_file_info* @comedi_get_device_file_info(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local %struct.comedi_subdevice* @comedi_get_write_subdevice(%struct.comedi_device_file_info*) #1

declare dso_local %struct.comedi_subdevice* @comedi_get_read_subdevice(%struct.comedi_device_file_info*) #1

declare dso_local i64 @remap_pfn_range(%struct.vm_area_struct*, i64, i32, i64, i32) #1

declare dso_local i32 @page_to_pfn(i32) #1

declare dso_local i32 @virt_to_page(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

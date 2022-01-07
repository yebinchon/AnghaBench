; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uio/extr_uio.c_uio_dev_del_attributes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uio/extr_uio.c_uio_dev_del_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio_device = type { %struct.TYPE_8__*, i32*, %struct.TYPE_6__*, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.uio_port*, %struct.uio_mem* }
%struct.uio_port = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.uio_mem = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@MAX_UIO_MAPS = common dso_local global i32 0, align 4
@MAX_UIO_PORT_REGIONS = common dso_local global i32 0, align 4
@uio_attr_grp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uio_device*)* @uio_dev_del_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uio_dev_del_attributes(%struct.uio_device* %0) #0 {
  %2 = alloca %struct.uio_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.uio_mem*, align 8
  %5 = alloca %struct.uio_port*, align 8
  store %struct.uio_device* %0, %struct.uio_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %30, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @MAX_UIO_MAPS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = load %struct.uio_device*, %struct.uio_device** %2, align 8
  %12 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load %struct.uio_mem*, %struct.uio_mem** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %15, i64 %17
  store %struct.uio_mem* %18, %struct.uio_mem** %4, align 8
  %19 = load %struct.uio_mem*, %struct.uio_mem** %4, align 8
  %20 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %10
  br label %33

24:                                               ; preds = %10
  %25 = load %struct.uio_mem*, %struct.uio_mem** %4, align 8
  %26 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @kobject_put(i32* %28)
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %6

33:                                               ; preds = %23, %6
  %34 = load %struct.uio_device*, %struct.uio_device** %2, align 8
  %35 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @kobject_put(i32* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %62, %33
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @MAX_UIO_PORT_REGIONS, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %38
  %43 = load %struct.uio_device*, %struct.uio_device** %2, align 8
  %44 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %43, i32 0, i32 2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.uio_port*, %struct.uio_port** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.uio_port, %struct.uio_port* %47, i64 %49
  store %struct.uio_port* %50, %struct.uio_port** %5, align 8
  %51 = load %struct.uio_port*, %struct.uio_port** %5, align 8
  %52 = getelementptr inbounds %struct.uio_port, %struct.uio_port* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  br label %65

56:                                               ; preds = %42
  %57 = load %struct.uio_port*, %struct.uio_port** %5, align 8
  %58 = getelementptr inbounds %struct.uio_port, %struct.uio_port* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = call i32 @kobject_put(i32* %60)
  br label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %38

65:                                               ; preds = %55, %38
  %66 = load %struct.uio_device*, %struct.uio_device** %2, align 8
  %67 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @kobject_put(i32* %68)
  %70 = load %struct.uio_device*, %struct.uio_device** %2, align 8
  %71 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = call i32 @sysfs_remove_group(i32* %73, i32* @uio_attr_grp)
  ret void
}

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

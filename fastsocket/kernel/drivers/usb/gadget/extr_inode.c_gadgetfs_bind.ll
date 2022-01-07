; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_gadgetfs_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_gadgetfs_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_data = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.usb_gadget* }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.usb_gadget = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.dev_data* }

@the_device = common dso_local global %struct.dev_data* null, align 8
@ESRCH = common dso_local global i32 0, align 4
@CHIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s expected %s controller not %s\0A\00", align 1
@shortname = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@epio_complete = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"bound to %s driver\0A\00", align 1
@STATE_DEV_UNCONNECTED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*)* @gadgetfs_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gadgetfs_bind(%struct.usb_gadget* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca %struct.dev_data*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  %5 = load %struct.dev_data*, %struct.dev_data** @the_device, align 8
  store %struct.dev_data* %5, %struct.dev_data** %4, align 8
  %6 = load %struct.dev_data*, %struct.dev_data** %4, align 8
  %7 = icmp ne %struct.dev_data* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ESRCH, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %96

11:                                               ; preds = %1
  %12 = load i32, i32* @CHIP, align 4
  %13 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %14 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @strcmp(i32 %12, i32 %15)
  %17 = icmp ne i64 0, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %11
  %19 = load i32, i32* @shortname, align 4
  %20 = load i32, i32* @CHIP, align 4
  %21 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %22 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %23)
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %96

27:                                               ; preds = %11
  %28 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %29 = load %struct.dev_data*, %struct.dev_data** %4, align 8
  %30 = call i32 @set_gadget_data(%struct.usb_gadget* %28, %struct.dev_data* %29)
  %31 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %32 = load %struct.dev_data*, %struct.dev_data** %4, align 8
  %33 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %32, i32 0, i32 4
  store %struct.usb_gadget* %31, %struct.usb_gadget** %33, align 8
  %34 = load %struct.dev_data*, %struct.dev_data** %4, align 8
  %35 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %36 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store %struct.dev_data* %34, %struct.dev_data** %38, align 8
  %39 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %40 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.dev_data*, %struct.dev_data** %4, align 8
  %45 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %44, i32 0, i32 3
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 4
  %48 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %49 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.TYPE_5__* @usb_ep_alloc_request(%struct.TYPE_6__* %50, i32 %51)
  %53 = load %struct.dev_data*, %struct.dev_data** %4, align 8
  %54 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %53, i32 0, i32 2
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %54, align 8
  %55 = load %struct.dev_data*, %struct.dev_data** %4, align 8
  %56 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = icmp ne %struct.TYPE_5__* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %27
  br label %91

60:                                               ; preds = %27
  %61 = load %struct.dev_data*, %struct.dev_data** %4, align 8
  %62 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %61, i32 0, i32 2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store i32* null, i32** %64, align 8
  %65 = load i32, i32* @epio_complete, align 4
  %66 = load %struct.dev_data*, %struct.dev_data** %4, align 8
  %67 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %66, i32 0, i32 2
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 8
  %70 = load %struct.dev_data*, %struct.dev_data** %4, align 8
  %71 = call i64 @activate_ep_files(%struct.dev_data* %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  br label %91

74:                                               ; preds = %60
  %75 = load %struct.dev_data*, %struct.dev_data** %4, align 8
  %76 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %77 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @INFO(%struct.dev_data* %75, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load %struct.dev_data*, %struct.dev_data** %4, align 8
  %81 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %80, i32 0, i32 0
  %82 = call i32 @spin_lock_irq(i32* %81)
  %83 = load i32, i32* @STATE_DEV_UNCONNECTED, align 4
  %84 = load %struct.dev_data*, %struct.dev_data** %4, align 8
  %85 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.dev_data*, %struct.dev_data** %4, align 8
  %87 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %86, i32 0, i32 0
  %88 = call i32 @spin_unlock_irq(i32* %87)
  %89 = load %struct.dev_data*, %struct.dev_data** %4, align 8
  %90 = call i32 @get_dev(%struct.dev_data* %89)
  store i32 0, i32* %2, align 4
  br label %96

91:                                               ; preds = %73, %59
  %92 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %93 = call i32 @gadgetfs_unbind(%struct.usb_gadget* %92)
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %91, %74, %18, %8
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @set_gadget_data(%struct.usb_gadget*, %struct.dev_data*) #1

declare dso_local %struct.TYPE_5__* @usb_ep_alloc_request(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @activate_ep_files(%struct.dev_data*) #1

declare dso_local i32 @INFO(%struct.dev_data*, i8*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @get_dev(%struct.dev_data*) #1

declare dso_local i32 @gadgetfs_unbind(%struct.usb_gadget*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

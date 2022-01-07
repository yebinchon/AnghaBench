; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_do_prevent_allow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_do_prevent_allow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.fsg_dev = type { i32*, %struct.lun* }
%struct.lun = type { i32, i32 }

@mod_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SS_INVALID_COMMAND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SS_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_dev*)* @do_prevent_allow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_prevent_allow(%struct.fsg_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsg_dev*, align 8
  %4 = alloca %struct.lun*, align 8
  %5 = alloca i32, align 4
  store %struct.fsg_dev* %0, %struct.fsg_dev** %3, align 8
  %6 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %7 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %6, i32 0, i32 1
  %8 = load %struct.lun*, %struct.lun** %7, align 8
  store %struct.lun* %8, %struct.lun** %4, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mod_data, i32 0, i32 0), align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @SS_INVALID_COMMAND, align 4
  %13 = load %struct.lun*, %struct.lun** %4, align 8
  %14 = getelementptr inbounds %struct.lun, %struct.lun* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %52

17:                                               ; preds = %1
  %18 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %19 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 1
  store i32 %23, i32* %5, align 4
  %24 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %25 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, -2
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %17
  %32 = load i32, i32* @SS_INVALID_FIELD_IN_CDB, align 4
  %33 = load %struct.lun*, %struct.lun** %4, align 8
  %34 = getelementptr inbounds %struct.lun, %struct.lun* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %52

37:                                               ; preds = %17
  %38 = load %struct.lun*, %struct.lun** %4, align 8
  %39 = getelementptr inbounds %struct.lun, %struct.lun* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load %struct.lun*, %struct.lun** %4, align 8
  %47 = call i32 @fsync_sub(%struct.lun* %46)
  br label %48

48:                                               ; preds = %45, %42, %37
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.lun*, %struct.lun** %4, align 8
  %51 = getelementptr inbounds %struct.lun, %struct.lun* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %31, %11
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @fsync_sub(%struct.lun*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

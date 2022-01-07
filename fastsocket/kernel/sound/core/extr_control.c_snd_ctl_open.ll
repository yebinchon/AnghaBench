; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_control.c_snd_ctl_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_control.c_snd_ctl_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.snd_ctl_file* }
%struct.snd_ctl_file = type { i32, i32, i32, i32, %struct.snd_card*, i32, i32, i32 }
%struct.snd_card = type { i32, i32, i32 }

@SNDRV_DEVICE_TYPE_CONTROL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @snd_ctl_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ctl_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.snd_card*, align 8
  %8 = alloca %struct.snd_ctl_file*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call i32 @nonseekable_open(%struct.inode* %10, %struct.file* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %3, align 4
  br label %102

17:                                               ; preds = %2
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = call i32 @iminor(%struct.inode* %18)
  %20 = load i32, i32* @SNDRV_DEVICE_TYPE_CONTROL, align 4
  %21 = call %struct.snd_card* @snd_lookup_minor_data(i32 %19, i32 %20)
  store %struct.snd_card* %21, %struct.snd_card** %7, align 8
  %22 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %23 = icmp ne %struct.snd_card* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  br label %100

27:                                               ; preds = %17
  %28 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %29 = load %struct.file*, %struct.file** %5, align 8
  %30 = call i32 @snd_card_file_add(%struct.snd_card* %28, %struct.file* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %9, align 4
  br label %100

36:                                               ; preds = %27
  %37 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %38 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @try_module_get(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @EFAULT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  br label %96

45:                                               ; preds = %36
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.snd_ctl_file* @kzalloc(i32 40, i32 %46)
  store %struct.snd_ctl_file* %47, %struct.snd_ctl_file** %8, align 8
  %48 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %8, align 8
  %49 = icmp eq %struct.snd_ctl_file* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  br label %91

53:                                               ; preds = %45
  %54 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %8, align 8
  %55 = getelementptr inbounds %struct.snd_ctl_file, %struct.snd_ctl_file* %54, i32 0, i32 7
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %8, align 8
  %58 = getelementptr inbounds %struct.snd_ctl_file, %struct.snd_ctl_file* %57, i32 0, i32 6
  %59 = call i32 @init_waitqueue_head(i32* %58)
  %60 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %8, align 8
  %61 = getelementptr inbounds %struct.snd_ctl_file, %struct.snd_ctl_file* %60, i32 0, i32 5
  %62 = call i32 @spin_lock_init(i32* %61)
  %63 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %64 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %8, align 8
  %65 = getelementptr inbounds %struct.snd_ctl_file, %struct.snd_ctl_file* %64, i32 0, i32 4
  store %struct.snd_card* %63, %struct.snd_card** %65, align 8
  %66 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %8, align 8
  %67 = getelementptr inbounds %struct.snd_ctl_file, %struct.snd_ctl_file* %66, i32 0, i32 0
  store i32 -1, i32* %67, align 8
  %68 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %8, align 8
  %69 = getelementptr inbounds %struct.snd_ctl_file, %struct.snd_ctl_file* %68, i32 0, i32 1
  store i32 -1, i32* %69, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %8, align 8
  %74 = getelementptr inbounds %struct.snd_ctl_file, %struct.snd_ctl_file* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %8, align 8
  %76 = load %struct.file*, %struct.file** %5, align 8
  %77 = getelementptr inbounds %struct.file, %struct.file* %76, i32 0, i32 0
  store %struct.snd_ctl_file* %75, %struct.snd_ctl_file** %77, align 8
  %78 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %79 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %78, i32 0, i32 1
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @write_lock_irqsave(i32* %79, i64 %80)
  %82 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %8, align 8
  %83 = getelementptr inbounds %struct.snd_ctl_file, %struct.snd_ctl_file* %82, i32 0, i32 2
  %84 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %85 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %84, i32 0, i32 2
  %86 = call i32 @list_add_tail(i32* %83, i32* %85)
  %87 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %88 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %87, i32 0, i32 1
  %89 = load i64, i64* %6, align 8
  %90 = call i32 @write_unlock_irqrestore(i32* %88, i64 %89)
  store i32 0, i32* %3, align 4
  br label %102

91:                                               ; preds = %50
  %92 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %93 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @module_put(i32 %94)
  br label %96

96:                                               ; preds = %91, %42
  %97 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %98 = load %struct.file*, %struct.file** %5, align 8
  %99 = call i32 @snd_card_file_remove(%struct.snd_card* %97, %struct.file* %98)
  br label %100

100:                                              ; preds = %96, %33, %24
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %53, %15
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local %struct.snd_card* @snd_lookup_minor_data(i32, i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @snd_card_file_add(%struct.snd_card*, %struct.file*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local %struct.snd_ctl_file* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @snd_card_file_remove(%struct.snd_card*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

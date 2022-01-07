; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_sysfs.c_wlp_dev_prim_OUI_sub_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_sysfs.c_wlp_dev_prim_OUI_sub_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wlp_dev_prim_OUI_sub_show(%struct.wlp* %0, i8* %1) #0 {
  %3 = alloca %struct.wlp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.wlp* %0, %struct.wlp** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.wlp*, %struct.wlp** %3, align 8
  %7 = getelementptr inbounds %struct.wlp, %struct.wlp* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.wlp*, %struct.wlp** %3, align 8
  %10 = getelementptr inbounds %struct.wlp, %struct.wlp* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp eq %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.wlp*, %struct.wlp** %3, align 8
  %15 = call i64 @__wlp_setup_device_info(%struct.wlp* %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %30

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %2
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = load %struct.wlp*, %struct.wlp** %3, align 8
  %24 = getelementptr inbounds %struct.wlp, %struct.wlp* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @scnprintf(i8* %21, i32 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %20, %18
  %31 = load %struct.wlp*, %struct.wlp** %3, align 8
  %32 = getelementptr inbounds %struct.wlp, %struct.wlp* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i64, i64* %5, align 8
  ret i64 %34
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @__wlp_setup_device_info(%struct.wlp*) #1

declare dso_local i64 @scnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

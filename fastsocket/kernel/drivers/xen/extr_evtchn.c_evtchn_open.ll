; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_evtchn.c_evtchn_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_evtchn.c_evtchn_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.per_user_data* }
%struct.per_user_data = type { i32, i32, %struct.per_user_data*, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"evtchn:%s\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @evtchn_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evtchn_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.per_user_data*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.per_user_data* @kzalloc(i32 32, i32 %7)
  store %struct.per_user_data* %8, %struct.per_user_data** %6, align 8
  %9 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %10 = icmp eq %struct.per_user_data* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %63

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.per_user_data* @kasprintf(i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %21 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %20, i32 0, i32 2
  store %struct.per_user_data* %19, %struct.per_user_data** %21, align 8
  %22 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %23 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %22, i32 0, i32 2
  %24 = load %struct.per_user_data*, %struct.per_user_data** %23, align 8
  %25 = icmp eq %struct.per_user_data* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %14
  %27 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %28 = call i32 @kfree(%struct.per_user_data* %27)
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %63

31:                                               ; preds = %14
  %32 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %33 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %32, i32 0, i32 4
  %34 = call i32 @init_waitqueue_head(i32* %33)
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i64 @__get_free_page(i32 %35)
  %37 = inttoptr i64 %36 to i32*
  %38 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %39 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %38, i32 0, i32 3
  store i32* %37, i32** %39, align 8
  %40 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %41 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %31
  %45 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %46 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %45, i32 0, i32 2
  %47 = load %struct.per_user_data*, %struct.per_user_data** %46, align 8
  %48 = call i32 @kfree(%struct.per_user_data* %47)
  %49 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %50 = call i32 @kfree(%struct.per_user_data* %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %63

53:                                               ; preds = %31
  %54 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %55 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %54, i32 0, i32 1
  %56 = call i32 @mutex_init(i32* %55)
  %57 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %58 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %57, i32 0, i32 0
  %59 = call i32 @mutex_init(i32* %58)
  %60 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %61 = load %struct.file*, %struct.file** %5, align 8
  %62 = getelementptr inbounds %struct.file, %struct.file* %61, i32 0, i32 0
  store %struct.per_user_data* %60, %struct.per_user_data** %62, align 8
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %53, %44, %26, %11
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.per_user_data* @kzalloc(i32, i32) #1

declare dso_local %struct.per_user_data* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.per_user_data*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

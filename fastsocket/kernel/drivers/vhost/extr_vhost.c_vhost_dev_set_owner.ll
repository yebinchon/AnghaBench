; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_dev_set_owner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_dev_set_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.vhost_dev = type { i32*, %struct.task_struct* }
%struct.task_struct = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_3__* null, align 8
@vhost_worker = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"vhost-%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vhost_dev*)* @vhost_dev_set_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vhost_dev_set_owner(%struct.vhost_dev* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vhost_dev*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.vhost_dev* %0, %struct.vhost_dev** %3, align 8
  %6 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %7 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %5, align 4
  br label %66

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %15 = call i32* @get_task_mm(%struct.TYPE_3__* %14)
  %16 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %17 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %16, i32 0, i32 0
  store i32* %15, i32** %17, align 8
  %18 = load i32, i32* @vhost_worker, align 4
  %19 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.task_struct* @kthread_create(i32 %18, %struct.vhost_dev* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %22)
  store %struct.task_struct* %23, %struct.task_struct** %4, align 8
  %24 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %25 = call i64 @IS_ERR(%struct.task_struct* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %13
  %28 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %29 = call i32 @PTR_ERR(%struct.task_struct* %28)
  store i32 %29, i32* %5, align 4
  br label %53

30:                                               ; preds = %13
  %31 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %32 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %33 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %32, i32 0, i32 1
  store %struct.task_struct* %31, %struct.task_struct** %33, align 8
  %34 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %35 = call i32 @wake_up_process(%struct.task_struct* %34)
  %36 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %37 = call i32 @vhost_attach_cgroups(%struct.vhost_dev* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %48

41:                                               ; preds = %30
  %42 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %43 = call i32 @vhost_dev_alloc_iovecs(%struct.vhost_dev* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %48

47:                                               ; preds = %41
  store i64 0, i64* %2, align 8
  br label %69

48:                                               ; preds = %46, %40
  %49 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %50 = call i32 @kthread_stop(%struct.task_struct* %49)
  %51 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %52 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %51, i32 0, i32 1
  store %struct.task_struct* null, %struct.task_struct** %52, align 8
  br label %53

53:                                               ; preds = %48, %27
  %54 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %55 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %60 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @mmput(i32* %61)
  br label %63

63:                                               ; preds = %58, %53
  %64 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %65 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %63, %10
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %2, align 8
  br label %69

69:                                               ; preds = %66, %47
  %70 = load i64, i64* %2, align 8
  ret i64 %70
}

declare dso_local i32* @get_task_mm(%struct.TYPE_3__*) #1

declare dso_local %struct.task_struct* @kthread_create(i32, %struct.vhost_dev*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

declare dso_local i32 @vhost_attach_cgroups(%struct.vhost_dev*) #1

declare dso_local i32 @vhost_dev_alloc_iovecs(%struct.vhost_dev*) #1

declare dso_local i32 @kthread_stop(%struct.task_struct*) #1

declare dso_local i32 @mmput(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

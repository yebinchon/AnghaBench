; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pm_qos_params.c_pm_qos_add_requirement.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pm_qos_params.c_pm_qos_add_requirement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.requirement_list = type { i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PM_QOS_DEFAULT_VALUE = common dso_local global i64 0, align 8
@pm_qos_array = common dso_local global %struct.TYPE_4__** null, align 8
@pm_qos_lock = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm_qos_add_requirement(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.requirement_list*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.requirement_list* @kzalloc(i32 16, i32 %10)
  store %struct.requirement_list* %11, %struct.requirement_list** %8, align 8
  %12 = load %struct.requirement_list*, %struct.requirement_list** %8, align 8
  %13 = icmp ne %struct.requirement_list* %12, null
  br i1 %13, label %14, label %60

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @PM_QOS_DEFAULT_VALUE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @pm_qos_array, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %19, i64 %21
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.requirement_list*, %struct.requirement_list** %8, align 8
  %27 = getelementptr inbounds %struct.requirement_list, %struct.requirement_list* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  br label %32

28:                                               ; preds = %14
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.requirement_list*, %struct.requirement_list** %8, align 8
  %31 = getelementptr inbounds %struct.requirement_list, %struct.requirement_list* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %28, %18
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32 @kstrdup(i8* %33, i32 %34)
  %36 = load %struct.requirement_list*, %struct.requirement_list** %8, align 8
  %37 = getelementptr inbounds %struct.requirement_list, %struct.requirement_list* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.requirement_list*, %struct.requirement_list** %8, align 8
  %39 = getelementptr inbounds %struct.requirement_list, %struct.requirement_list* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %32
  br label %61

43:                                               ; preds = %32
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @spin_lock_irqsave(i32* @pm_qos_lock, i64 %44)
  %46 = load %struct.requirement_list*, %struct.requirement_list** %8, align 8
  %47 = getelementptr inbounds %struct.requirement_list, %struct.requirement_list* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @pm_qos_array, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %48, i64 %50
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = call i32 @list_add(i32* %47, i32* %54)
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* @pm_qos_lock, i64 %56)
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @update_target(i32 %58)
  store i32 0, i32* %4, align 4
  br label %66

60:                                               ; preds = %3
  br label %61

61:                                               ; preds = %60, %42
  %62 = load %struct.requirement_list*, %struct.requirement_list** %8, align 8
  %63 = call i32 @kfree(%struct.requirement_list* %62)
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %43
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.requirement_list* @kzalloc(i32, i32) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @update_target(i32) #1

declare dso_local i32 @kfree(%struct.requirement_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

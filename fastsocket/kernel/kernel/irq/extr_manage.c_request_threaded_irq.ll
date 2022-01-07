; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_manage.c_request_threaded_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_manage.c_request_threaded_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irqaction = type { i64, i8*, i8*, i32 (i32, i8*)*, i32 (i32, i8*)* }
%struct.irq_desc = type { i32 }

@IRQF_SHARED = common dso_local global i64 0, align 8
@IRQF_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"IRQ %d/%s: IRQF_DISABLED is not guaranteed on shared IRQs\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IRQ_NOREQUEST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @request_threaded_irq(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* %2, i64 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32 (i32, i8*)*, align 8
  %10 = alloca i32 (i32, i8*)*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.irqaction*, align 8
  %15 = alloca %struct.irq_desc*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 (i32, i8*)* %1, i32 (i32, i8*)** %9, align 8
  store i32 (i32, i8*)* %2, i32 (i32, i8*)** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* @IRQF_SHARED, align 8
  %19 = load i64, i64* @IRQF_DISABLED, align 8
  %20 = or i64 %18, %19
  %21 = and i64 %17, %20
  %22 = load i64, i64* @IRQF_SHARED, align 8
  %23 = load i64, i64* @IRQF_DISABLED, align 8
  %24 = or i64 %22, %23
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %6
  %27 = load i32, i32* %8, align 4
  %28 = load i8*, i8** %12, align 8
  %29 = call i32 @pr_warning(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %27, i8* %28)
  br label %30

30:                                               ; preds = %26, %6
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* @IRQF_SHARED, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i8*, i8** %13, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %110

41:                                               ; preds = %35, %30
  %42 = load i32, i32* %8, align 4
  %43 = call %struct.irq_desc* @irq_to_desc(i32 %42)
  store %struct.irq_desc* %43, %struct.irq_desc** %15, align 8
  %44 = load %struct.irq_desc*, %struct.irq_desc** %15, align 8
  %45 = icmp ne %struct.irq_desc* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %110

49:                                               ; preds = %41
  %50 = load %struct.irq_desc*, %struct.irq_desc** %15, align 8
  %51 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IRQ_NOREQUEST, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %110

59:                                               ; preds = %49
  %60 = load i32 (i32, i8*)*, i32 (i32, i8*)** %9, align 8
  %61 = icmp ne i32 (i32, i8*)* %60, null
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = load i32 (i32, i8*)*, i32 (i32, i8*)** %10, align 8
  %64 = icmp ne i32 (i32, i8*)* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %110

68:                                               ; preds = %62
  store i32 (i32, i8*)* @irq_default_primary_handler, i32 (i32, i8*)** %9, align 8
  br label %69

69:                                               ; preds = %68, %59
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call %struct.irqaction* @kzalloc(i32 40, i32 %70)
  store %struct.irqaction* %71, %struct.irqaction** %14, align 8
  %72 = load %struct.irqaction*, %struct.irqaction** %14, align 8
  %73 = icmp ne %struct.irqaction* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %7, align 4
  br label %110

77:                                               ; preds = %69
  %78 = load i32 (i32, i8*)*, i32 (i32, i8*)** %9, align 8
  %79 = load %struct.irqaction*, %struct.irqaction** %14, align 8
  %80 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %79, i32 0, i32 4
  store i32 (i32, i8*)* %78, i32 (i32, i8*)** %80, align 8
  %81 = load i32 (i32, i8*)*, i32 (i32, i8*)** %10, align 8
  %82 = load %struct.irqaction*, %struct.irqaction** %14, align 8
  %83 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %82, i32 0, i32 3
  store i32 (i32, i8*)* %81, i32 (i32, i8*)** %83, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load %struct.irqaction*, %struct.irqaction** %14, align 8
  %86 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = load %struct.irqaction*, %struct.irqaction** %14, align 8
  %89 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load i8*, i8** %13, align 8
  %91 = load %struct.irqaction*, %struct.irqaction** %14, align 8
  %92 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.irq_desc*, %struct.irq_desc** %15, align 8
  %95 = call i32 @chip_bus_lock(i32 %93, %struct.irq_desc* %94)
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.irq_desc*, %struct.irq_desc** %15, align 8
  %98 = load %struct.irqaction*, %struct.irqaction** %14, align 8
  %99 = call i32 @__setup_irq(i32 %96, %struct.irq_desc* %97, %struct.irqaction* %98)
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.irq_desc*, %struct.irq_desc** %15, align 8
  %102 = call i32 @chip_bus_sync_unlock(i32 %100, %struct.irq_desc* %101)
  %103 = load i32, i32* %16, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %77
  %106 = load %struct.irqaction*, %struct.irqaction** %14, align 8
  %107 = call i32 @kfree(%struct.irqaction* %106)
  br label %108

108:                                              ; preds = %105, %77
  %109 = load i32, i32* %16, align 4
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %108, %74, %65, %56, %46, %38
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local i32 @pr_warning(i8*, i32, i8*) #1

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i32 @irq_default_primary_handler(i32, i8*) #1

declare dso_local %struct.irqaction* @kzalloc(i32, i32) #1

declare dso_local i32 @chip_bus_lock(i32, %struct.irq_desc*) #1

declare dso_local i32 @__setup_irq(i32, %struct.irq_desc*, %struct.irqaction*) #1

declare dso_local i32 @chip_bus_sync_unlock(i32, %struct.irq_desc*) #1

declare dso_local i32 @kfree(%struct.irqaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

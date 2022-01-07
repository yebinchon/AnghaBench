; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_manage.c___free_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_manage.c___free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irqaction = type { i8*, i32, i64, i32, i32 (i32, i8*)*, %struct.irqaction* }
%struct.irq_desc = type { i32, i32*, %struct.TYPE_2__*, i32, %struct.irqaction* }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)*, i32 (i32, i8*)* }

@.str = private unnamed_addr constant [41 x i8] c"Trying to free IRQ %d from IRQ context!\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Trying to free already-free IRQ %d\0A\00", align 1
@IRQ_DISABLED = common dso_local global i32 0, align 4
@IRQTF_DIED = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.irqaction* (i32, i8*)* @__free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.irqaction* @__free_irq(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.irqaction*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.irq_desc*, align 8
  %7 = alloca %struct.irqaction*, align 8
  %8 = alloca %struct.irqaction**, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.irq_desc* @irq_to_desc(i32 %10)
  store %struct.irq_desc* %11, %struct.irq_desc** %6, align 8
  %12 = call i32 (...) @in_interrupt()
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @WARN(i32 %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %16 = icmp ne %struct.irq_desc* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store %struct.irqaction* null, %struct.irqaction** %3, align 8
  br label %117

18:                                               ; preds = %2
  %19 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %20 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %19, i32 0, i32 0
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %24 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %23, i32 0, i32 4
  store %struct.irqaction** %24, %struct.irqaction*** %8, align 8
  br label %25

25:                                               ; preds = %44, %18
  %26 = load %struct.irqaction**, %struct.irqaction*** %8, align 8
  %27 = load %struct.irqaction*, %struct.irqaction** %26, align 8
  store %struct.irqaction* %27, %struct.irqaction** %7, align 8
  %28 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %29 = icmp ne %struct.irqaction* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %34 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %33, i32 0, i32 0
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  store %struct.irqaction* null, %struct.irqaction** %3, align 8
  br label %117

37:                                               ; preds = %25
  %38 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %39 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = icmp eq i8* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %47

44:                                               ; preds = %37
  %45 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %46 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %45, i32 0, i32 5
  store %struct.irqaction** %46, %struct.irqaction*** %8, align 8
  br label %25

47:                                               ; preds = %43
  %48 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %49 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %48, i32 0, i32 5
  %50 = load %struct.irqaction*, %struct.irqaction** %49, align 8
  %51 = load %struct.irqaction**, %struct.irqaction*** %8, align 8
  store %struct.irqaction* %50, %struct.irqaction** %51, align 8
  %52 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %53 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %52, i32 0, i32 4
  %54 = load %struct.irqaction*, %struct.irqaction** %53, align 8
  %55 = icmp ne %struct.irqaction* %54, null
  br i1 %55, label %85, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* @IRQ_DISABLED, align 4
  %58 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %59 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %63 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32 (i32)*, i32 (i32)** %65, align 8
  %67 = icmp ne i32 (i32)* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %56
  %69 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %70 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32 (i32)*, i32 (i32)** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 %73(i32 %74)
  br label %84

76:                                               ; preds = %56
  %77 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %78 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32 (i32)*, i32 (i32)** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 %81(i32 %82)
  br label %84

84:                                               ; preds = %76, %68
  br label %85

85:                                               ; preds = %84, %47
  %86 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %87 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %86, i32 0, i32 0
  %88 = load i64, i64* %9, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %92 = call i32 @unregister_handler_proc(i32 %90, %struct.irqaction* %91)
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @synchronize_irq(i32 %93)
  %95 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %96 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %85
  %100 = load i32, i32* @IRQTF_DIED, align 4
  %101 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %102 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %101, i32 0, i32 3
  %103 = call i32 @test_bit(i32 %100, i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %99
  %106 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %107 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @kthread_stop(i64 %108)
  br label %110

110:                                              ; preds = %105, %99
  %111 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %112 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @put_task_struct(i64 %113)
  br label %115

115:                                              ; preds = %110, %85
  %116 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  store %struct.irqaction* %116, %struct.irqaction** %3, align 8
  br label %117

117:                                              ; preds = %115, %30, %17
  %118 = load %struct.irqaction*, %struct.irqaction** %3, align 8
  ret %struct.irqaction* %118
}

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @unregister_handler_proc(i32, %struct.irqaction*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @kthread_stop(i64) #1

declare dso_local i32 @put_task_struct(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

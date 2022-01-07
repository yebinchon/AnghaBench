; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_target_handle_task_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_target_handle_task_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32, i32*, i32, %struct.se_device* }
%struct.se_device = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TRANSPORT_PLUGIN_PHBA_PDEV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"Added HEAD_OF_QUEUE for CDB: 0x%02x, se_ordered_id: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"Added ORDERED for CDB: 0x%02x to ordered list,  se_ordered_id: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"Added CDB: 0x%02x Task Attr: 0x%02x to delayed CMD list, se_ordered_id: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @target_handle_task_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_handle_task_attr(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.se_device*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %5 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %6 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %5, i32 0, i32 4
  %7 = load %struct.se_device*, %struct.se_device** %6, align 8
  store %struct.se_device* %7, %struct.se_device** %4, align 8
  %8 = load %struct.se_device*, %struct.se_device** %4, align 8
  %9 = getelementptr inbounds %struct.se_device, %struct.se_device* %8, i32 0, i32 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TRANSPORT_PLUGIN_PHBA_PDEV, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

16:                                               ; preds = %1
  %17 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %18 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %50 [
    i32 129, label %20
    i32 128, label %30
  ]

20:                                               ; preds = %16
  %21 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %22 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %27 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  store i32 0, i32* %2, align 4
  br label %85

30:                                               ; preds = %16
  %31 = load %struct.se_device*, %struct.se_device** %4, align 8
  %32 = getelementptr inbounds %struct.se_device, %struct.se_device* %31, i32 0, i32 2
  %33 = call i32 @atomic_inc(i32* %32)
  %34 = call i32 (...) @smp_mb__after_atomic_inc()
  %35 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %36 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %41 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %42)
  %44 = load %struct.se_device*, %struct.se_device** %4, align 8
  %45 = getelementptr inbounds %struct.se_device, %struct.se_device* %44, i32 0, i32 3
  %46 = call i64 @atomic_read(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %85

49:                                               ; preds = %30
  br label %55

50:                                               ; preds = %16
  %51 = load %struct.se_device*, %struct.se_device** %4, align 8
  %52 = getelementptr inbounds %struct.se_device, %struct.se_device* %51, i32 0, i32 3
  %53 = call i32 @atomic_inc(i32* %52)
  %54 = call i32 (...) @smp_mb__after_atomic_inc()
  br label %55

55:                                               ; preds = %50, %49
  %56 = load %struct.se_device*, %struct.se_device** %4, align 8
  %57 = getelementptr inbounds %struct.se_device, %struct.se_device* %56, i32 0, i32 2
  %58 = call i64 @atomic_read(i32* %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %85

61:                                               ; preds = %55
  %62 = load %struct.se_device*, %struct.se_device** %4, align 8
  %63 = getelementptr inbounds %struct.se_device, %struct.se_device* %62, i32 0, i32 0
  %64 = call i32 @spin_lock(i32* %63)
  %65 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %66 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %65, i32 0, i32 3
  %67 = load %struct.se_device*, %struct.se_device** %4, align 8
  %68 = getelementptr inbounds %struct.se_device, %struct.se_device* %67, i32 0, i32 1
  %69 = call i32 @list_add_tail(i32* %66, i32* %68)
  %70 = load %struct.se_device*, %struct.se_device** %4, align 8
  %71 = getelementptr inbounds %struct.se_device, %struct.se_device* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %74 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %79 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %82 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %80, i32 %83)
  store i32 1, i32* %2, align 4
  br label %85

85:                                               ; preds = %61, %60, %48, %20, %15
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @smp_mb__after_atomic_inc(...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

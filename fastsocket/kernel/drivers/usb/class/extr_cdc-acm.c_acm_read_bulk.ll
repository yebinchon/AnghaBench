; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_read_bulk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_read_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, %struct.acm_ru* }
%struct.acm_ru = type { i32, %struct.acm_rb*, %struct.acm* }
%struct.acm_rb = type { i32, i32 }
%struct.acm = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Entering acm_read_bulk with status %d\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Aborting, acm not ready\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"bulk rx status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @acm_read_bulk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acm_read_bulk(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.acm_rb*, align 8
  %4 = alloca %struct.acm_ru*, align 8
  %5 = alloca %struct.acm*, align 8
  %6 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 2
  %9 = load %struct.acm_ru*, %struct.acm_ru** %8, align 8
  store %struct.acm_ru* %9, %struct.acm_ru** %4, align 8
  %10 = load %struct.acm_ru*, %struct.acm_ru** %4, align 8
  %11 = getelementptr inbounds %struct.acm_ru, %struct.acm_ru* %10, i32 0, i32 2
  %12 = load %struct.acm*, %struct.acm** %11, align 8
  store %struct.acm* %12, %struct.acm** %5, align 8
  %13 = load %struct.urb*, %struct.urb** %2, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.acm*, %struct.acm** %5, align 8
  %19 = call i32 @ACM_READY(%struct.acm* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load %struct.acm*, %struct.acm** %5, align 8
  %23 = getelementptr inbounds %struct.acm, %struct.acm* %22, i32 0, i32 7
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %106

27:                                               ; preds = %1
  %28 = load %struct.acm*, %struct.acm** %5, align 8
  %29 = getelementptr inbounds %struct.acm, %struct.acm* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @usb_mark_last_busy(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.acm*, %struct.acm** %5, align 8
  %36 = getelementptr inbounds %struct.acm, %struct.acm* %35, i32 0, i32 7
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %34, %27
  %42 = load %struct.acm_ru*, %struct.acm_ru** %4, align 8
  %43 = getelementptr inbounds %struct.acm_ru, %struct.acm_ru* %42, i32 0, i32 1
  %44 = load %struct.acm_rb*, %struct.acm_rb** %43, align 8
  store %struct.acm_rb* %44, %struct.acm_rb** %3, align 8
  %45 = load %struct.urb*, %struct.urb** %2, align 8
  %46 = getelementptr inbounds %struct.urb, %struct.urb* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.acm_rb*, %struct.acm_rb** %3, align 8
  %49 = getelementptr inbounds %struct.acm_rb, %struct.acm_rb* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i64 @likely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %41
  %56 = load %struct.acm*, %struct.acm** %5, align 8
  %57 = getelementptr inbounds %struct.acm, %struct.acm* %56, i32 0, i32 2
  %58 = call i32 @spin_lock(i32* %57)
  %59 = load %struct.acm*, %struct.acm** %5, align 8
  %60 = getelementptr inbounds %struct.acm, %struct.acm* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = load %struct.acm_ru*, %struct.acm_ru** %4, align 8
  %64 = getelementptr inbounds %struct.acm_ru, %struct.acm_ru* %63, i32 0, i32 0
  %65 = load %struct.acm*, %struct.acm** %5, align 8
  %66 = getelementptr inbounds %struct.acm, %struct.acm* %65, i32 0, i32 4
  %67 = call i32 @list_add_tail(i32* %64, i32* %66)
  %68 = load %struct.acm_rb*, %struct.acm_rb** %3, align 8
  %69 = getelementptr inbounds %struct.acm_rb, %struct.acm_rb* %68, i32 0, i32 0
  %70 = load %struct.acm*, %struct.acm** %5, align 8
  %71 = getelementptr inbounds %struct.acm, %struct.acm* %70, i32 0, i32 5
  %72 = call i32 @list_add_tail(i32* %69, i32* %71)
  %73 = load %struct.acm*, %struct.acm** %5, align 8
  %74 = getelementptr inbounds %struct.acm, %struct.acm* %73, i32 0, i32 2
  %75 = call i32 @spin_unlock(i32* %74)
  br label %93

76:                                               ; preds = %41
  %77 = load %struct.acm*, %struct.acm** %5, align 8
  %78 = getelementptr inbounds %struct.acm, %struct.acm* %77, i32 0, i32 2
  %79 = call i32 @spin_lock(i32* %78)
  %80 = load %struct.acm_ru*, %struct.acm_ru** %4, align 8
  %81 = getelementptr inbounds %struct.acm_ru, %struct.acm_ru* %80, i32 0, i32 0
  %82 = load %struct.acm*, %struct.acm** %5, align 8
  %83 = getelementptr inbounds %struct.acm, %struct.acm* %82, i32 0, i32 4
  %84 = call i32 @list_add_tail(i32* %81, i32* %83)
  %85 = load %struct.acm_rb*, %struct.acm_rb** %3, align 8
  %86 = getelementptr inbounds %struct.acm_rb, %struct.acm_rb* %85, i32 0, i32 0
  %87 = load %struct.acm*, %struct.acm** %5, align 8
  %88 = getelementptr inbounds %struct.acm, %struct.acm* %87, i32 0, i32 3
  %89 = call i32 @list_add(i32* %86, i32* %88)
  %90 = load %struct.acm*, %struct.acm** %5, align 8
  %91 = getelementptr inbounds %struct.acm, %struct.acm* %90, i32 0, i32 2
  %92 = call i32 @spin_unlock(i32* %91)
  br label %93

93:                                               ; preds = %76, %55
  %94 = load %struct.acm*, %struct.acm** %5, align 8
  %95 = getelementptr inbounds %struct.acm, %struct.acm* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = call i64 @likely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %93
  %103 = load %struct.acm*, %struct.acm** %5, align 8
  %104 = getelementptr inbounds %struct.acm, %struct.acm* %103, i32 0, i32 0
  %105 = call i32 @tasklet_schedule(i32* %104)
  br label %106

106:                                              ; preds = %21, %102, %93
  ret void
}

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @ACM_READY(%struct.acm*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @usb_mark_last_busy(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

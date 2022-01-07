; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_timer.c_snd_timer_user_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_timer.c_snd_timer_user_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer_instance = type { %struct.snd_timer_user* }
%struct.snd_timer_user = type { i32, i32, i32, i32, i32, i32, %struct.snd_timer_read*, i32 }
%struct.snd_timer_read = type { i64, i64 }

@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_timer_instance*, i64, i64)* @snd_timer_user_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_timer_user_interrupt(%struct.snd_timer_instance* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.snd_timer_instance*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.snd_timer_user*, align 8
  %8 = alloca %struct.snd_timer_read*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_timer_instance* %0, %struct.snd_timer_instance** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %11 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %10, i32 0, i32 0
  %12 = load %struct.snd_timer_user*, %struct.snd_timer_user** %11, align 8
  store %struct.snd_timer_user* %12, %struct.snd_timer_user** %7, align 8
  %13 = load %struct.snd_timer_user*, %struct.snd_timer_user** %7, align 8
  %14 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %13, i32 0, i32 5
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.snd_timer_user*, %struct.snd_timer_user** %7, align 8
  %17 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %3
  %21 = load %struct.snd_timer_user*, %struct.snd_timer_user** %7, align 8
  %22 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.snd_timer_user*, %struct.snd_timer_user** %7, align 8
  %27 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  br label %35

30:                                               ; preds = %20
  %31 = load %struct.snd_timer_user*, %struct.snd_timer_user** %7, align 8
  %32 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 1
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i32 [ %29, %25 ], [ %34, %30 ]
  store i32 %36, i32* %9, align 4
  %37 = load %struct.snd_timer_user*, %struct.snd_timer_user** %7, align 8
  %38 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %37, i32 0, i32 6
  %39 = load %struct.snd_timer_read*, %struct.snd_timer_read** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.snd_timer_read, %struct.snd_timer_read* %39, i64 %41
  store %struct.snd_timer_read* %42, %struct.snd_timer_read** %8, align 8
  %43 = load %struct.snd_timer_read*, %struct.snd_timer_read** %8, align 8
  %44 = getelementptr inbounds %struct.snd_timer_read, %struct.snd_timer_read* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %35
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.snd_timer_read*, %struct.snd_timer_read** %8, align 8
  %51 = getelementptr inbounds %struct.snd_timer_read, %struct.snd_timer_read* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, %49
  store i64 %53, i64* %51, align 8
  br label %96

54:                                               ; preds = %35
  br label %55

55:                                               ; preds = %54, %3
  %56 = load %struct.snd_timer_user*, %struct.snd_timer_user** %7, align 8
  %57 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.snd_timer_user*, %struct.snd_timer_user** %7, align 8
  %60 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp sge i32 %58, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load %struct.snd_timer_user*, %struct.snd_timer_user** %7, align 8
  %65 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  br label %95

68:                                               ; preds = %55
  %69 = load %struct.snd_timer_user*, %struct.snd_timer_user** %7, align 8
  %70 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %69, i32 0, i32 6
  %71 = load %struct.snd_timer_read*, %struct.snd_timer_read** %70, align 8
  %72 = load %struct.snd_timer_user*, %struct.snd_timer_user** %7, align 8
  %73 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds %struct.snd_timer_read, %struct.snd_timer_read* %71, i64 %76
  store %struct.snd_timer_read* %77, %struct.snd_timer_read** %8, align 8
  %78 = load %struct.snd_timer_user*, %struct.snd_timer_user** %7, align 8
  %79 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.snd_timer_user*, %struct.snd_timer_user** %7, align 8
  %82 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = srem i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load i64, i64* %5, align 8
  %86 = load %struct.snd_timer_read*, %struct.snd_timer_read** %8, align 8
  %87 = getelementptr inbounds %struct.snd_timer_read, %struct.snd_timer_read* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load i64, i64* %6, align 8
  %89 = load %struct.snd_timer_read*, %struct.snd_timer_read** %8, align 8
  %90 = getelementptr inbounds %struct.snd_timer_read, %struct.snd_timer_read* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load %struct.snd_timer_user*, %struct.snd_timer_user** %7, align 8
  %92 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %68, %63
  br label %96

96:                                               ; preds = %95, %48
  %97 = load %struct.snd_timer_user*, %struct.snd_timer_user** %7, align 8
  %98 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %97, i32 0, i32 5
  %99 = call i32 @spin_unlock(i32* %98)
  %100 = load %struct.snd_timer_user*, %struct.snd_timer_user** %7, align 8
  %101 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %100, i32 0, i32 4
  %102 = load i32, i32* @SIGIO, align 4
  %103 = load i32, i32* @POLL_IN, align 4
  %104 = call i32 @kill_fasync(i32* %101, i32 %102, i32 %103)
  %105 = load %struct.snd_timer_user*, %struct.snd_timer_user** %7, align 8
  %106 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %105, i32 0, i32 3
  %107 = call i32 @wake_up(i32* %106)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

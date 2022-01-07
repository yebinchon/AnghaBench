; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_evlog.h_ev_log_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_evlog.h_ev_log_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ev_log = type { i32, i32, i32, %struct.ev_entry* }
%struct.ev_entry = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ev_log*, i32, i32)* @ev_log_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ev_log_write(%struct.ev_log* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ev_log*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ev_entry*, align 8
  %8 = alloca i64, align 8
  store %struct.ev_log* %0, %struct.ev_log** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @local_irq_save(i64 %9)
  %11 = load %struct.ev_log*, %struct.ev_log** %4, align 8
  %12 = getelementptr inbounds %struct.ev_log, %struct.ev_log* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load %struct.ev_log*, %struct.ev_log** %4, align 8
  %17 = getelementptr inbounds %struct.ev_log, %struct.ev_log* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %55

21:                                               ; preds = %15
  %22 = load %struct.ev_log*, %struct.ev_log** %4, align 8
  %23 = getelementptr inbounds %struct.ev_log, %struct.ev_log* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %21, %3
  %27 = load %struct.ev_log*, %struct.ev_log** %4, align 8
  %28 = getelementptr inbounds %struct.ev_log, %struct.ev_log* %27, i32 0, i32 3
  %29 = load %struct.ev_entry*, %struct.ev_entry** %28, align 8
  %30 = load %struct.ev_log*, %struct.ev_log** %4, align 8
  %31 = getelementptr inbounds %struct.ev_log, %struct.ev_log* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ev_entry, %struct.ev_entry* %29, i64 %33
  store %struct.ev_entry* %34, %struct.ev_entry** %7, align 8
  %35 = call i32 (...) @ktime_get()
  %36 = load %struct.ev_entry*, %struct.ev_entry** %7, align 8
  %37 = getelementptr inbounds %struct.ev_entry, %struct.ev_entry* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.ev_entry*, %struct.ev_entry** %7, align 8
  %40 = getelementptr inbounds %struct.ev_entry, %struct.ev_entry* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.ev_entry*, %struct.ev_entry** %7, align 8
  %43 = getelementptr inbounds %struct.ev_entry, %struct.ev_entry* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ev_log*, %struct.ev_log** %4, align 8
  %45 = getelementptr inbounds %struct.ev_log, %struct.ev_log* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  %48 = load %struct.ev_log*, %struct.ev_log** %4, align 8
  %49 = getelementptr inbounds %struct.ev_log, %struct.ev_log* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %50, 1
  %52 = and i32 %47, %51
  %53 = load %struct.ev_log*, %struct.ev_log** %4, align 8
  %54 = getelementptr inbounds %struct.ev_log, %struct.ev_log* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %26, %20
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @local_irq_restore(i64 %56)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

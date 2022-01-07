; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sa1100fb.c_sa1100fb_schedule_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sa1100fb.c_sa1100fb_schedule_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1100fb_info = type { i64, i32 }

@C_ENABLE = common dso_local global i64 0, align 8
@C_REENABLE = common dso_local global i64 0, align 8
@C_DISABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sa1100fb_info*, i64)* @sa1100fb_schedule_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa1100fb_schedule_work(%struct.sa1100fb_info* %0, i64 %1) #0 {
  %3 = alloca %struct.sa1100fb_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.sa1100fb_info* %0, %struct.sa1100fb_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @local_irq_save(i64 %6)
  %8 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @C_ENABLE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @C_REENABLE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i64 -1, i64* %4, align 8
  br label %18

18:                                               ; preds = %17, %13, %2
  %19 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %20 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @C_DISABLE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @C_ENABLE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* @C_REENABLE, align 8
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %28, %24, %18
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %31, -1
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %36 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %38 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %37, i32 0, i32 1
  %39 = call i32 @schedule_work(i32* %38)
  br label %40

40:                                               ; preds = %33, %30
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @local_irq_restore(i64 %41)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

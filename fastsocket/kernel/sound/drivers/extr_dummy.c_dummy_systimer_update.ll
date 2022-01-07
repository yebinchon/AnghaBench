; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_dummy.c_dummy_systimer_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_dummy.c_dummy_systimer_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummy_systimer_pcm = type { i64, i64, i64, i64, i64, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dummy_systimer_pcm*)* @dummy_systimer_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dummy_systimer_update(%struct.dummy_systimer_pcm* %0) #0 {
  %2 = alloca %struct.dummy_systimer_pcm*, align 8
  %3 = alloca i64, align 8
  store %struct.dummy_systimer_pcm* %0, %struct.dummy_systimer_pcm** %2, align 8
  %4 = load i64, i64* @jiffies, align 8
  %5 = load %struct.dummy_systimer_pcm*, %struct.dummy_systimer_pcm** %2, align 8
  %6 = getelementptr inbounds %struct.dummy_systimer_pcm, %struct.dummy_systimer_pcm* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = sub i64 %4, %7
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %69

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = load %struct.dummy_systimer_pcm*, %struct.dummy_systimer_pcm** %2, align 8
  %15 = getelementptr inbounds %struct.dummy_systimer_pcm, %struct.dummy_systimer_pcm* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, %13
  store i64 %17, i64* %15, align 8
  %18 = load %struct.dummy_systimer_pcm*, %struct.dummy_systimer_pcm** %2, align 8
  %19 = getelementptr inbounds %struct.dummy_systimer_pcm, %struct.dummy_systimer_pcm* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %3, align 8
  %22 = mul i64 %21, %20
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.dummy_systimer_pcm*, %struct.dummy_systimer_pcm** %2, align 8
  %25 = getelementptr inbounds %struct.dummy_systimer_pcm, %struct.dummy_systimer_pcm* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, %23
  store i64 %27, i64* %25, align 8
  br label %28

28:                                               ; preds = %36, %12
  %29 = load %struct.dummy_systimer_pcm*, %struct.dummy_systimer_pcm** %2, align 8
  %30 = getelementptr inbounds %struct.dummy_systimer_pcm, %struct.dummy_systimer_pcm* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.dummy_systimer_pcm*, %struct.dummy_systimer_pcm** %2, align 8
  %33 = getelementptr inbounds %struct.dummy_systimer_pcm, %struct.dummy_systimer_pcm* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %31, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load %struct.dummy_systimer_pcm*, %struct.dummy_systimer_pcm** %2, align 8
  %38 = getelementptr inbounds %struct.dummy_systimer_pcm, %struct.dummy_systimer_pcm* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.dummy_systimer_pcm*, %struct.dummy_systimer_pcm** %2, align 8
  %41 = getelementptr inbounds %struct.dummy_systimer_pcm, %struct.dummy_systimer_pcm* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %42, %39
  store i64 %43, i64* %41, align 8
  br label %28

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %51, %44
  %46 = load %struct.dummy_systimer_pcm*, %struct.dummy_systimer_pcm** %2, align 8
  %47 = getelementptr inbounds %struct.dummy_systimer_pcm, %struct.dummy_systimer_pcm* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %3, align 8
  %50 = icmp ule i64 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load %struct.dummy_systimer_pcm*, %struct.dummy_systimer_pcm** %2, align 8
  %53 = getelementptr inbounds %struct.dummy_systimer_pcm, %struct.dummy_systimer_pcm* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load %struct.dummy_systimer_pcm*, %struct.dummy_systimer_pcm** %2, align 8
  %57 = getelementptr inbounds %struct.dummy_systimer_pcm, %struct.dummy_systimer_pcm* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.dummy_systimer_pcm*, %struct.dummy_systimer_pcm** %2, align 8
  %60 = getelementptr inbounds %struct.dummy_systimer_pcm, %struct.dummy_systimer_pcm* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, %58
  store i64 %62, i64* %60, align 8
  br label %45

63:                                               ; preds = %45
  %64 = load i64, i64* %3, align 8
  %65 = load %struct.dummy_systimer_pcm*, %struct.dummy_systimer_pcm** %2, align 8
  %66 = getelementptr inbounds %struct.dummy_systimer_pcm, %struct.dummy_systimer_pcm* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = sub i64 %67, %64
  store i64 %68, i64* %66, align 8
  br label %69

69:                                               ; preds = %63, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

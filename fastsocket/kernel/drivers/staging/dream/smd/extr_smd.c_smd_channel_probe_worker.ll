; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c_smd_channel_probe_worker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c_smd_channel_probe_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.smd_alloc_elm = type { i32, i32, i32*, i32 }

@ID_CH_ALLOC_TBL = common dso_local global i32 0, align 4
@smd_ch_allocated = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @smd_channel_probe_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smd_channel_probe_worker(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.smd_alloc_elm*, align 8
  %4 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %5 = load i32, i32* @ID_CH_ALLOC_TBL, align 4
  %6 = call %struct.smd_alloc_elm* @smem_find(i32 %5, i32 1536)
  store %struct.smd_alloc_elm* %6, %struct.smd_alloc_elm** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %62, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp ult i32 %8, 64
  br i1 %9, label %10, label %65

10:                                               ; preds = %7
  %11 = load i32*, i32** @smd_ch_allocated, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %62

18:                                               ; preds = %10
  %19 = load %struct.smd_alloc_elm*, %struct.smd_alloc_elm** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.smd_alloc_elm, %struct.smd_alloc_elm* %19, i64 %21
  %23 = getelementptr inbounds %struct.smd_alloc_elm, %struct.smd_alloc_elm* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  br label %62

27:                                               ; preds = %18
  %28 = load %struct.smd_alloc_elm*, %struct.smd_alloc_elm** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.smd_alloc_elm, %struct.smd_alloc_elm* %28, i64 %30
  %32 = getelementptr inbounds %struct.smd_alloc_elm, %struct.smd_alloc_elm* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  br label %62

38:                                               ; preds = %27
  %39 = load %struct.smd_alloc_elm*, %struct.smd_alloc_elm** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.smd_alloc_elm, %struct.smd_alloc_elm* %39, i64 %41
  %43 = getelementptr inbounds %struct.smd_alloc_elm, %struct.smd_alloc_elm* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.smd_alloc_elm*, %struct.smd_alloc_elm** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.smd_alloc_elm, %struct.smd_alloc_elm* %45, i64 %47
  %49 = getelementptr inbounds %struct.smd_alloc_elm, %struct.smd_alloc_elm* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.smd_alloc_elm*, %struct.smd_alloc_elm** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.smd_alloc_elm, %struct.smd_alloc_elm* %51, i64 %53
  %55 = getelementptr inbounds %struct.smd_alloc_elm, %struct.smd_alloc_elm* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @smd_alloc_channel(i32* %44, i32 %50, i32 %56)
  %58 = load i32*, i32** @smd_ch_allocated, align 8
  %59 = load i32, i32* %4, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %38, %37, %26, %17
  %63 = load i32, i32* %4, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %7

65:                                               ; preds = %7
  ret void
}

declare dso_local %struct.smd_alloc_elm* @smem_find(i32, i32) #1

declare dso_local i32 @smd_alloc_channel(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

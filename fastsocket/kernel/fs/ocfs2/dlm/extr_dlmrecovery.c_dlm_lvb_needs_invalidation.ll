; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_lvb_needs_invalidation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_lvb_needs_invalidation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@LKM_EXMODE = common dso_local global i64 0, align 8
@LKM_PRMODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_lock*, i32)* @dlm_lvb_needs_invalidation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_lvb_needs_invalidation(%struct.dlm_lock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlm_lock*, align 8
  %5 = alloca i32, align 4
  store %struct.dlm_lock* %0, %struct.dlm_lock** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %10 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LKM_EXMODE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %8
  %16 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %17 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @LKM_PRMODE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %34

23:                                               ; preds = %15, %8
  br label %33

24:                                               ; preds = %2
  %25 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %26 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LKM_EXMODE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %34

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %23
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %31, %22
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

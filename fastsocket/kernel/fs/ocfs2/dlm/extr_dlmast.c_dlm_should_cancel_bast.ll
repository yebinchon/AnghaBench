; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmast.c_dlm_should_cancel_bast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmast.c_dlm_should_cancel_bast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32 }
%struct.dlm_lock = type { %struct.TYPE_2__, i32, i64, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@LKM_IVMODE = common dso_local global i64 0, align 8
@LKM_NLMODE = common dso_local global i64 0, align 8
@LKM_EXMODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, %struct.dlm_lock*)* @dlm_should_cancel_bast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_should_cancel_bast(%struct.dlm_ctxt* %0, %struct.dlm_lock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlm_ctxt*, align 8
  %5 = alloca %struct.dlm_lock*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %4, align 8
  store %struct.dlm_lock* %1, %struct.dlm_lock** %5, align 8
  %6 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %7 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %6, i32 0, i32 0
  %8 = call i32 @assert_spin_locked(i32* %7)
  %9 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %10 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %9, i32 0, i32 3
  %11 = call i32 @assert_spin_locked(i32* %10)
  %12 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %13 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LKM_IVMODE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

19:                                               ; preds = %2
  %20 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %21 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LKM_NLMODE, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %29 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %19
  %33 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %34 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %33, i32 0, i32 1
  %35 = call i64 @list_empty(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %65

38:                                               ; preds = %32, %19
  %39 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %40 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @LKM_EXMODE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %65

46:                                               ; preds = %38
  %47 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %48 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @LKM_NLMODE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %65

54:                                               ; preds = %46
  %55 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %56 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @LKM_EXMODE, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %65

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %61, %53, %45, %37, %18
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

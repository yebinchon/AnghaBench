; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nilfs_segctor_req = type { i64, i32, i64, i32 }

@SC_LSEG_SR = common dso_local global i64 0, align 8
@NILFS_SEGCTOR_COMMIT = common dso_local global i32 0, align 4
@SC_FLUSH_FILE = common dso_local global i64 0, align 8
@FLUSH_FILE_BIT = common dso_local global i32 0, align 4
@SC_FLUSH_DAT = common dso_local global i64 0, align 8
@FLUSH_DAT_BIT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_sc_info*, %struct.nilfs_segctor_req*)* @nilfs_segctor_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_segctor_notify(%struct.nilfs_sc_info* %0, %struct.nilfs_segctor_req* %1) #0 {
  %3 = alloca %struct.nilfs_sc_info*, align 8
  %4 = alloca %struct.nilfs_segctor_req*, align 8
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %3, align 8
  store %struct.nilfs_segctor_req* %1, %struct.nilfs_segctor_req** %4, align 8
  %5 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %6 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %5, i32 0, i32 1
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.nilfs_segctor_req*, %struct.nilfs_segctor_req** %4, align 8
  %9 = getelementptr inbounds %struct.nilfs_segctor_req, %struct.nilfs_segctor_req* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SC_LSEG_SR, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %2
  %14 = load i32, i32* @NILFS_SEGCTOR_COMMIT, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %17 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.nilfs_segctor_req*, %struct.nilfs_segctor_req** %4, align 8
  %21 = getelementptr inbounds %struct.nilfs_segctor_req, %struct.nilfs_segctor_req* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %24 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %26 = load %struct.nilfs_segctor_req*, %struct.nilfs_segctor_req** %4, align 8
  %27 = getelementptr inbounds %struct.nilfs_segctor_req, %struct.nilfs_segctor_req* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %13
  br label %36

31:                                               ; preds = %13
  %32 = load %struct.nilfs_segctor_req*, %struct.nilfs_segctor_req** %4, align 8
  %33 = getelementptr inbounds %struct.nilfs_segctor_req, %struct.nilfs_segctor_req* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  br label %36

36:                                               ; preds = %31, %30
  %37 = phi i64 [ %28, %30 ], [ %35, %31 ]
  %38 = trunc i64 %37 to i32
  %39 = call i32 @nilfs_segctor_wakeup(%struct.nilfs_sc_info* %25, i32 %38)
  %40 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %41 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %40, i32 0, i32 3
  store i32 0, i32* %41, align 8
  br label %96

42:                                               ; preds = %2
  %43 = load %struct.nilfs_segctor_req*, %struct.nilfs_segctor_req** %4, align 8
  %44 = getelementptr inbounds %struct.nilfs_segctor_req, %struct.nilfs_segctor_req* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SC_FLUSH_FILE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i32, i32* @FLUSH_FILE_BIT, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %52 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %69

55:                                               ; preds = %42
  %56 = load %struct.nilfs_segctor_req*, %struct.nilfs_segctor_req** %4, align 8
  %57 = getelementptr inbounds %struct.nilfs_segctor_req, %struct.nilfs_segctor_req* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SC_FLUSH_DAT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load i32, i32* @FLUSH_DAT_BIT, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %65 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %61, %55
  br label %69

69:                                               ; preds = %68, %48
  %70 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %71 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = icmp ne %struct.TYPE_2__* %72, null
  br i1 %73, label %74, label %95

74:                                               ; preds = %69
  %75 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %76 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @NILFS_SEGCTOR_COMMIT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %74
  %82 = load i32, i32* @jiffies, align 4
  %83 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %84 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @time_before(i32 %82, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %81
  %91 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %92 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %91, i32 0, i32 2
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = call i32 @add_timer(%struct.TYPE_2__* %93)
  br label %95

95:                                               ; preds = %90, %81, %74, %69
  br label %96

96:                                               ; preds = %95, %36
  %97 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %98 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %97, i32 0, i32 1
  %99 = call i32 @spin_unlock(i32* %98)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @nilfs_segctor_wakeup(%struct.nilfs_sc_info*, i32) #1

declare dso_local i64 @time_before(i32, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

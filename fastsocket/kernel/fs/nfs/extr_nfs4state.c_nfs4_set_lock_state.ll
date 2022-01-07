; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_set_lock_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_set_lock_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { i32 }
%struct.file_lock = type { i32, i32*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nfs4_lock_state* }
%struct.nfs4_lock_state = type { i32 }

@FL_POSIX = common dso_local global i32 0, align 4
@NFS4_POSIX_LOCK_TYPE = common dso_local global i32 0, align 4
@FL_FLOCK = common dso_local global i32 0, align 4
@NFS4_FLOCK_LOCK_TYPE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nfs4_fl_lock_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_set_lock_state(%struct.nfs4_state* %0, %struct.file_lock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs4_state*, align 8
  %5 = alloca %struct.file_lock*, align 8
  %6 = alloca %struct.nfs4_lock_state*, align 8
  store %struct.nfs4_state* %0, %struct.nfs4_state** %4, align 8
  store %struct.file_lock* %1, %struct.file_lock** %5, align 8
  %7 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %8 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

12:                                               ; preds = %2
  %13 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %14 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @FL_POSIX, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %21 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %22 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NFS4_POSIX_LOCK_TYPE, align 4
  %25 = call %struct.nfs4_lock_state* @nfs4_get_lock_state(%struct.nfs4_state* %20, i32 %23, i32 0, i32 %24)
  store %struct.nfs4_lock_state* %25, %struct.nfs4_lock_state** %6, align 8
  br label %44

26:                                               ; preds = %12
  %27 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %28 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @FL_FLOCK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %35 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %36 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @NFS4_FLOCK_LOCK_TYPE, align 4
  %39 = call %struct.nfs4_lock_state* @nfs4_get_lock_state(%struct.nfs4_state* %34, i32 0, i32 %37, i32 %38)
  store %struct.nfs4_lock_state* %39, %struct.nfs4_lock_state** %6, align 8
  br label %43

40:                                               ; preds = %26
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %58

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %19
  %45 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %6, align 8
  %46 = icmp eq %struct.nfs4_lock_state* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %58

50:                                               ; preds = %44
  %51 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %6, align 8
  %52 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %53 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store %struct.nfs4_lock_state* %51, %struct.nfs4_lock_state** %55, align 8
  %56 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %57 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %56, i32 0, i32 1
  store i32* @nfs4_fl_lock_ops, i32** %57, align 8
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %50, %47, %40, %11
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.nfs4_lock_state* @nfs4_get_lock_state(%struct.nfs4_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

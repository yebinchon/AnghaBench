; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_util.c_ipc_addid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_util.c_ipc_addid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc_ids = type { i32, i64, i64, i32 }
%struct.kern_ipc_perm = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@IPCMNI = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_addid(%struct.ipc_ids* %0, %struct.kern_ipc_perm* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipc_ids*, align 8
  %6 = alloca %struct.kern_ipc_perm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ipc_ids* %0, %struct.ipc_ids** %5, align 8
  store %struct.kern_ipc_perm* %1, %struct.kern_ipc_perm** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @IPCMNI, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @IPCMNI, align 4
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %15, %3
  %18 = load %struct.ipc_ids*, %struct.ipc_ids** %5, align 8
  %19 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @ENOSPC, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %90

26:                                               ; preds = %17
  %27 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %28 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %27, i32 0, i32 6
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %31 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %30, i32 0, i32 7
  store i64 0, i64* %31, align 8
  %32 = call i32 (...) @rcu_read_lock()
  %33 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %34 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %33, i32 0, i32 6
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.ipc_ids*, %struct.ipc_ids** %5, align 8
  %37 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %36, i32 0, i32 3
  %38 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %39 = call i32 @idr_get_new(i32* %37, %struct.kern_ipc_perm* %38, i32* %10)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %26
  %43 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %44 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %43, i32 0, i32 6
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = call i32 (...) @rcu_read_unlock()
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %4, align 4
  br label %90

48:                                               ; preds = %26
  %49 = load %struct.ipc_ids*, %struct.ipc_ids** %5, align 8
  %50 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = call i32 @current_euid_egid(i32* %8, i32* %9)
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %56 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %58 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %57, i32 0, i32 5
  store i32 %54, i32* %58, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %61 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %63 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %62, i32 0, i32 3
  store i32 %59, i32* %63, align 4
  %64 = load %struct.ipc_ids*, %struct.ipc_ids** %5, align 8
  %65 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = trunc i64 %66 to i32
  %69 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %70 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.ipc_ids*, %struct.ipc_ids** %5, align 8
  %72 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.ipc_ids*, %struct.ipc_ids** %5, align 8
  %75 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %73, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %48
  %79 = load %struct.ipc_ids*, %struct.ipc_ids** %5, align 8
  %80 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %78, %48
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %84 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @ipc_buildid(i32 %82, i32 %85)
  %87 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %88 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %81, %42, %23
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_get_new(i32*, %struct.kern_ipc_perm*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @current_euid_egid(i32*, i32*) #1

declare dso_local i32 @ipc_buildid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

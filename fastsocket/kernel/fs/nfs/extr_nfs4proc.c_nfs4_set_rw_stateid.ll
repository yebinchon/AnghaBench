; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_set_rw_stateid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_set_rw_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_context = type { i32 }
%struct.nfs_lock_context = type { %struct.nfs_lockowner }
%struct.nfs_lockowner = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_set_rw_stateid(i32* %0, %struct.nfs_open_context* %1, %struct.nfs_lock_context* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfs_open_context*, align 8
  %7 = alloca %struct.nfs_lock_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfs_lockowner*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.nfs_open_context* %1, %struct.nfs_open_context** %6, align 8
  store %struct.nfs_lock_context* %2, %struct.nfs_lock_context** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.nfs_lockowner* null, %struct.nfs_lockowner** %9, align 8
  %10 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %7, align 8
  %11 = icmp ne %struct.nfs_lock_context* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %7, align 8
  %14 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %13, i32 0, i32 0
  store %struct.nfs_lockowner* %14, %struct.nfs_lockowner** %9, align 8
  br label %15

15:                                               ; preds = %12, %4
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %18 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.nfs_lockowner*, %struct.nfs_lockowner** %9, align 8
  %22 = call i32 @nfs4_select_rw_stateid(i32* %16, i32 %19, i32 %20, %struct.nfs_lockowner* %21)
  ret i32 %22
}

declare dso_local i32 @nfs4_select_rw_stateid(i32*, i32, i32, %struct.nfs_lockowner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

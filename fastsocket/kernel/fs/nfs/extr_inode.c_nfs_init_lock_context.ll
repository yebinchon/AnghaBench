; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_init_lock_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_init_lock_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.nfs_lock_context = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_lock_context*)* @nfs_init_lock_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_init_lock_context(%struct.nfs_lock_context* %0) #0 {
  %2 = alloca %struct.nfs_lock_context*, align 8
  store %struct.nfs_lock_context* %0, %struct.nfs_lock_context** %2, align 8
  %3 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %2, align 8
  %4 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %3, i32 0, i32 3
  %5 = call i32 @atomic_set(i32* %4, i32 1)
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %2, align 8
  %10 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i32 %8, i32* %11, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %2, align 8
  %16 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %2, align 8
  %19 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %18, i32 0, i32 1
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %2, align 8
  %22 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %21, i32 0, i32 0
  %23 = call i32 @nfs_iocounter_init(i32* %22)
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @nfs_iocounter_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

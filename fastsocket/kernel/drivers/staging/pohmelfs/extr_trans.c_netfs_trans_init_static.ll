; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_trans.c_netfs_trans_init_static.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_trans.c_netfs_trans_init_static.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfs_trans = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netfs_trans*, i32, i32)* @netfs_trans_init_static to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netfs_trans_init_static(%struct.netfs_trans* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.netfs_trans*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.netfs_trans* %0, %struct.netfs_trans** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %9 = getelementptr inbounds %struct.netfs_trans, %struct.netfs_trans* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %12 = getelementptr inbounds %struct.netfs_trans, %struct.netfs_trans* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %14 = getelementptr inbounds %struct.netfs_trans, %struct.netfs_trans* %13, i32 0, i32 4
  %15 = call i32 @atomic_set(i32* %14, i32 1)
  %16 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %17 = getelementptr inbounds %struct.netfs_trans, %struct.netfs_trans* %16, i32 0, i32 3
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %20 = getelementptr inbounds %struct.netfs_trans, %struct.netfs_trans* %19, i32 0, i32 2
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

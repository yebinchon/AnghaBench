; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_main.c_gfs2_init_gl_aspace_once.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_main.c_gfs2_init_gl_aspace_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { i32 }
%struct.address_space = type { i32, i32, i32, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @gfs2_init_gl_aspace_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_init_gl_aspace_once(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.gfs2_glock*, align 8
  %4 = alloca %struct.address_space*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.gfs2_glock*
  store %struct.gfs2_glock* %6, %struct.gfs2_glock** %3, align 8
  %7 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %8 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %7, i64 1
  %9 = bitcast %struct.gfs2_glock* %8 to %struct.address_space*
  store %struct.address_space* %9, %struct.address_space** %4, align 8
  %10 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %11 = call i32 @gfs2_init_glock_once(%struct.gfs2_glock* %10)
  %12 = load %struct.address_space*, %struct.address_space** %4, align 8
  %13 = call i32 @memset(%struct.address_space* %12, i32 0, i32 28)
  %14 = load %struct.address_space*, %struct.address_space** %4, align 8
  %15 = getelementptr inbounds %struct.address_space, %struct.address_space* %14, i32 0, i32 6
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call i32 @INIT_RADIX_TREE(i32* %15, i32 %16)
  %18 = load %struct.address_space*, %struct.address_space** %4, align 8
  %19 = getelementptr inbounds %struct.address_space, %struct.address_space* %18, i32 0, i32 5
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load %struct.address_space*, %struct.address_space** %4, align 8
  %22 = getelementptr inbounds %struct.address_space, %struct.address_space* %21, i32 0, i32 4
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.address_space*, %struct.address_space** %4, align 8
  %25 = getelementptr inbounds %struct.address_space, %struct.address_space* %24, i32 0, i32 3
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.address_space*, %struct.address_space** %4, align 8
  %28 = getelementptr inbounds %struct.address_space, %struct.address_space* %27, i32 0, i32 2
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.address_space*, %struct.address_space** %4, align 8
  %31 = getelementptr inbounds %struct.address_space, %struct.address_space* %30, i32 0, i32 1
  %32 = call i32 @INIT_RAW_PRIO_TREE_ROOT(i32* %31)
  %33 = load %struct.address_space*, %struct.address_space** %4, align 8
  %34 = getelementptr inbounds %struct.address_space, %struct.address_space* %33, i32 0, i32 0
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  ret void
}

declare dso_local i32 @gfs2_init_glock_once(%struct.gfs2_glock*) #1

declare dso_local i32 @memset(%struct.address_space*, i32, i32) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_RAW_PRIO_TREE_ROOT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

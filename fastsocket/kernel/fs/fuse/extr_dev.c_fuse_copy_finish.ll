; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_fuse_copy_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_fuse_copy_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_copy_state = type { i32*, i32, i64 }

@KM_USER0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_copy_state*)* @fuse_copy_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_copy_finish(%struct.fuse_copy_state* %0) #0 {
  %2 = alloca %struct.fuse_copy_state*, align 8
  store %struct.fuse_copy_state* %0, %struct.fuse_copy_state** %2, align 8
  %3 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %2, align 8
  %4 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %33

7:                                                ; preds = %1
  %8 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %2, align 8
  %9 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* @KM_USER0, align 4
  %12 = call i32 @kunmap_atomic(i32* %10, i32 %11)
  %13 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %2, align 8
  %14 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %7
  %18 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %2, align 8
  %19 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @flush_dcache_page(i32 %20)
  %22 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %2, align 8
  %23 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @set_page_dirty_lock(i32 %24)
  br label %26

26:                                               ; preds = %17, %7
  %27 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %2, align 8
  %28 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @put_page(i32 %29)
  %31 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %2, align 8
  %32 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %26, %1
  ret void
}

declare dso_local i32 @kunmap_atomic(i32*, i32) #1

declare dso_local i32 @flush_dcache_page(i32) #1

declare dso_local i32 @set_page_dirty_lock(i32) #1

declare dso_local i32 @put_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

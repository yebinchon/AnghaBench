; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_relocation.c_backref_cache_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_relocation.c_backref_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backref_cache = type { i32, i32, i32, i32*, i32 }

@RB_ROOT = common dso_local global i32 0, align 4
@BTRFS_MAX_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.backref_cache*)* @backref_cache_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @backref_cache_init(%struct.backref_cache* %0) #0 {
  %2 = alloca %struct.backref_cache*, align 8
  %3 = alloca i32, align 4
  store %struct.backref_cache* %0, %struct.backref_cache** %2, align 8
  %4 = load i32, i32* @RB_ROOT, align 4
  %5 = load %struct.backref_cache*, %struct.backref_cache** %2, align 8
  %6 = getelementptr inbounds %struct.backref_cache, %struct.backref_cache* %5, i32 0, i32 4
  store i32 %4, i32* %6, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %19, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load %struct.backref_cache*, %struct.backref_cache** %2, align 8
  %13 = getelementptr inbounds %struct.backref_cache, %struct.backref_cache* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  br label %19

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %7

22:                                               ; preds = %7
  %23 = load %struct.backref_cache*, %struct.backref_cache** %2, align 8
  %24 = getelementptr inbounds %struct.backref_cache, %struct.backref_cache* %23, i32 0, i32 2
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.backref_cache*, %struct.backref_cache** %2, align 8
  %27 = getelementptr inbounds %struct.backref_cache, %struct.backref_cache* %26, i32 0, i32 1
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.backref_cache*, %struct.backref_cache** %2, align 8
  %30 = getelementptr inbounds %struct.backref_cache, %struct.backref_cache* %29, i32 0, i32 0
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

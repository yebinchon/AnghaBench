; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_sys.c_block_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_sys.c_block_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { %struct.lm_lockstruct }
%struct.lm_lockstruct = type { i32 }

@DFL_BLOCK_LOCKS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.gfs2_sbd*, i8*, i64)* @block_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @block_store(%struct.gfs2_sbd* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.lm_lockstruct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %11 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %10, i32 0, i32 0
  store %struct.lm_lockstruct* %11, %struct.lm_lockstruct** %7, align 8
  %12 = load i64, i64* %6, align 8
  store i64 %12, i64* %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @simple_strtol(i8* %13, i32* null, i32 0)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i32, i32* @DFL_BLOCK_LOCKS, align 4
  %19 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %7, align 8
  %20 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %19, i32 0, i32 0
  %21 = call i32 @set_bit(i32 %18, i32* %20)
  br label %37

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i32, i32* @DFL_BLOCK_LOCKS, align 4
  %27 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %7, align 8
  %28 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %27, i32 0, i32 0
  %29 = call i32 @clear_bit(i32 %26, i32* %28)
  %30 = call i32 (...) @smp_mb__after_clear_bit()
  %31 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %32 = call i32 @gfs2_glock_thaw(%struct.gfs2_sbd* %31)
  br label %36

33:                                               ; preds = %22
  %34 = load i64, i64* @EINVAL, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %8, align 8
  br label %36

36:                                               ; preds = %33, %25
  br label %37

37:                                               ; preds = %36, %17
  %38 = load i64, i64* %8, align 8
  ret i64 %38
}

declare dso_local i32 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_clear_bit(...) #1

declare dso_local i32 @gfs2_glock_thaw(%struct.gfs2_sbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

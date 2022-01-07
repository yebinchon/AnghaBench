; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_transaction_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_transaction_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.nilfs_transaction_info* }
%struct.nilfs_transaction_info = type { i32, i32, i32, %struct.nilfs_transaction_info*, i64 }
%struct.nilfs_sb_info = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@current = common dso_local global %struct.TYPE_7__* null, align 8
@NILFS_TI_WRITER = common dso_local global i32 0, align 4
@NILFS_TI_MAGIC = common dso_local global i32 0, align 4
@NILFS_SC_PRIOR_FLUSH = common dso_local global i32 0, align 4
@NILFS_TI_GC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_sb_info*, %struct.nilfs_transaction_info*, i32)* @nilfs_transaction_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_transaction_lock(%struct.nilfs_sb_info* %0, %struct.nilfs_transaction_info* %1, i32 %2) #0 {
  %4 = alloca %struct.nilfs_sb_info*, align 8
  %5 = alloca %struct.nilfs_transaction_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nilfs_transaction_info*, align 8
  store %struct.nilfs_sb_info* %0, %struct.nilfs_sb_info** %4, align 8
  store %struct.nilfs_transaction_info* %1, %struct.nilfs_transaction_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %9, align 8
  store %struct.nilfs_transaction_info* %10, %struct.nilfs_transaction_info** %7, align 8
  %11 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %7, align 8
  %12 = call i32 @WARN_ON(%struct.nilfs_transaction_info* %11)
  %13 = load i32, i32* @NILFS_TI_WRITER, align 4
  %14 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %15 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %17 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %16, i32 0, i32 4
  store i64 0, i64* %17, align 8
  %18 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %7, align 8
  %19 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %20 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %19, i32 0, i32 3
  store %struct.nilfs_transaction_info* %18, %struct.nilfs_transaction_info** %20, align 8
  %21 = load i32, i32* @NILFS_TI_MAGIC, align 4
  %22 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %23 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %25 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %24, i32 0, i32 1
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store %struct.nilfs_transaction_info* %27, %struct.nilfs_transaction_info** %29, align 8
  br label %30

30:                                               ; preds = %43, %3
  %31 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %4, align 8
  %32 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = call i32 @down_write(i32* %34)
  %36 = load i32, i32* @NILFS_SC_PRIOR_FLUSH, align 4
  %37 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %4, align 8
  %38 = call %struct.TYPE_6__* @NILFS_SC(%struct.nilfs_sb_info* %37)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = call i32 @test_bit(i32 %36, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %30
  br label %53

43:                                               ; preds = %30
  %44 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %4, align 8
  %45 = call %struct.TYPE_6__* @NILFS_SC(%struct.nilfs_sb_info* %44)
  %46 = call i32 @nilfs_segctor_do_immediate_flush(%struct.TYPE_6__* %45)
  %47 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %4, align 8
  %48 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = call i32 @up_write(i32* %50)
  %52 = call i32 (...) @yield()
  br label %30

53:                                               ; preds = %42
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* @NILFS_TI_GC, align 4
  %58 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %59 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %56, %53
  ret void
}

declare dso_local i32 @WARN_ON(%struct.nilfs_transaction_info*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @NILFS_SC(%struct.nilfs_sb_info*) #1

declare dso_local i32 @nilfs_segctor_do_immediate_flush(%struct.TYPE_6__*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @yield(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

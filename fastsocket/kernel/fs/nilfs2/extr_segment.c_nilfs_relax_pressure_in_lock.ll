; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_relax_pressure_in_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_relax_pressure_in_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.nilfs_transaction_info* }
%struct.nilfs_transaction_info = type { i32 }
%struct.super_block = type { i32 }
%struct.nilfs_sb_info = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32 }
%struct.nilfs_sc_info = type { i32, i64 }

@NILFS_SC_PRIOR_FLUSH = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@NILFS_TI_WRITER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_relax_pressure_in_lock(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.nilfs_sb_info*, align 8
  %4 = alloca %struct.nilfs_sc_info*, align 8
  %5 = alloca %struct.the_nilfs*, align 8
  %6 = alloca %struct.nilfs_transaction_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = call %struct.nilfs_sb_info* @NILFS_SB(%struct.super_block* %7)
  store %struct.nilfs_sb_info* %8, %struct.nilfs_sb_info** %3, align 8
  %9 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %3, align 8
  %10 = call %struct.nilfs_sc_info* @NILFS_SC(%struct.nilfs_sb_info* %9)
  store %struct.nilfs_sc_info* %10, %struct.nilfs_sc_info** %4, align 8
  %11 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %3, align 8
  %12 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %11, i32 0, i32 0
  %13 = load %struct.the_nilfs*, %struct.the_nilfs** %12, align 8
  store %struct.the_nilfs* %13, %struct.the_nilfs** %5, align 8
  %14 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %15 = icmp ne %struct.nilfs_sc_info* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %18 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %1
  br label %64

22:                                               ; preds = %16
  %23 = load i32, i32* @NILFS_SC_PRIOR_FLUSH, align 4
  %24 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %25 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %24, i32 0, i32 0
  %26 = call i32 @set_bit(i32 %23, i32* %25)
  %27 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %28 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %27, i32 0, i32 0
  %29 = call i32 @up_read(i32* %28)
  %30 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %31 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %30, i32 0, i32 0
  %32 = call i32 @down_write(i32* %31)
  %33 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %34 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %22
  %38 = load i32, i32* @NILFS_SC_PRIOR_FLUSH, align 4
  %39 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %40 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %39, i32 0, i32 0
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %37
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %45, align 8
  store %struct.nilfs_transaction_info* %46, %struct.nilfs_transaction_info** %6, align 8
  %47 = load i32, i32* @NILFS_TI_WRITER, align 4
  %48 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %6, align 8
  %49 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %53 = call i32 @nilfs_segctor_do_immediate_flush(%struct.nilfs_sc_info* %52)
  %54 = load i32, i32* @NILFS_TI_WRITER, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %6, align 8
  %57 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %43, %37, %22
  %61 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %62 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %61, i32 0, i32 0
  %63 = call i32 @downgrade_write(i32* %62)
  br label %64

64:                                               ; preds = %60, %21
  ret void
}

declare dso_local %struct.nilfs_sb_info* @NILFS_SB(%struct.super_block*) #1

declare dso_local %struct.nilfs_sc_info* @NILFS_SC(%struct.nilfs_sb_info*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nilfs_segctor_do_immediate_flush(%struct.nilfs_sc_info*) #1

declare dso_local i32 @downgrade_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

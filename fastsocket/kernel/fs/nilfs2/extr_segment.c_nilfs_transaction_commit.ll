; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_transaction_commit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_transaction_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.nilfs_transaction_info* }
%struct.nilfs_transaction_info = type { i64, i32, i64, %struct.nilfs_transaction_info* }
%struct.super_block = type { i32 }
%struct.nilfs_sb_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nilfs_sc_info = type { i64 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@NILFS_TI_MAGIC = common dso_local global i64 0, align 8
@NILFS_TI_COMMIT = common dso_local global i32 0, align 4
@NILFS_TI_SYNC = common dso_local global i32 0, align 4
@NILFS_TI_DYNAMIC_ALLOC = common dso_local global i32 0, align 4
@nilfs_transaction_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_transaction_commit(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.nilfs_transaction_info*, align 8
  %5 = alloca %struct.nilfs_sb_info*, align 8
  %6 = alloca %struct.nilfs_sc_info*, align 8
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %9, align 8
  store %struct.nilfs_transaction_info* %10, %struct.nilfs_transaction_info** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %12 = icmp eq %struct.nilfs_transaction_info* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %15 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NILFS_TI_MAGIC, align 8
  %18 = icmp ne i64 %16, %17
  br label %19

19:                                               ; preds = %13, %1
  %20 = phi i1 [ true, %1 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i32, i32* @NILFS_TI_COMMIT, align 4
  %24 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %25 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %29 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %19
  %33 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %34 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %34, align 8
  store i32 0, i32* %2, align 4
  br label %101

37:                                               ; preds = %19
  %38 = load %struct.super_block*, %struct.super_block** %3, align 8
  %39 = call %struct.nilfs_sb_info* @NILFS_SB(%struct.super_block* %38)
  store %struct.nilfs_sb_info* %39, %struct.nilfs_sb_info** %5, align 8
  %40 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %5, align 8
  %41 = call %struct.nilfs_sc_info* @NILFS_SC(%struct.nilfs_sb_info* %40)
  store %struct.nilfs_sc_info* %41, %struct.nilfs_sc_info** %6, align 8
  %42 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %6, align 8
  %43 = icmp ne %struct.nilfs_sc_info* %42, null
  br i1 %43, label %44, label %68

44:                                               ; preds = %37
  %45 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %46 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @NILFS_TI_COMMIT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %6, align 8
  %53 = call i32 @nilfs_segctor_start_timer(%struct.nilfs_sc_info* %52)
  br label %54

54:                                               ; preds = %51, %44
  %55 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %5, align 8
  %56 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = call i64 @atomic_read(i32* %58)
  %60 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %6, align 8
  %61 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %6, align 8
  %66 = call i32 @nilfs_segctor_do_flush(%struct.nilfs_sc_info* %65, i32 0)
  br label %67

67:                                               ; preds = %64, %54
  br label %68

68:                                               ; preds = %67, %37
  %69 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %5, align 8
  %70 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = call i32 @up_read(i32* %72)
  %74 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %75 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %74, i32 0, i32 3
  %76 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %75, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store %struct.nilfs_transaction_info* %76, %struct.nilfs_transaction_info** %78, align 8
  %79 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %80 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @NILFS_TI_SYNC, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %68
  %86 = load %struct.super_block*, %struct.super_block** %3, align 8
  %87 = call i32 @nilfs_construct_segment(%struct.super_block* %86)
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %85, %68
  %89 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %90 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @NILFS_TI_DYNAMIC_ALLOC, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load i32, i32* @nilfs_transaction_cachep, align 4
  %97 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %98 = call i32 @kmem_cache_free(i32 %96, %struct.nilfs_transaction_info* %97)
  br label %99

99:                                               ; preds = %95, %88
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %99, %32
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.nilfs_sb_info* @NILFS_SB(%struct.super_block*) #1

declare dso_local %struct.nilfs_sc_info* @NILFS_SC(%struct.nilfs_sb_info*) #1

declare dso_local i32 @nilfs_segctor_start_timer(%struct.nilfs_sc_info*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @nilfs_segctor_do_flush(%struct.nilfs_sc_info*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @nilfs_construct_segment(%struct.super_block*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.nilfs_transaction_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_fill_in_checkpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_fill_in_checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i32, i64, i64, i64, %struct.nilfs_sb_info* }
%struct.nilfs_sb_info = type { i32, i32, i32, %struct.the_nilfs* }
%struct.the_nilfs = type { i64, i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_checkpoint = type { i32, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NILFS_SC_HAVE_DELTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_sc_info*)* @nilfs_segctor_fill_in_checkpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_segctor_fill_in_checkpoint(%struct.nilfs_sc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nilfs_sc_info*, align 8
  %4 = alloca %struct.nilfs_sb_info*, align 8
  %5 = alloca %struct.the_nilfs*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.nilfs_checkpoint*, align 8
  %8 = alloca i32, align 4
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %3, align 8
  %9 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %10 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %9, i32 0, i32 4
  %11 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %10, align 8
  store %struct.nilfs_sb_info* %11, %struct.nilfs_sb_info** %4, align 8
  %12 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %4, align 8
  %13 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %12, i32 0, i32 3
  %14 = load %struct.the_nilfs*, %struct.the_nilfs** %13, align 8
  store %struct.the_nilfs* %14, %struct.the_nilfs** %5, align 8
  %15 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %16 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %19 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @nilfs_cpfile_get_checkpoint(i32 %17, i64 %20, i32 0, %struct.nilfs_checkpoint** %7, %struct.buffer_head** %6)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %1
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i1 [ true, %25 ], [ %34, %30 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @WARN_ON(i32 %37)
  br label %106

39:                                               ; preds = %1
  %40 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %7, align 8
  %41 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %7, align 8
  %44 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %4, align 8
  %47 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %46, i32 0, i32 2
  %48 = call i64 @atomic_read(i32* %47)
  %49 = call i8* @cpu_to_le64(i64 %48)
  %50 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %7, align 8
  %51 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  %52 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %4, align 8
  %53 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %52, i32 0, i32 1
  %54 = call i64 @atomic_read(i32* %53)
  %55 = call i8* @cpu_to_le64(i64 %54)
  %56 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %7, align 8
  %57 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %59 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %62 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = call i8* @cpu_to_le64(i64 %64)
  %66 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %7, align 8
  %67 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %69 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i8* @cpu_to_le64(i64 %70)
  %72 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %7, align 8
  %73 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  %74 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %75 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i8* @cpu_to_le64(i64 %76)
  %78 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %7, align 8
  %79 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* @NILFS_SC_HAVE_DELTA, align 4
  %81 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %82 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %81, i32 0, i32 0
  %83 = call i64 @test_bit(i32 %80, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %39
  %86 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %7, align 8
  %87 = call i32 @nilfs_checkpoint_clear_minor(%struct.nilfs_checkpoint* %86)
  br label %91

88:                                               ; preds = %39
  %89 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %7, align 8
  %90 = call i32 @nilfs_checkpoint_set_minor(%struct.nilfs_checkpoint* %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %4, align 8
  %93 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %7, align 8
  %96 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %95, i32 0, i32 0
  %97 = call i32 @nilfs_write_inode_common(i32 %94, i32* %96, i32 1)
  %98 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %99 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %102 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %105 = call i32 @nilfs_cpfile_put_checkpoint(i32 %100, i64 %103, %struct.buffer_head* %104)
  store i32 0, i32* %2, align 4
  br label %108

106:                                              ; preds = %35
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %106, %91
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @nilfs_cpfile_get_checkpoint(i32, i64, i32, %struct.nilfs_checkpoint**, %struct.buffer_head**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nilfs_checkpoint_clear_minor(%struct.nilfs_checkpoint*) #1

declare dso_local i32 @nilfs_checkpoint_set_minor(%struct.nilfs_checkpoint*) #1

declare dso_local i32 @nilfs_write_inode_common(i32, i32*, i32) #1

declare dso_local i32 @nilfs_cpfile_put_checkpoint(i32, i64, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

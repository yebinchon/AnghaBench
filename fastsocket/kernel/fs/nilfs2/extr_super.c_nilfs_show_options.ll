; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_super.c_nilfs_show_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_super.c_nilfs_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.vfsmount = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.nilfs_sb_info = type { i64 }

@BARRIER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c",barrier=off\00", align 1
@SNAPSHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c",cp=%llu\00", align 1
@ERRORS_RO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c",errors=remount-ro\00", align 1
@ERRORS_PANIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c",errors=panic\00", align 1
@STRICT_ORDER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c",order=strict\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.vfsmount*)* @nilfs_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_show_options(%struct.seq_file* %0, %struct.vfsmount* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.nilfs_sb_info*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %4, align 8
  %7 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %8 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %7, i32 0, i32 0
  %9 = load %struct.super_block*, %struct.super_block** %8, align 8
  store %struct.super_block* %9, %struct.super_block** %5, align 8
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = call %struct.nilfs_sb_info* @NILFS_SB(%struct.super_block* %10)
  store %struct.nilfs_sb_info* %11, %struct.nilfs_sb_info** %6, align 8
  %12 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %6, align 8
  %13 = load i32, i32* @BARRIER, align 4
  %14 = call i64 @nilfs_test_opt(%struct.nilfs_sb_info* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %6, align 8
  %21 = load i32, i32* @SNAPSHOT, align 4
  %22 = call i64 @nilfs_test_opt(%struct.nilfs_sb_info* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %6, align 8
  %27 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  br label %30

30:                                               ; preds = %24, %19
  %31 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %6, align 8
  %32 = load i32, i32* @ERRORS_RO, align 4
  %33 = call i64 @nilfs_test_opt(%struct.nilfs_sb_info* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %6, align 8
  %40 = load i32, i32* @ERRORS_PANIC, align 4
  %41 = call i64 @nilfs_test_opt(%struct.nilfs_sb_info* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %45 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %6, align 8
  %48 = load i32, i32* @STRICT_ORDER, align 4
  %49 = call i64 @nilfs_test_opt(%struct.nilfs_sb_info* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %53 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %46
  ret i32 0
}

declare dso_local %struct.nilfs_sb_info* @NILFS_SB(%struct.super_block*) #1

declare dso_local i64 @nilfs_test_opt(%struct.nilfs_sb_info*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

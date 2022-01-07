; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2.c_xfs_dir_cilookup_result.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2.c_xfs_dir_cilookup_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { i64, i32, i32, i32 }

@XFS_CMP_DIFFERENT = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@XFS_CMP_CASE = common dso_local global i64 0, align 8
@XFS_DA_OP_CILOOKUP = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@KM_NOFS = common dso_local global i32 0, align 4
@KM_MAYFAIL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir_cilookup_result(%struct.xfs_da_args* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_da_args*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %9 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @XFS_CMP_DIFFERENT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOENT, align 4
  store i32 %14, i32* %4, align 4
  br label %55

15:                                               ; preds = %3
  %16 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %17 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @XFS_CMP_CASE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %23 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @XFS_DA_OP_CILOOKUP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %21, %15
  %29 = load i32, i32* @EEXIST, align 4
  store i32 %29, i32* %4, align 4
  br label %55

30:                                               ; preds = %21
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @KM_NOFS, align 4
  %33 = load i32, i32* @KM_MAYFAIL, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @kmem_alloc(i32 %31, i32 %34)
  %36 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %37 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %39 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %30
  %43 = load i32, i32* @ENOMEM, align 4
  store i32 %43, i32* %4, align 4
  br label %55

44:                                               ; preds = %30
  %45 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %46 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @memcpy(i32 %47, i8* %48, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %53 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @EEXIST, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %44, %42, %28, %13
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @kmem_alloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

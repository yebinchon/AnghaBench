; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_put_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_put_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32* }
%struct.udf_sb_info = type { i32, i32*, i32, i32, i64 }

@MS_RDONLY = common dso_local global i32 0, align 4
@UDF_FLAG_NLS_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @udf_put_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udf_put_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.udf_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %5)
  store %struct.udf_sb_info* %6, %struct.udf_sb_info** %4, align 8
  %7 = call i32 (...) @lock_kernel()
  %8 = load %struct.udf_sb_info*, %struct.udf_sb_info** %4, align 8
  %9 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.udf_sb_info*, %struct.udf_sb_info** %4, align 8
  %14 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @iput(i64 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.udf_sb_info*, %struct.udf_sb_info** %4, align 8
  %19 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %37, %22
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.udf_sb_info*, %struct.udf_sb_info** %4, align 8
  %26 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load %struct.udf_sb_info*, %struct.udf_sb_info** %4, align 8
  %31 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @udf_free_partition(i32* %35)
  br label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %23

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %40, %17
  %42 = load %struct.super_block*, %struct.super_block** %2, align 8
  %43 = getelementptr inbounds %struct.super_block, %struct.super_block* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @MS_RDONLY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load %struct.super_block*, %struct.super_block** %2, align 8
  %50 = call i32 @udf_close_lvid(%struct.super_block* %49)
  br label %51

51:                                               ; preds = %48, %41
  %52 = load %struct.udf_sb_info*, %struct.udf_sb_info** %4, align 8
  %53 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @brelse(i32 %54)
  %56 = load %struct.udf_sb_info*, %struct.udf_sb_info** %4, align 8
  %57 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @kfree(i32* %58)
  %60 = load %struct.super_block*, %struct.super_block** %2, align 8
  %61 = getelementptr inbounds %struct.super_block, %struct.super_block* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @kfree(i32* %62)
  %64 = load %struct.super_block*, %struct.super_block** %2, align 8
  %65 = getelementptr inbounds %struct.super_block, %struct.super_block* %64, i32 0, i32 1
  store i32* null, i32** %65, align 8
  %66 = call i32 (...) @unlock_kernel()
  ret void
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @iput(i64) #1

declare dso_local i32 @udf_free_partition(i32*) #1

declare dso_local i32 @udf_close_lvid(%struct.super_block*) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

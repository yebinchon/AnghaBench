; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_chunk_drange_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_chunk_drange_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32 }
%struct.btrfs_chunk = type { i32 }
%struct.btrfs_balance_args = type { i32, i64, i64, i64 }
%struct.btrfs_stripe = type { i32 }

@BTRFS_BALANCE_ARGS_DEVID = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_DUP = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_RAID1 = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_RAID10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.extent_buffer*, %struct.btrfs_chunk*, i64, %struct.btrfs_balance_args*)* @chunk_drange_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chunk_drange_filter(%struct.extent_buffer* %0, %struct.btrfs_chunk* %1, i64 %2, %struct.btrfs_balance_args* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.extent_buffer*, align 8
  %7 = alloca %struct.btrfs_chunk*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.btrfs_balance_args*, align 8
  %10 = alloca %struct.btrfs_stripe*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.extent_buffer* %0, %struct.extent_buffer** %6, align 8
  store %struct.btrfs_chunk* %1, %struct.btrfs_chunk** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.btrfs_balance_args* %3, %struct.btrfs_balance_args** %9, align 8
  %16 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %17 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %7, align 8
  %18 = call i32 @btrfs_chunk_num_stripes(%struct.extent_buffer* %16, %struct.btrfs_chunk* %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %9, align 8
  %20 = getelementptr inbounds %struct.btrfs_balance_args, %struct.btrfs_balance_args* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @BTRFS_BALANCE_ARGS_DEVID, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %88

26:                                               ; preds = %4
  %27 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %28 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %7, align 8
  %29 = call i32 @btrfs_chunk_type(%struct.extent_buffer* %27, %struct.btrfs_chunk* %28)
  %30 = load i32, i32* @BTRFS_BLOCK_GROUP_DUP, align 4
  %31 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID1, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID10, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %29, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  store i32 2, i32* %14, align 4
  br label %39

38:                                               ; preds = %26
  store i32 1, i32* %14, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %14, align 4
  %42 = sdiv i32 %40, %41
  store i32 %42, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %43

43:                                               ; preds = %84, %39
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %87

47:                                               ; preds = %43
  %48 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %7, align 8
  %49 = load i32, i32* %15, align 4
  %50 = call %struct.btrfs_stripe* @btrfs_stripe_nr(%struct.btrfs_chunk* %48, i32 %49)
  store %struct.btrfs_stripe* %50, %struct.btrfs_stripe** %10, align 8
  %51 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %52 = load %struct.btrfs_stripe*, %struct.btrfs_stripe** %10, align 8
  %53 = call i64 @btrfs_stripe_devid(%struct.extent_buffer* %51, %struct.btrfs_stripe* %52)
  %54 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %9, align 8
  %55 = getelementptr inbounds %struct.btrfs_balance_args, %struct.btrfs_balance_args* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %84

59:                                               ; preds = %47
  %60 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %61 = load %struct.btrfs_stripe*, %struct.btrfs_stripe** %10, align 8
  %62 = call i64 @btrfs_stripe_offset(%struct.extent_buffer* %60, %struct.btrfs_stripe* %61)
  store i64 %62, i64* %12, align 8
  %63 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %64 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %7, align 8
  %65 = call i64 @btrfs_chunk_length(%struct.extent_buffer* %63, %struct.btrfs_chunk* %64)
  store i64 %65, i64* %13, align 8
  %66 = load i64, i64* %13, align 8
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @do_div(i64 %66, i32 %67)
  %69 = load i64, i64* %12, align 8
  %70 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %9, align 8
  %71 = getelementptr inbounds %struct.btrfs_balance_args, %struct.btrfs_balance_args* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %69, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %59
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* %13, align 8
  %77 = add nsw i64 %75, %76
  %78 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %9, align 8
  %79 = getelementptr inbounds %struct.btrfs_balance_args, %struct.btrfs_balance_args* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  br label %88

83:                                               ; preds = %74, %59
  br label %84

84:                                               ; preds = %83, %58
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %15, align 4
  br label %43

87:                                               ; preds = %43
  store i32 1, i32* %5, align 4
  br label %88

88:                                               ; preds = %87, %82, %25
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @btrfs_chunk_num_stripes(%struct.extent_buffer*, %struct.btrfs_chunk*) #1

declare dso_local i32 @btrfs_chunk_type(%struct.extent_buffer*, %struct.btrfs_chunk*) #1

declare dso_local %struct.btrfs_stripe* @btrfs_stripe_nr(%struct.btrfs_chunk*, i32) #1

declare dso_local i64 @btrfs_stripe_devid(%struct.extent_buffer*, %struct.btrfs_stripe*) #1

declare dso_local i64 @btrfs_stripe_offset(%struct.extent_buffer*, %struct.btrfs_stripe*) #1

declare dso_local i64 @btrfs_chunk_length(%struct.extent_buffer*, %struct.btrfs_chunk*) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

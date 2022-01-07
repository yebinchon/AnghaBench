; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_remount_fs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_remount_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.udf_options = type { i32, i32, i32, i32, i32, i32 }
%struct.udf_sb_info = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@UDF_MAX_WRITE_VERSION = common dso_local global i32 0, align 4
@MS_RDONLY = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, i8*)* @udf_remount_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_remount_fs(%struct.super_block* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.udf_options, align 4
  %9 = alloca %struct.udf_sb_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %12)
  store %struct.udf_sb_info* %13, %struct.udf_sb_info** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %15 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %8, i32 0, i32 5
  store i32 %16, i32* %17, align 4
  %18 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %19 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %8, i32 0, i32 4
  store i32 %20, i32* %21, align 4
  %22 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %23 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %8, i32 0, i32 3
  store i32 %24, i32* %25, align 4
  %26 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %27 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %8, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %31 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %8, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %35 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %8, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @udf_parse_options(i8* %38, %struct.udf_options* %8, i32 1)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %3
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %138

44:                                               ; preds = %3
  %45 = call i32 (...) @lock_kernel()
  %46 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %8, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %49 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 4
  %50 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %8, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %53 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %8, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %57 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %8, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %61 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %8, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %65 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %8, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %69 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %71 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %44
  %75 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %76 = call %struct.TYPE_2__* @udf_sb_lvidiu(%struct.udf_sb_info* %75)
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le16_to_cpu(i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @UDF_MAX_WRITE_VERSION, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %74
  %84 = load i32, i32* @MS_RDONLY, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %84
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %83, %74
  br label %89

89:                                               ; preds = %88, %44
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @MS_RDONLY, align 4
  %93 = and i32 %91, %92
  %94 = load %struct.super_block*, %struct.super_block** %5, align 8
  %95 = getelementptr inbounds %struct.super_block, %struct.super_block* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @MS_RDONLY, align 4
  %98 = and i32 %96, %97
  %99 = icmp eq i32 %93, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  br label %135

101:                                              ; preds = %89
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @MS_RDONLY, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %101
  %108 = load %struct.super_block*, %struct.super_block** %5, align 8
  %109 = call i32 @udf_close_lvid(%struct.super_block* %108)
  %110 = load %struct.super_block*, %struct.super_block** %5, align 8
  %111 = call i32 @vfs_dq_off(%struct.super_block* %110, i32 1)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %107
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @ENOSYS, align 4
  %117 = sub nsw i32 0, %116
  %118 = icmp ne i32 %115, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i32, i32* @EBUSY, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %119, %114, %107
  br label %134

123:                                              ; preds = %101
  %124 = load %struct.super_block*, %struct.super_block** %5, align 8
  %125 = call i32 @udf_open_lvid(%struct.super_block* %124)
  %126 = load i32, i32* @MS_RDONLY, align 4
  %127 = xor i32 %126, -1
  %128 = load %struct.super_block*, %struct.super_block** %5, align 8
  %129 = getelementptr inbounds %struct.super_block, %struct.super_block* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load %struct.super_block*, %struct.super_block** %5, align 8
  %133 = call i32 @vfs_dq_quota_on_remount(%struct.super_block* %132)
  br label %134

134:                                              ; preds = %123, %122
  br label %135

135:                                              ; preds = %134, %100
  %136 = call i32 (...) @unlock_kernel()
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %135, %41
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @udf_parse_options(i8*, %struct.udf_options*, i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_2__* @udf_sb_lvidiu(%struct.udf_sb_info*) #1

declare dso_local i32 @udf_close_lvid(%struct.super_block*) #1

declare dso_local i32 @vfs_dq_off(%struct.super_block*, i32) #1

declare dso_local i32 @udf_open_lvid(%struct.super_block*) #1

declare dso_local i32 @vfs_dq_quota_on_remount(%struct.super_block*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

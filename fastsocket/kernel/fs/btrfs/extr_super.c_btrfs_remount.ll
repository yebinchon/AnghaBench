; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_super.c_btrfs_remount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_super.c_btrfs_remount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.btrfs_fs_info = type { i64, i64, i32, i32, i8*, i8*, i32, %struct.TYPE_2__*, %struct.btrfs_root* }
%struct.TYPE_2__ = type { i64 }
%struct.btrfs_root = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MS_RDONLY = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, i8*)* @btrfs_remount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_remount(%struct.super_block* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load %struct.super_block*, %struct.super_block** %5, align 8
  %19 = call %struct.btrfs_fs_info* @btrfs_sb(%struct.super_block* %18)
  store %struct.btrfs_fs_info* %19, %struct.btrfs_fs_info** %8, align 8
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %21 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %20, i32 0, i32 8
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %21, align 8
  store %struct.btrfs_root* %22, %struct.btrfs_root** %9, align 8
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %27 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %11, align 8
  %29 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %30 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %12, align 8
  %32 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %33 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %32, i32 0, i32 5
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %13, align 8
  %35 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %36 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %35, i32 0, i32 4
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %14, align 8
  %38 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %39 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %15, align 4
  %41 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %42 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %16, align 4
  %44 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @btrfs_parse_options(%struct.btrfs_root* %44, i8* %45)
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %3
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %17, align 4
  br label %133

52:                                               ; preds = %3
  %53 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %54 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %55 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @btrfs_resize_thread_pool(%struct.btrfs_fs_info* %53, i32 %56, i32 %57)
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MS_RDONLY, align 4
  %62 = and i32 %60, %61
  %63 = load %struct.super_block*, %struct.super_block** %5, align 8
  %64 = getelementptr inbounds %struct.super_block, %struct.super_block* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MS_RDONLY, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %62, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %170

70:                                               ; preds = %52
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @MS_RDONLY, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %70
  %77 = load i32, i32* @MS_RDONLY, align 4
  %78 = load %struct.super_block*, %struct.super_block** %5, align 8
  %79 = getelementptr inbounds %struct.super_block, %struct.super_block* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %83 = call i32 @btrfs_commit_super(%struct.btrfs_root* %82)
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %133

87:                                               ; preds = %76
  br label %132

88:                                               ; preds = %70
  %89 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %90 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %89, i32 0, i32 7
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i32, i32* @EACCES, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %17, align 4
  br label %133

98:                                               ; preds = %88
  %99 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %100 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @btrfs_super_log_root(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %17, align 4
  br label %133

107:                                              ; preds = %98
  %108 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %109 = call i32 @btrfs_cleanup_fs_roots(%struct.btrfs_fs_info* %108)
  store i32 %109, i32* %17, align 4
  %110 = load i32, i32* %17, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %133

113:                                              ; preds = %107
  %114 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %115 = call i32 @btrfs_recover_relocation(%struct.btrfs_root* %114)
  store i32 %115, i32* %17, align 4
  %116 = load i32, i32* %17, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %133

119:                                              ; preds = %113
  %120 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %121 = call i32 @btrfs_resume_balance_async(%struct.btrfs_fs_info* %120)
  store i32 %121, i32* %17, align 4
  %122 = load i32, i32* %17, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %133

125:                                              ; preds = %119
  %126 = load i32, i32* @MS_RDONLY, align 4
  %127 = xor i32 %126, -1
  %128 = load %struct.super_block*, %struct.super_block** %5, align 8
  %129 = getelementptr inbounds %struct.super_block, %struct.super_block* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %125, %87
  store i32 0, i32* %4, align 4
  br label %170

133:                                              ; preds = %124, %118, %112, %104, %95, %86, %49
  %134 = load %struct.super_block*, %struct.super_block** %5, align 8
  %135 = getelementptr inbounds %struct.super_block, %struct.super_block* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @MS_RDONLY, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %133
  %141 = load i32, i32* @MS_RDONLY, align 4
  %142 = load i32, i32* %10, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %140, %133
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.super_block*, %struct.super_block** %5, align 8
  %147 = getelementptr inbounds %struct.super_block, %struct.super_block* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  %148 = load i64, i64* %11, align 8
  %149 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %150 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  %151 = load i64, i64* %12, align 8
  %152 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %153 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %152, i32 0, i32 1
  store i64 %151, i64* %153, align 8
  %154 = load i8*, i8** %13, align 8
  %155 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %156 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %155, i32 0, i32 5
  store i8* %154, i8** %156, align 8
  %157 = load i8*, i8** %14, align 8
  %158 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %159 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %158, i32 0, i32 4
  store i8* %157, i8** %159, align 8
  %160 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %161 = load i32, i32* %15, align 4
  %162 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %163 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @btrfs_resize_thread_pool(%struct.btrfs_fs_info* %160, i32 %161, i32 %164)
  %166 = load i32, i32* %16, align 4
  %167 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %168 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 4
  %169 = load i32, i32* %17, align 4
  store i32 %169, i32* %4, align 4
  br label %170

170:                                              ; preds = %144, %132, %69
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(%struct.super_block*) #1

declare dso_local i32 @btrfs_parse_options(%struct.btrfs_root*, i8*) #1

declare dso_local i32 @btrfs_resize_thread_pool(%struct.btrfs_fs_info*, i32, i32) #1

declare dso_local i32 @btrfs_commit_super(%struct.btrfs_root*) #1

declare dso_local i64 @btrfs_super_log_root(i32) #1

declare dso_local i32 @btrfs_cleanup_fs_roots(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_recover_relocation(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_resume_balance_async(%struct.btrfs_fs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

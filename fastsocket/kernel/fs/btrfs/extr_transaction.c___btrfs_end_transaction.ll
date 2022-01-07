; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_transaction.c___btrfs_end_transaction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_transaction.c___btrfs_end_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.btrfs_trans_handle* }
%struct.btrfs_trans_handle = type { i64, i64, i64, %struct.btrfs_transaction*, i32*, i32* }
%struct.btrfs_transaction = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.btrfs_root = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32, %struct.btrfs_transaction*, i32, i32, i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@BTRFS_SUPER_FLAG_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@btrfs_trans_handle_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32, i32)* @__btrfs_end_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__btrfs_end_transaction(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_transaction*, align 8
  %11 = alloca %struct.btrfs_fs_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %6, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %16 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %15, i32 0, i32 3
  %17 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %16, align 8
  store %struct.btrfs_transaction* %17, %struct.btrfs_transaction** %10, align 8
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %19 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %18, i32 0, i32 0
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %19, align 8
  store %struct.btrfs_fs_info* %20, %struct.btrfs_fs_info** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %21 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %22 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %4
  %27 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %28 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %27, i32 0, i32 5
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %31 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %30, i32 0, i32 4
  store i32* %29, i32** %31, align 8
  store i32 0, i32* %5, align 4
  br label %192

32:                                               ; preds = %4
  %33 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %34 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %35 = call i32 @btrfs_trans_release_metadata(%struct.btrfs_trans_handle* %33, %struct.btrfs_root* %34)
  %36 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %37 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %36, i32 0, i32 4
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %65, %32
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %68

41:                                               ; preds = %38
  %42 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %43 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %14, align 8
  %45 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %46 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load i64, i64* %14, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %41
  %50 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %51 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %50, i32 0, i32 3
  %52 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %51, align 8
  %53 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 64
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %59 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %61 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %62 = load i64, i64* %14, align 8
  %63 = call i32 @btrfs_run_delayed_refs(%struct.btrfs_trans_handle* %60, %struct.btrfs_root* %61, i64 %62)
  br label %65

64:                                               ; preds = %49, %41
  br label %68

65:                                               ; preds = %57
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %38

68:                                               ; preds = %64, %38
  %69 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %70 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %69, i32 0, i32 0
  %71 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %70, align 8
  %72 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @sb_end_intwrite(i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %68
  %78 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %79 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %78, i32 0, i32 0
  %80 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %79, align 8
  %81 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %80, i32 0, i32 3
  %82 = call i32 @atomic_read(i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %77
  %85 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %86 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %87 = call i64 @should_end_transaction(%struct.btrfs_trans_handle* %85, %struct.btrfs_root* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %91 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %90, i32 0, i32 3
  %92 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %91, align 8
  %93 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %92, i32 0, i32 0
  store i32 1, i32* %93, align 4
  %94 = call i32 (...) @smp_wmb()
  br label %95

95:                                               ; preds = %89, %84, %77, %68
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %125

98:                                               ; preds = %95
  %99 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %10, align 8
  %100 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %125

103:                                              ; preds = %98
  %104 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %10, align 8
  %105 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %125, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %113 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %113, align 8
  %116 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %117 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %118 = call i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle* %116, %struct.btrfs_root* %117)
  store i32 %118, i32* %5, align 4
  br label %192

119:                                              ; preds = %108
  %120 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %121 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @wake_up_process(i32 %122)
  br label %124

124:                                              ; preds = %119
  br label %125

125:                                              ; preds = %124, %103, %98, %95
  %126 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %10, align 8
  %127 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %128 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %127, i32 0, i32 1
  %129 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %128, align 8
  %130 = icmp ne %struct.btrfs_transaction* %126, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @WARN_ON(i32 %131)
  %133 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %10, align 8
  %134 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %133, i32 0, i32 2
  %135 = call i32 @atomic_read(i32* %134)
  %136 = icmp slt i32 %135, 1
  %137 = zext i1 %136 to i32
  %138 = call i32 @WARN_ON(i32 %137)
  %139 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %10, align 8
  %140 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %139, i32 0, i32 2
  %141 = call i32 @atomic_dec(i32* %140)
  %142 = call i32 (...) @smp_mb()
  %143 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %10, align 8
  %144 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %143, i32 0, i32 1
  %145 = call i64 @waitqueue_active(i32* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %125
  %148 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %10, align 8
  %149 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %148, i32 0, i32 1
  %150 = call i32 @wake_up(i32* %149)
  br label %151

151:                                              ; preds = %147, %125
  %152 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %10, align 8
  %153 = call i32 @put_transaction(%struct.btrfs_transaction* %152)
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %155, align 8
  %157 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %158 = icmp eq %struct.btrfs_trans_handle* %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %151
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  store %struct.btrfs_trans_handle* null, %struct.btrfs_trans_handle** %161, align 8
  br label %162

162:                                              ; preds = %159, %151
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %167 = call i32 @btrfs_run_delayed_iputs(%struct.btrfs_root* %166)
  br label %168

168:                                              ; preds = %165, %162
  %169 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %170 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %182, label %173

173:                                              ; preds = %168
  %174 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %175 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %174, i32 0, i32 0
  %176 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %175, align 8
  %177 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @BTRFS_SUPER_FLAG_ERROR, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %173, %168
  %183 = load i32, i32* @EIO, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %13, align 4
  br label %185

185:                                              ; preds = %182, %173
  %186 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %187 = call i32 @memset(%struct.btrfs_trans_handle* %186, i32 0, i32 48)
  %188 = load i32, i32* @btrfs_trans_handle_cachep, align 4
  %189 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %190 = call i32 @kmem_cache_free(i32 %188, %struct.btrfs_trans_handle* %189)
  %191 = load i32, i32* %13, align 4
  store i32 %191, i32* %5, align 4
  br label %192

192:                                              ; preds = %185, %111, %26
  %193 = load i32, i32* %5, align 4
  ret i32 %193
}

declare dso_local i32 @btrfs_trans_release_metadata(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

declare dso_local i32 @btrfs_run_delayed_refs(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i64) #1

declare dso_local i32 @sb_end_intwrite(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @should_end_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @put_transaction(%struct.btrfs_transaction*) #1

declare dso_local i32 @btrfs_run_delayed_iputs(%struct.btrfs_root*) #1

declare dso_local i32 @memset(%struct.btrfs_trans_handle*, i32, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.btrfs_trans_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

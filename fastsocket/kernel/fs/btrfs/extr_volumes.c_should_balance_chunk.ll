; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_should_balance_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_should_balance_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_balance_control* }
%struct.btrfs_balance_control = type { i32, i32, %struct.btrfs_balance_args, %struct.btrfs_balance_args, %struct.btrfs_balance_args }
%struct.btrfs_balance_args = type { i32 }
%struct.extent_buffer = type { i32 }
%struct.btrfs_chunk = type { i32 }

@BTRFS_BLOCK_GROUP_TYPE_MASK = common dso_local global i32 0, align 4
@BTRFS_BALANCE_TYPE_MASK = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_DATA = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_SYSTEM = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_METADATA = common dso_local global i32 0, align 4
@BTRFS_BALANCE_ARGS_PROFILES = common dso_local global i32 0, align 4
@BTRFS_BALANCE_ARGS_USAGE = common dso_local global i32 0, align 4
@BTRFS_BALANCE_ARGS_DEVID = common dso_local global i32 0, align 4
@BTRFS_BALANCE_ARGS_DRANGE = common dso_local global i32 0, align 4
@BTRFS_BALANCE_ARGS_VRANGE = common dso_local global i32 0, align 4
@BTRFS_BALANCE_ARGS_SOFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, %struct.extent_buffer*, %struct.btrfs_chunk*, i32)* @should_balance_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_balance_chunk(%struct.btrfs_root* %0, %struct.extent_buffer* %1, %struct.btrfs_chunk* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.extent_buffer*, align 8
  %8 = alloca %struct.btrfs_chunk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_balance_control*, align 8
  %11 = alloca %struct.btrfs_balance_args*, align 8
  %12 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %6, align 8
  store %struct.extent_buffer* %1, %struct.extent_buffer** %7, align 8
  store %struct.btrfs_chunk* %2, %struct.btrfs_chunk** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %14 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %16, align 8
  store %struct.btrfs_balance_control* %17, %struct.btrfs_balance_control** %10, align 8
  store %struct.btrfs_balance_args* null, %struct.btrfs_balance_args** %11, align 8
  %18 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %19 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %8, align 8
  %20 = call i32 @btrfs_chunk_type(%struct.extent_buffer* %18, %struct.btrfs_chunk* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @BTRFS_BLOCK_GROUP_TYPE_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %10, align 8
  %25 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BTRFS_BALANCE_TYPE_MASK, align 4
  %28 = and i32 %26, %27
  %29 = and i32 %23, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %145

32:                                               ; preds = %4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @BTRFS_BLOCK_GROUP_DATA, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %10, align 8
  %39 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %38, i32 0, i32 4
  store %struct.btrfs_balance_args* %39, %struct.btrfs_balance_args** %11, align 8
  br label %58

40:                                               ; preds = %32
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @BTRFS_BLOCK_GROUP_SYSTEM, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %10, align 8
  %47 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %46, i32 0, i32 3
  store %struct.btrfs_balance_args* %47, %struct.btrfs_balance_args** %11, align 8
  br label %57

48:                                               ; preds = %40
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @BTRFS_BLOCK_GROUP_METADATA, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %10, align 8
  %55 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %54, i32 0, i32 2
  store %struct.btrfs_balance_args* %55, %struct.btrfs_balance_args** %11, align 8
  br label %56

56:                                               ; preds = %53, %48
  br label %57

57:                                               ; preds = %56, %45
  br label %58

58:                                               ; preds = %57, %37
  %59 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %11, align 8
  %60 = getelementptr inbounds %struct.btrfs_balance_args, %struct.btrfs_balance_args* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @BTRFS_BALANCE_ARGS_PROFILES, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %11, align 8
  %68 = call i64 @chunk_profiles_filter(i32 %66, %struct.btrfs_balance_args* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %145

71:                                               ; preds = %65, %58
  %72 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %11, align 8
  %73 = getelementptr inbounds %struct.btrfs_balance_args, %struct.btrfs_balance_args* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @BTRFS_BALANCE_ARGS_USAGE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %71
  %79 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %10, align 8
  %80 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %11, align 8
  %84 = call i64 @chunk_usage_filter(i32 %81, i32 %82, %struct.btrfs_balance_args* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  store i32 0, i32* %5, align 4
  br label %145

87:                                               ; preds = %78, %71
  %88 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %11, align 8
  %89 = getelementptr inbounds %struct.btrfs_balance_args, %struct.btrfs_balance_args* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @BTRFS_BALANCE_ARGS_DEVID, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  %95 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %96 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %8, align 8
  %97 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %11, align 8
  %98 = call i64 @chunk_devid_filter(%struct.extent_buffer* %95, %struct.btrfs_chunk* %96, %struct.btrfs_balance_args* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  store i32 0, i32* %5, align 4
  br label %145

101:                                              ; preds = %94, %87
  %102 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %11, align 8
  %103 = getelementptr inbounds %struct.btrfs_balance_args, %struct.btrfs_balance_args* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @BTRFS_BALANCE_ARGS_DRANGE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %101
  %109 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %110 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %8, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %11, align 8
  %113 = call i64 @chunk_drange_filter(%struct.extent_buffer* %109, %struct.btrfs_chunk* %110, i32 %111, %struct.btrfs_balance_args* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  store i32 0, i32* %5, align 4
  br label %145

116:                                              ; preds = %108, %101
  %117 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %11, align 8
  %118 = getelementptr inbounds %struct.btrfs_balance_args, %struct.btrfs_balance_args* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @BTRFS_BALANCE_ARGS_VRANGE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %116
  %124 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %125 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %8, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %11, align 8
  %128 = call i64 @chunk_vrange_filter(%struct.extent_buffer* %124, %struct.btrfs_chunk* %125, i32 %126, %struct.btrfs_balance_args* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  store i32 0, i32* %5, align 4
  br label %145

131:                                              ; preds = %123, %116
  %132 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %11, align 8
  %133 = getelementptr inbounds %struct.btrfs_balance_args, %struct.btrfs_balance_args* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @BTRFS_BALANCE_ARGS_SOFT, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %131
  %139 = load i32, i32* %12, align 4
  %140 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %11, align 8
  %141 = call i64 @chunk_soft_convert_filter(i32 %139, %struct.btrfs_balance_args* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store i32 0, i32* %5, align 4
  br label %145

144:                                              ; preds = %138, %131
  store i32 1, i32* %5, align 4
  br label %145

145:                                              ; preds = %144, %143, %130, %115, %100, %86, %70, %31
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @btrfs_chunk_type(%struct.extent_buffer*, %struct.btrfs_chunk*) #1

declare dso_local i64 @chunk_profiles_filter(i32, %struct.btrfs_balance_args*) #1

declare dso_local i64 @chunk_usage_filter(i32, i32, %struct.btrfs_balance_args*) #1

declare dso_local i64 @chunk_devid_filter(%struct.extent_buffer*, %struct.btrfs_chunk*, %struct.btrfs_balance_args*) #1

declare dso_local i64 @chunk_drange_filter(%struct.extent_buffer*, %struct.btrfs_chunk*, i32, %struct.btrfs_balance_args*) #1

declare dso_local i64 @chunk_vrange_filter(%struct.extent_buffer*, %struct.btrfs_chunk*, i32, %struct.btrfs_balance_args*) #1

declare dso_local i64 @chunk_soft_convert_filter(i32, %struct.btrfs_balance_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

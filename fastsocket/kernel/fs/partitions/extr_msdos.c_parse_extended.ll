; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_msdos.c_parse_extended.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_msdos.c_parse_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.block_device = type { i32 }
%struct.partition = type { i32 }

@LINUX_RAID_PARTITION = common dso_local global i64 0, align 8
@ADDPART_FLAG_RAID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parsed_partitions*, %struct.block_device*, i64, i64)* @parse_extended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_extended(%struct.parsed_partitions* %0, %struct.block_device* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.parsed_partitions*, align 8
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.partition*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %5, align 8
  store %struct.block_device* %1, %struct.block_device** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %20 = load %struct.block_device*, %struct.block_device** %6, align 8
  %21 = call i32 @bdev_logical_block_size(%struct.block_device* %20)
  %22 = sdiv i32 %21, 512
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %24 = load i64, i64* %7, align 8
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %8, align 8
  store i64 %25, i64* %13, align 8
  br label %26

26:                                               ; preds = %4, %168
  %27 = load i32, i32* %15, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %15, align 4
  %29 = icmp sgt i32 %28, 100
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %184

31:                                               ; preds = %26
  %32 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %33 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %36 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %184

40:                                               ; preds = %31
  %41 = load %struct.block_device*, %struct.block_device** %6, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i8* @read_dev_sector(%struct.block_device* %41, i64 %42, i32* %10)
  store i8* %43, i8** %11, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %184

47:                                               ; preds = %40
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 510
  %50 = call i32 @msdos_magic_present(i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %181

53:                                               ; preds = %47
  %54 = load i8*, i8** %11, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 446
  %56 = bitcast i8* %55 to %struct.partition*
  store %struct.partition* %56, %struct.partition** %9, align 8
  store i32 0, i32* %16, align 4
  br label %57

57:                                               ; preds = %138, %53
  %58 = load i32, i32* %16, align 4
  %59 = icmp slt i32 %58, 4
  br i1 %59, label %60, label %143

60:                                               ; preds = %57
  %61 = load %struct.partition*, %struct.partition** %9, align 8
  %62 = call i64 @nr_sects(%struct.partition* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load %struct.partition*, %struct.partition** %9, align 8
  %66 = call i64 @is_extended_partition(%struct.partition* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64, %60
  br label %138

69:                                               ; preds = %64
  %70 = load %struct.partition*, %struct.partition** %9, align 8
  %71 = call i64 @start_sect(%struct.partition* %70)
  %72 = load i64, i64* %14, align 8
  %73 = mul nsw i64 %71, %72
  store i64 %73, i64* %17, align 8
  %74 = load %struct.partition*, %struct.partition** %9, align 8
  %75 = call i64 @nr_sects(%struct.partition* %74)
  %76 = load i64, i64* %14, align 8
  %77 = mul nsw i64 %75, %76
  store i64 %77, i64* %18, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %17, align 8
  %80 = add nsw i64 %78, %79
  store i64 %80, i64* %19, align 8
  %81 = load i32, i32* %16, align 4
  %82 = icmp sge i32 %81, 2
  br i1 %82, label %83, label %105

83:                                               ; preds = %69
  %84 = load i64, i64* %17, align 8
  %85 = load i64, i64* %18, align 8
  %86 = add nsw i64 %84, %85
  %87 = load i64, i64* %13, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %138

90:                                               ; preds = %83
  %91 = load i64, i64* %19, align 8
  %92 = load i64, i64* %7, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %138

95:                                               ; preds = %90
  %96 = load i64, i64* %19, align 8
  %97 = load i64, i64* %18, align 8
  %98 = add nsw i64 %96, %97
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* %8, align 8
  %101 = add nsw i64 %99, %100
  %102 = icmp sgt i64 %98, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %138

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104, %69
  %106 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %107 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %108 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %19, align 8
  %111 = load i64, i64* %18, align 8
  %112 = call i32 @put_partition(%struct.parsed_partitions* %106, i64 %109, i64 %110, i64 %111)
  %113 = load %struct.partition*, %struct.partition** %9, align 8
  %114 = call i64 @SYS_IND(%struct.partition* %113)
  %115 = load i64, i64* @LINUX_RAID_PARTITION, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %105
  %118 = load i32, i32* @ADDPART_FLAG_RAID, align 4
  %119 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %120 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %119, i32 0, i32 2
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %123 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  store i32 %118, i32* %126, align 4
  br label %127

127:                                              ; preds = %117, %105
  store i32 0, i32* %15, align 4
  %128 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %129 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %129, align 8
  %132 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %133 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %131, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %127
  br label %181

137:                                              ; preds = %127
  br label %138

138:                                              ; preds = %137, %103, %94, %89, %68
  %139 = load i32, i32* %16, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %16, align 4
  %141 = load %struct.partition*, %struct.partition** %9, align 8
  %142 = getelementptr inbounds %struct.partition, %struct.partition* %141, i32 1
  store %struct.partition* %142, %struct.partition** %9, align 8
  br label %57

143:                                              ; preds = %57
  %144 = load %struct.partition*, %struct.partition** %9, align 8
  %145 = getelementptr inbounds %struct.partition, %struct.partition* %144, i64 -4
  store %struct.partition* %145, %struct.partition** %9, align 8
  store i32 0, i32* %16, align 4
  br label %146

146:                                              ; preds = %159, %143
  %147 = load i32, i32* %16, align 4
  %148 = icmp slt i32 %147, 4
  br i1 %148, label %149, label %164

149:                                              ; preds = %146
  %150 = load %struct.partition*, %struct.partition** %9, align 8
  %151 = call i64 @nr_sects(%struct.partition* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = load %struct.partition*, %struct.partition** %9, align 8
  %155 = call i64 @is_extended_partition(%struct.partition* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  br label %164

158:                                              ; preds = %153, %149
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %16, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %16, align 4
  %162 = load %struct.partition*, %struct.partition** %9, align 8
  %163 = getelementptr inbounds %struct.partition, %struct.partition* %162, i32 1
  store %struct.partition* %163, %struct.partition** %9, align 8
  br label %146

164:                                              ; preds = %157, %146
  %165 = load i32, i32* %16, align 4
  %166 = icmp eq i32 %165, 4
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  br label %181

168:                                              ; preds = %164
  %169 = load i64, i64* %7, align 8
  %170 = load %struct.partition*, %struct.partition** %9, align 8
  %171 = call i64 @start_sect(%struct.partition* %170)
  %172 = load i64, i64* %14, align 8
  %173 = mul nsw i64 %171, %172
  %174 = add nsw i64 %169, %173
  store i64 %174, i64* %12, align 8
  %175 = load %struct.partition*, %struct.partition** %9, align 8
  %176 = call i64 @nr_sects(%struct.partition* %175)
  %177 = load i64, i64* %14, align 8
  %178 = mul nsw i64 %176, %177
  store i64 %178, i64* %13, align 8
  %179 = load i32, i32* %10, align 4
  %180 = call i32 @put_dev_sector(i32 %179)
  br label %26

181:                                              ; preds = %167, %136, %52
  %182 = load i32, i32* %10, align 4
  %183 = call i32 @put_dev_sector(i32 %182)
  br label %184

184:                                              ; preds = %181, %46, %39, %30
  ret void
}

declare dso_local i32 @bdev_logical_block_size(%struct.block_device*) #1

declare dso_local i8* @read_dev_sector(%struct.block_device*, i64, i32*) #1

declare dso_local i32 @msdos_magic_present(i8*) #1

declare dso_local i64 @nr_sects(%struct.partition*) #1

declare dso_local i64 @is_extended_partition(%struct.partition*) #1

declare dso_local i64 @start_sect(%struct.partition*) #1

declare dso_local i32 @put_partition(%struct.parsed_partitions*, i64, i64, i64) #1

declare dso_local i64 @SYS_IND(%struct.partition*) #1

declare dso_local i32 @put_dev_sector(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

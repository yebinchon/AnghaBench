; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_efi.c_is_gpt_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_efi.c_is_gpt_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GPT_HEADER_SIGNATURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"GUID Partition Table Header signature is wrong:%lld != %lld\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"GUID Partition Table Header size is wrong: %u > %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"GUID Partition Table Header CRC is wrong: %x != %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"GPT my_lba incorrect: %lld != %lld\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"GPT: first_usable_lba incorrect: %lld > %lld\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"GPT: last_usable_lba incorrect: %lld > %lld\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"GUID Partitition Entry Size check failed.\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"GUID Partitition Entry Array CRC check failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i64, %struct.TYPE_9__**, %struct.TYPE_9__**)* @is_gpt_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_gpt_valid(%struct.block_device* %0, i64 %1, %struct.TYPE_9__** %2, %struct.TYPE_9__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__**, align 8
  %9 = alloca %struct.TYPE_9__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.block_device* %0, %struct.block_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_9__** %2, %struct.TYPE_9__*** %8, align 8
  store %struct.TYPE_9__** %3, %struct.TYPE_9__*** %9, align 8
  %13 = load %struct.block_device*, %struct.block_device** %6, align 8
  %14 = icmp ne %struct.block_device* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %17 = icmp ne %struct.TYPE_9__** %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %20 = icmp ne %struct.TYPE_9__** %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %15, %4
  store i32 0, i32* %5, align 4
  br label %197

22:                                               ; preds = %18
  %23 = load %struct.block_device*, %struct.block_device** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call %struct.TYPE_9__* @alloc_read_gpt_header(%struct.block_device* %23, i64 %24)
  %26 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %26, align 8
  %27 = icmp ne %struct.TYPE_9__* %25, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %197

29:                                               ; preds = %22
  %30 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @le64_to_cpu(i32 %33)
  %35 = load i64, i64* @GPT_HEADER_SIGNATURE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @le64_to_cpu(i32 %41)
  %43 = load i64, i64* @GPT_HEADER_SIGNATURE, align 8
  %44 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %42, i64 %43)
  br label %192

45:                                               ; preds = %29
  %46 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le32_to_cpu(i32 %49)
  %51 = load %struct.block_device*, %struct.block_device** %6, align 8
  %52 = call i32 @bdev_logical_block_size(%struct.block_device* %51)
  %53 = icmp sgt i32 %50, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %45
  %55 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le32_to_cpu(i32 %58)
  %60 = load %struct.block_device*, %struct.block_device** %6, align 8
  %61 = call i32 @bdev_logical_block_size(%struct.block_device* %60)
  %62 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %61)
  br label %192

63:                                               ; preds = %45
  %64 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le32_to_cpu(i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 6
  store i32 0, i32* %71, align 4
  %72 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = bitcast %struct.TYPE_9__* %73 to i8*
  %75 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le32_to_cpu(i32 %78)
  %80 = call i32 @efi_crc32(i8* %74, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %63
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %86)
  br label %192

88:                                               ; preds = %63
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @cpu_to_le32(i32 %89)
  %91 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 6
  store i32 %90, i32* %93, align 4
  %94 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @le64_to_cpu(i32 %97)
  %99 = load i64, i64* %7, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %88
  %102 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @le64_to_cpu(i32 %105)
  %107 = load i64, i64* %7, align 8
  %108 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %106, i64 %107)
  br label %192

109:                                              ; preds = %88
  %110 = load %struct.block_device*, %struct.block_device** %6, align 8
  %111 = call i64 @last_lba(%struct.block_device* %110)
  store i64 %111, i64* %12, align 8
  %112 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @le64_to_cpu(i32 %115)
  %117 = load i64, i64* %12, align 8
  %118 = icmp sgt i64 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %109
  %120 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @le64_to_cpu(i32 %123)
  %125 = load i64, i64* %12, align 8
  %126 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i64 %124, i64 %125)
  br label %192

127:                                              ; preds = %109
  %128 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @le64_to_cpu(i32 %131)
  %133 = load i64, i64* %12, align 8
  %134 = icmp sgt i64 %132, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %127
  %136 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @le64_to_cpu(i32 %139)
  %141 = load i64, i64* %12, align 8
  %142 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i64 %140, i64 %141)
  br label %192

143:                                              ; preds = %127
  %144 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @le32_to_cpu(i32 %147)
  %149 = sext i32 %148 to i64
  %150 = icmp ne i64 %149, 36
  br i1 %150, label %151, label %153

151:                                              ; preds = %143
  %152 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  br label %192

153:                                              ; preds = %143
  %154 = load %struct.block_device*, %struct.block_device** %6, align 8
  %155 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %155, align 8
  %157 = call %struct.TYPE_9__* @alloc_read_gpt_entries(%struct.block_device* %154, %struct.TYPE_9__* %156)
  %158 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  store %struct.TYPE_9__* %157, %struct.TYPE_9__** %158, align 8
  %159 = icmp ne %struct.TYPE_9__* %157, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %153
  br label %192

161:                                              ; preds = %153
  %162 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %162, align 8
  %164 = bitcast %struct.TYPE_9__* %163 to i8*
  %165 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @le32_to_cpu(i32 %168)
  %170 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @le32_to_cpu(i32 %173)
  %175 = mul nsw i32 %169, %174
  %176 = call i32 @efi_crc32(i8* %164, i32 %175)
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %10, align 4
  %178 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @le32_to_cpu(i32 %181)
  %183 = icmp ne i32 %177, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %161
  %185 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %187

186:                                              ; preds = %161
  store i32 1, i32* %5, align 4
  br label %197

187:                                              ; preds = %184
  %188 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = call i32 @kfree(%struct.TYPE_9__* %189)
  %191 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %191, align 8
  br label %192

192:                                              ; preds = %187, %160, %151, %135, %119, %101, %84, %54, %37
  %193 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %193, align 8
  %195 = call i32 @kfree(%struct.TYPE_9__* %194)
  %196 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %196, align 8
  store i32 0, i32* %5, align 4
  br label %197

197:                                              ; preds = %192, %186, %28, %21
  %198 = load i32, i32* %5, align 4
  ret i32 %198
}

declare dso_local %struct.TYPE_9__* @alloc_read_gpt_header(%struct.block_device*, i64) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @bdev_logical_block_size(%struct.block_device*) #1

declare dso_local i32 @efi_crc32(i8*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @last_lba(%struct.block_device*) #1

declare dso_local %struct.TYPE_9__* @alloc_read_gpt_entries(%struct.block_device*, %struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

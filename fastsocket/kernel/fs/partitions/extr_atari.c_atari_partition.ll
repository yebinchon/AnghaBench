; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_atari.c_atari_partition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_atari.c_atari_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i32 }
%struct.block_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rootsector = type { %struct.partition_info*, %struct.partition_info* }
%struct.partition_info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c" AHDI\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"XGM\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" XGM<\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c" block %ld read failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"\0AFirst sub-partition in extended partition is not valid!\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"\0AID of extended partition is not XGM!\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"\0AMaximum number of partitions reached!\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c" >\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atari_partition(%struct.parsed_partitions* %0, %struct.block_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.parsed_partitions*, align 8
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rootsector*, align 8
  %8 = alloca %struct.partition_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rootsector*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %4, align 8
  store %struct.block_device* %1, %struct.block_device** %5, align 8
  %15 = load %struct.block_device*, %struct.block_device** %5, align 8
  %16 = call i64 @read_dev_sector(%struct.block_device* %15, i32 0, i32* %6)
  %17 = inttoptr i64 %16 to %struct.rootsector*
  store %struct.rootsector* %17, %struct.rootsector** %7, align 8
  %18 = load %struct.rootsector*, %struct.rootsector** %7, align 8
  %19 = icmp ne %struct.rootsector* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %215

21:                                               ; preds = %2
  %22 = load %struct.block_device*, %struct.block_device** %5, align 8
  %23 = getelementptr inbounds %struct.block_device, %struct.block_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 9
  store i32 %27, i32* %10, align 4
  %28 = load %struct.rootsector*, %struct.rootsector** %7, align 8
  %29 = getelementptr inbounds %struct.rootsector, %struct.rootsector* %28, i32 0, i32 1
  %30 = load %struct.partition_info*, %struct.partition_info** %29, align 8
  %31 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %30, i64 0
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @VALID_PARTITION(%struct.partition_info* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %62, label %35

35:                                               ; preds = %21
  %36 = load %struct.rootsector*, %struct.rootsector** %7, align 8
  %37 = getelementptr inbounds %struct.rootsector, %struct.rootsector* %36, i32 0, i32 1
  %38 = load %struct.partition_info*, %struct.partition_info** %37, align 8
  %39 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %38, i64 1
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @VALID_PARTITION(%struct.partition_info* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %62, label %43

43:                                               ; preds = %35
  %44 = load %struct.rootsector*, %struct.rootsector** %7, align 8
  %45 = getelementptr inbounds %struct.rootsector, %struct.rootsector* %44, i32 0, i32 1
  %46 = load %struct.partition_info*, %struct.partition_info** %45, align 8
  %47 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %46, i64 2
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @VALID_PARTITION(%struct.partition_info* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %43
  %52 = load %struct.rootsector*, %struct.rootsector** %7, align 8
  %53 = getelementptr inbounds %struct.rootsector, %struct.rootsector* %52, i32 0, i32 1
  %54 = load %struct.partition_info*, %struct.partition_info** %53, align 8
  %55 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %54, i64 3
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @VALID_PARTITION(%struct.partition_info* %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @put_dev_sector(i32 %60)
  store i32 0, i32* %3, align 4
  br label %215

62:                                               ; preds = %51, %43, %35, %21
  %63 = load %struct.rootsector*, %struct.rootsector** %7, align 8
  %64 = getelementptr inbounds %struct.rootsector, %struct.rootsector* %63, i32 0, i32 1
  %65 = load %struct.partition_info*, %struct.partition_info** %64, align 8
  %66 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %65, i64 0
  store %struct.partition_info* %66, %struct.partition_info** %8, align 8
  %67 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %68

68:                                               ; preds = %206, %62
  %69 = load %struct.partition_info*, %struct.partition_info** %8, align 8
  %70 = load %struct.rootsector*, %struct.rootsector** %7, align 8
  %71 = getelementptr inbounds %struct.rootsector, %struct.rootsector* %70, i32 0, i32 1
  %72 = load %struct.partition_info*, %struct.partition_info** %71, align 8
  %73 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %72, i64 4
  %74 = icmp ult %struct.partition_info* %69, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %78 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br label %81

81:                                               ; preds = %75, %68
  %82 = phi i1 [ false, %68 ], [ %80, %75 ]
  br i1 %82, label %83, label %211

83:                                               ; preds = %81
  %84 = load %struct.partition_info*, %struct.partition_info** %8, align 8
  %85 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 1
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  br label %206

90:                                               ; preds = %83
  %91 = load %struct.partition_info*, %struct.partition_info** %8, align 8
  %92 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @memcmp(i32 %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.partition_info*, %struct.partition_info** %8, align 8
  %100 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @be32_to_cpu(i32 %101)
  %103 = load %struct.partition_info*, %struct.partition_info** %8, align 8
  %104 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @be32_to_cpu(i32 %105)
  %107 = call i32 @put_partition(%struct.parsed_partitions* %97, i32 %98, i32 %102, i32 %106)
  br label %206

108:                                              ; preds = %90
  %109 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %110 = load %struct.partition_info*, %struct.partition_info** %8, align 8
  %111 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @be32_to_cpu(i32 %112)
  store i32 %113, i32* %9, align 4
  store i32 %113, i32* %14, align 4
  br label %114

114:                                              ; preds = %108, %203
  %115 = load %struct.block_device*, %struct.block_device** %5, align 8
  %116 = load i32, i32* %14, align 4
  %117 = call i64 @read_dev_sector(%struct.block_device* %115, i32 %116, i32* %13)
  %118 = inttoptr i64 %117 to %struct.rootsector*
  store %struct.rootsector* %118, %struct.rootsector** %12, align 8
  %119 = load %struct.rootsector*, %struct.rootsector** %12, align 8
  %120 = icmp ne %struct.rootsector* %119, null
  br i1 %120, label %126, label %121

121:                                              ; preds = %114
  %122 = load i32, i32* %14, align 4
  %123 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @put_dev_sector(i32 %124)
  store i32 -1, i32* %3, align 4
  br label %215

126:                                              ; preds = %114
  %127 = load %struct.rootsector*, %struct.rootsector** %12, align 8
  %128 = getelementptr inbounds %struct.rootsector, %struct.rootsector* %127, i32 0, i32 1
  %129 = load %struct.partition_info*, %struct.partition_info** %128, align 8
  %130 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %129, i64 0
  %131 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 1
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %126
  %136 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @put_dev_sector(i32 %137)
  br label %204

139:                                              ; preds = %126
  %140 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %14, align 4
  %143 = load %struct.rootsector*, %struct.rootsector** %12, align 8
  %144 = getelementptr inbounds %struct.rootsector, %struct.rootsector* %143, i32 0, i32 1
  %145 = load %struct.partition_info*, %struct.partition_info** %144, align 8
  %146 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %145, i64 0
  %147 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @be32_to_cpu(i32 %148)
  %150 = add nsw i32 %142, %149
  %151 = load %struct.rootsector*, %struct.rootsector** %12, align 8
  %152 = getelementptr inbounds %struct.rootsector, %struct.rootsector* %151, i32 0, i32 1
  %153 = load %struct.partition_info*, %struct.partition_info** %152, align 8
  %154 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %153, i64 0
  %155 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @be32_to_cpu(i32 %156)
  %158 = call i32 @put_partition(%struct.parsed_partitions* %140, i32 %141, i32 %150, i32 %157)
  %159 = load %struct.rootsector*, %struct.rootsector** %12, align 8
  %160 = getelementptr inbounds %struct.rootsector, %struct.rootsector* %159, i32 0, i32 1
  %161 = load %struct.partition_info*, %struct.partition_info** %160, align 8
  %162 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %161, i64 1
  %163 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, 1
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %139
  %168 = load i32, i32* %13, align 4
  %169 = call i32 @put_dev_sector(i32 %168)
  br label %204

170:                                              ; preds = %139
  %171 = load %struct.rootsector*, %struct.rootsector** %12, align 8
  %172 = getelementptr inbounds %struct.rootsector, %struct.rootsector* %171, i32 0, i32 1
  %173 = load %struct.partition_info*, %struct.partition_info** %172, align 8
  %174 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %173, i64 1
  %175 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @memcmp(i32 %176, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %170
  %180 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %181 = load i32, i32* %13, align 4
  %182 = call i32 @put_dev_sector(i32 %181)
  br label %204

183:                                              ; preds = %170
  %184 = load %struct.rootsector*, %struct.rootsector** %12, align 8
  %185 = getelementptr inbounds %struct.rootsector, %struct.rootsector* %184, i32 0, i32 1
  %186 = load %struct.partition_info*, %struct.partition_info** %185, align 8
  %187 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %186, i64 1
  %188 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @be32_to_cpu(i32 %189)
  %191 = load i32, i32* %9, align 4
  %192 = add nsw i32 %190, %191
  store i32 %192, i32* %14, align 4
  %193 = load i32, i32* %13, align 4
  %194 = call i32 @put_dev_sector(i32 %193)
  %195 = load i32, i32* %11, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %11, align 4
  %197 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %198 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %196, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %183
  %202 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %204

203:                                              ; preds = %183
  br label %114

204:                                              ; preds = %201, %179, %167, %135
  %205 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %206

206:                                              ; preds = %204, %96, %89
  %207 = load i32, i32* %11, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %11, align 4
  %209 = load %struct.partition_info*, %struct.partition_info** %8, align 8
  %210 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %209, i32 1
  store %struct.partition_info* %210, %struct.partition_info** %8, align 8
  br label %68

211:                                              ; preds = %81
  %212 = load i32, i32* %6, align 4
  %213 = call i32 @put_dev_sector(i32 %212)
  %214 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %215

215:                                              ; preds = %211, %121, %59, %20
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local i64 @read_dev_sector(%struct.block_device*, i32, i32*) #1

declare dso_local i32 @VALID_PARTITION(%struct.partition_info*, i32) #1

declare dso_local i32 @put_dev_sector(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @put_partition(%struct.parsed_partitions*, i32, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

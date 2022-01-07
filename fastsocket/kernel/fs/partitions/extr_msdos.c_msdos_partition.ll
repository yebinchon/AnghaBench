; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_msdos.c_msdos_partition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_msdos.c_msdos_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8, i32 (%struct.parsed_partitions*, %struct.block_device*, i32, i32, i32)* }
%struct.parsed_partitions = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.block_device = type { i32 }
%struct.partition = type { i32 }
%struct.fat_boot_sector = type { i32, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c" [AIX]\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" <\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" >\00", align 1
@LINUX_RAID_PARTITION = common dso_local global i8 0, align 1
@DM6_PARTITION = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"[DM]\00", align 1
@EZD_PARTITION = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"[EZD]\00", align 1
@subtypes = common dso_local global %struct.TYPE_4__* null, align 8
@EFI_PMBR_OSTYPE_EFI_GPT = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msdos_partition(%struct.parsed_partitions* %0, %struct.block_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.parsed_partitions*, align 8
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.partition*, align 8
  %10 = alloca %struct.fat_boot_sector*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %4, align 8
  store %struct.block_device* %1, %struct.block_device** %5, align 8
  %17 = load %struct.block_device*, %struct.block_device** %5, align 8
  %18 = call i32 @bdev_logical_block_size(%struct.block_device* %17)
  %19 = sdiv i32 %18, 512
  store i32 %19, i32* %6, align 4
  %20 = load %struct.block_device*, %struct.block_device** %5, align 8
  %21 = call i8* @read_dev_sector(%struct.block_device* %20, i32 0, i32* %7)
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %257

25:                                               ; preds = %2
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 510
  %28 = call i32 @msdos_magic_present(i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @put_dev_sector(i32 %31)
  store i32 0, i32* %3, align 4
  br label %257

33:                                               ; preds = %25
  %34 = load i8*, i8** %8, align 8
  %35 = load %struct.block_device*, %struct.block_device** %5, align 8
  %36 = call i64 @aix_magic_present(i8* %34, %struct.block_device* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @put_dev_sector(i32 %39)
  %41 = call i32 @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %257

42:                                               ; preds = %33
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 446
  %45 = bitcast i8* %44 to %struct.partition*
  store %struct.partition* %45, %struct.partition** %9, align 8
  store i32 1, i32* %11, align 4
  br label %46

46:                                               ; preds = %88, %42
  %47 = load i32, i32* %11, align 4
  %48 = icmp sle i32 %47, 4
  br i1 %48, label %49, label %93

49:                                               ; preds = %46
  %50 = load %struct.partition*, %struct.partition** %9, align 8
  %51 = getelementptr inbounds %struct.partition, %struct.partition* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %87

54:                                               ; preds = %49
  %55 = load %struct.partition*, %struct.partition** %9, align 8
  %56 = getelementptr inbounds %struct.partition, %struct.partition* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 128
  br i1 %58, label %59, label %87

59:                                               ; preds = %54
  %60 = load i8*, i8** %8, align 8
  %61 = bitcast i8* %60 to %struct.fat_boot_sector*
  store %struct.fat_boot_sector* %61, %struct.fat_boot_sector** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %84

64:                                               ; preds = %59
  %65 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %10, align 8
  %66 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %64
  %70 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %10, align 8
  %71 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %10, align 8
  %76 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @fat_valid_media(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = call i32 @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @put_dev_sector(i32 %82)
  store i32 1, i32* %3, align 4
  br label %257

84:                                               ; preds = %74, %69, %64, %59
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @put_dev_sector(i32 %85)
  store i32 0, i32* %3, align 4
  br label %257

87:                                               ; preds = %54, %49
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  %91 = load %struct.partition*, %struct.partition** %9, align 8
  %92 = getelementptr inbounds %struct.partition, %struct.partition* %91, i32 1
  store %struct.partition* %92, %struct.partition** %9, align 8
  br label %46

93:                                               ; preds = %46
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 446
  %96 = bitcast i8* %95 to %struct.partition*
  store %struct.partition* %96, %struct.partition** %9, align 8
  %97 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %98 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %97, i32 0, i32 0
  store i32 5, i32* %98, align 8
  store i32 1, i32* %11, align 4
  br label %99

99:                                               ; preds = %175, %93
  %100 = load i32, i32* %11, align 4
  %101 = icmp sle i32 %100, 4
  br i1 %101, label %102, label %180

102:                                              ; preds = %99
  %103 = load %struct.partition*, %struct.partition** %9, align 8
  %104 = call i32 @start_sect(%struct.partition* %103)
  %105 = load i32, i32* %6, align 4
  %106 = mul nsw i32 %104, %105
  store i32 %106, i32* %12, align 4
  %107 = load %struct.partition*, %struct.partition** %9, align 8
  %108 = call i32 @nr_sects(%struct.partition* %107)
  %109 = load i32, i32* %6, align 4
  %110 = mul nsw i32 %108, %109
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %102
  br label %175

114:                                              ; preds = %102
  %115 = load %struct.partition*, %struct.partition** %9, align 8
  %116 = call i64 @is_extended_partition(%struct.partition* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %136

118:                                              ; preds = %114
  store i32 2, i32* %14, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @max(i32 %120, i32 %121)
  %123 = call i32 @min(i32 %119, i32 %122)
  store i32 %123, i32* %14, align 4
  %124 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @put_partition(%struct.parsed_partitions* %124, i32 %125, i32 %126, i32 %127)
  %129 = call i32 @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %130 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %131 = load %struct.block_device*, %struct.block_device** %5, align 8
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @parse_extended(%struct.parsed_partitions* %130, %struct.block_device* %131, i32 %132, i32 %133)
  %135 = call i32 @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %175

136:                                              ; preds = %114
  %137 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %13, align 4
  %141 = call i32 @put_partition(%struct.parsed_partitions* %137, i32 %138, i32 %139, i32 %140)
  %142 = load %struct.partition*, %struct.partition** %9, align 8
  %143 = call zeroext i8 @SYS_IND(%struct.partition* %142)
  %144 = zext i8 %143 to i32
  %145 = load i8, i8* @LINUX_RAID_PARTITION, align 1
  %146 = zext i8 %145 to i32
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %136
  %149 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %150 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %149, i32 0, i32 1
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  store i32 1, i32* %155, align 4
  br label %156

156:                                              ; preds = %148, %136
  %157 = load %struct.partition*, %struct.partition** %9, align 8
  %158 = call zeroext i8 @SYS_IND(%struct.partition* %157)
  %159 = zext i8 %158 to i32
  %160 = load i8, i8* @DM6_PARTITION, align 1
  %161 = zext i8 %160 to i32
  %162 = icmp eq i32 %159, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %156
  %164 = call i32 @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %156
  %166 = load %struct.partition*, %struct.partition** %9, align 8
  %167 = call zeroext i8 @SYS_IND(%struct.partition* %166)
  %168 = zext i8 %167 to i32
  %169 = load i8, i8* @EZD_PARTITION, align 1
  %170 = zext i8 %169 to i32
  %171 = icmp eq i32 %168, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %165
  %173 = call i32 @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %165
  br label %175

175:                                              ; preds = %174, %118, %113
  %176 = load i32, i32* %11, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %11, align 4
  %178 = load %struct.partition*, %struct.partition** %9, align 8
  %179 = getelementptr inbounds %struct.partition, %struct.partition* %178, i32 1
  store %struct.partition* %179, %struct.partition** %9, align 8
  br label %99

180:                                              ; preds = %99
  %181 = call i32 @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %182 = load i8*, i8** %8, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 446
  %184 = bitcast i8* %183 to %struct.partition*
  store %struct.partition* %184, %struct.partition** %9, align 8
  store i32 1, i32* %11, align 4
  br label %185

185:                                              ; preds = %249, %180
  %186 = load i32, i32* %11, align 4
  %187 = icmp sle i32 %186, 4
  br i1 %187, label %188, label %254

188:                                              ; preds = %185
  %189 = load %struct.partition*, %struct.partition** %9, align 8
  %190 = call zeroext i8 @SYS_IND(%struct.partition* %189)
  store i8 %190, i8* %15, align 1
  %191 = load %struct.partition*, %struct.partition** %9, align 8
  %192 = call i32 @nr_sects(%struct.partition* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %188
  br label %249

195:                                              ; preds = %188
  store i32 0, i32* %16, align 4
  br label %196

196:                                              ; preds = %218, %195
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** @subtypes, align 8
  %198 = load i32, i32* %16, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 1
  %202 = load i32 (%struct.parsed_partitions*, %struct.block_device*, i32, i32, i32)*, i32 (%struct.parsed_partitions*, %struct.block_device*, i32, i32, i32)** %201, align 8
  %203 = icmp ne i32 (%struct.parsed_partitions*, %struct.block_device*, i32, i32, i32)* %202, null
  br i1 %203, label %204, label %215

204:                                              ; preds = %196
  %205 = load i8, i8* %15, align 1
  %206 = zext i8 %205 to i32
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** @subtypes, align 8
  %208 = load i32, i32* %16, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = load i8, i8* %211, align 8
  %213 = zext i8 %212 to i32
  %214 = icmp ne i32 %206, %213
  br label %215

215:                                              ; preds = %204, %196
  %216 = phi i1 [ false, %196 ], [ %214, %204 ]
  br i1 %216, label %217, label %221

217:                                              ; preds = %215
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %16, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %16, align 4
  br label %196

221:                                              ; preds = %215
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** @subtypes, align 8
  %223 = load i32, i32* %16, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 1
  %227 = load i32 (%struct.parsed_partitions*, %struct.block_device*, i32, i32, i32)*, i32 (%struct.parsed_partitions*, %struct.block_device*, i32, i32, i32)** %226, align 8
  %228 = icmp ne i32 (%struct.parsed_partitions*, %struct.block_device*, i32, i32, i32)* %227, null
  br i1 %228, label %230, label %229

229:                                              ; preds = %221
  br label %249

230:                                              ; preds = %221
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** @subtypes, align 8
  %232 = load i32, i32* %16, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 1
  %236 = load i32 (%struct.parsed_partitions*, %struct.block_device*, i32, i32, i32)*, i32 (%struct.parsed_partitions*, %struct.block_device*, i32, i32, i32)** %235, align 8
  %237 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %238 = load %struct.block_device*, %struct.block_device** %5, align 8
  %239 = load %struct.partition*, %struct.partition** %9, align 8
  %240 = call i32 @start_sect(%struct.partition* %239)
  %241 = load i32, i32* %6, align 4
  %242 = mul nsw i32 %240, %241
  %243 = load %struct.partition*, %struct.partition** %9, align 8
  %244 = call i32 @nr_sects(%struct.partition* %243)
  %245 = load i32, i32* %6, align 4
  %246 = mul nsw i32 %244, %245
  %247 = load i32, i32* %11, align 4
  %248 = call i32 %236(%struct.parsed_partitions* %237, %struct.block_device* %238, i32 %242, i32 %246, i32 %247)
  br label %249

249:                                              ; preds = %230, %229, %194
  %250 = load i32, i32* %11, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %11, align 4
  %252 = load %struct.partition*, %struct.partition** %9, align 8
  %253 = getelementptr inbounds %struct.partition, %struct.partition* %252, i32 1
  store %struct.partition* %253, %struct.partition** %9, align 8
  br label %185

254:                                              ; preds = %185
  %255 = load i32, i32* %7, align 4
  %256 = call i32 @put_dev_sector(i32 %255)
  store i32 1, i32* %3, align 4
  br label %257

257:                                              ; preds = %254, %84, %80, %38, %30, %24
  %258 = load i32, i32* %3, align 4
  ret i32 %258
}

declare dso_local i32 @bdev_logical_block_size(%struct.block_device*) #1

declare dso_local i8* @read_dev_sector(%struct.block_device*, i32, i32*) #1

declare dso_local i32 @msdos_magic_present(i8*) #1

declare dso_local i32 @put_dev_sector(i32) #1

declare dso_local i64 @aix_magic_present(i8*, %struct.block_device*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i64 @fat_valid_media(i32) #1

declare dso_local i32 @start_sect(%struct.partition*) #1

declare dso_local i32 @nr_sects(%struct.partition*) #1

declare dso_local i64 @is_extended_partition(%struct.partition*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @put_partition(%struct.parsed_partitions*, i32, i32, i32) #1

declare dso_local i32 @parse_extended(%struct.parsed_partitions*, %struct.block_device*, i32, i32) #1

declare dso_local zeroext i8 @SYS_IND(%struct.partition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

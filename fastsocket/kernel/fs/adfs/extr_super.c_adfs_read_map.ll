; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_super.c_adfs_read_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_super.c_adfs_read_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adfs_discmap = type { i32, i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.adfs_discrecord = type { i32, i32, i32, i32, i32 }
%struct.adfs_sb_info = type { i32, i32, i32, i32 }

@ADFS_DR_SIZE_BITS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"not enough memory\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"unable to read map\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"map corrupted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.adfs_discmap* (%struct.super_block*, %struct.adfs_discrecord*)* @adfs_read_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.adfs_discmap* @adfs_read_map(%struct.super_block* %0, %struct.adfs_discrecord* %1) #0 {
  %3 = alloca %struct.adfs_discmap*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.adfs_discrecord*, align 8
  %6 = alloca %struct.adfs_discmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.adfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.adfs_discrecord* %1, %struct.adfs_discrecord** %5, align 8
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = call %struct.adfs_sb_info* @ADFS_SB(%struct.super_block* %13)
  store %struct.adfs_sb_info* %14, %struct.adfs_sb_info** %12, align 8
  %15 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %12, align 8
  %16 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %5, align 8
  %19 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 8, %20
  %22 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %5, align 8
  %23 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le16_to_cpu(i32 %24)
  %26 = sub nsw i32 %21, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = lshr i32 %27, 1
  %29 = load i32, i32* %8, align 4
  %30 = mul i32 %28, %29
  %31 = load i32, i32* %9, align 4
  %32 = icmp ugt i32 %31, 1
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @ADFS_DR_SIZE_BITS, align 4
  br label %36

35:                                               ; preds = %2
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ]
  %38 = sub i32 %30, %37
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %12, align 8
  %41 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @signed_asl(i32 %39, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %12, align 8
  %46 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  %49 = udiv i32 %44, %48
  %50 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %12, align 8
  %51 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = mul i64 %53, 16
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.adfs_discmap* @kmalloc(i32 %55, i32 %56)
  store %struct.adfs_discmap* %57, %struct.adfs_discmap** %6, align 8
  %58 = load %struct.adfs_discmap*, %struct.adfs_discmap** %6, align 8
  %59 = icmp eq %struct.adfs_discmap* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %36
  %61 = load %struct.super_block*, %struct.super_block** %4, align 8
  %62 = call i32 @adfs_error(%struct.super_block* %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store %struct.adfs_discmap* null, %struct.adfs_discmap** %3, align 8
  br label %178

63:                                               ; preds = %36
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %109, %63
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %114

68:                                               ; preds = %64
  %69 = load %struct.adfs_discmap*, %struct.adfs_discmap** %6, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.adfs_discmap, %struct.adfs_discmap* %69, i64 %71
  %73 = getelementptr inbounds %struct.adfs_discmap, %struct.adfs_discmap* %72, i32 0, i32 0
  store i32 0, i32* %73, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.adfs_discmap*, %struct.adfs_discmap** %6, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.adfs_discmap, %struct.adfs_discmap* %75, i64 %77
  %79 = getelementptr inbounds %struct.adfs_discmap, %struct.adfs_discmap* %78, i32 0, i32 1
  store i32 %74, i32* %79, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %8, align 4
  %82 = mul i32 %80, %81
  %83 = load i32, i32* @ADFS_DR_SIZE_BITS, align 4
  %84 = sub i32 %82, %83
  %85 = load %struct.adfs_discmap*, %struct.adfs_discmap** %6, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.adfs_discmap, %struct.adfs_discmap* %85, i64 %87
  %89 = getelementptr inbounds %struct.adfs_discmap, %struct.adfs_discmap* %88, i32 0, i32 2
  store i32 %84, i32* %89, align 4
  %90 = load %struct.super_block*, %struct.super_block** %4, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @sb_bread(%struct.super_block* %90, i32 %91)
  %93 = load %struct.adfs_discmap*, %struct.adfs_discmap** %6, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.adfs_discmap, %struct.adfs_discmap* %93, i64 %95
  %97 = getelementptr inbounds %struct.adfs_discmap, %struct.adfs_discmap* %96, i32 0, i32 3
  store i32 %92, i32* %97, align 4
  %98 = load %struct.adfs_discmap*, %struct.adfs_discmap** %6, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.adfs_discmap, %struct.adfs_discmap* %98, i64 %100
  %102 = getelementptr inbounds %struct.adfs_discmap, %struct.adfs_discmap* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %68
  %106 = load %struct.super_block*, %struct.super_block** %4, align 8
  %107 = call i32 @adfs_error(%struct.super_block* %106, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %162

108:                                              ; preds = %68
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %7, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %64

114:                                              ; preds = %64
  %115 = load i32, i32* %11, align 4
  %116 = sub nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  %117 = load %struct.adfs_discmap*, %struct.adfs_discmap** %6, align 8
  %118 = getelementptr inbounds %struct.adfs_discmap, %struct.adfs_discmap* %117, i64 0
  %119 = getelementptr inbounds %struct.adfs_discmap, %struct.adfs_discmap* %118, i32 0, i32 2
  store i32 0, i32* %119, align 4
  %120 = load i32, i32* @ADFS_DR_SIZE_BITS, align 4
  %121 = load %struct.adfs_discmap*, %struct.adfs_discmap** %6, align 8
  %122 = getelementptr inbounds %struct.adfs_discmap, %struct.adfs_discmap* %121, i64 0
  %123 = getelementptr inbounds %struct.adfs_discmap, %struct.adfs_discmap* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 4
  %124 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %5, align 8
  %125 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @le32_to_cpu(i32 %126)
  %128 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %5, align 8
  %129 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 32, %130
  %132 = shl i32 %127, %131
  %133 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %5, align 8
  %134 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @le32_to_cpu(i32 %135)
  %137 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %5, align 8
  %138 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = ashr i32 %136, %139
  %141 = add nsw i32 %132, %140
  %142 = load i32, i32* @ADFS_DR_SIZE_BITS, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %8, align 4
  %145 = mul i32 %143, %144
  %146 = sub i32 %142, %145
  %147 = add i32 %141, %146
  %148 = load %struct.adfs_discmap*, %struct.adfs_discmap** %6, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.adfs_discmap, %struct.adfs_discmap* %148, i64 %150
  %152 = getelementptr inbounds %struct.adfs_discmap, %struct.adfs_discmap* %151, i32 0, i32 1
  store i32 %147, i32* %152, align 4
  %153 = load %struct.super_block*, %struct.super_block** %4, align 8
  %154 = load %struct.adfs_discmap*, %struct.adfs_discmap** %6, align 8
  %155 = call i64 @adfs_checkmap(%struct.super_block* %153, %struct.adfs_discmap* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %114
  %158 = load %struct.adfs_discmap*, %struct.adfs_discmap** %6, align 8
  store %struct.adfs_discmap* %158, %struct.adfs_discmap** %3, align 8
  br label %178

159:                                              ; preds = %114
  %160 = load %struct.super_block*, %struct.super_block** %4, align 8
  %161 = call i32 @adfs_error(%struct.super_block* %160, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %162

162:                                              ; preds = %159, %105
  br label %163

163:                                              ; preds = %167, %162
  %164 = load i32, i32* %11, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %11, align 4
  %166 = icmp sge i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %163
  %168 = load %struct.adfs_discmap*, %struct.adfs_discmap** %6, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.adfs_discmap, %struct.adfs_discmap* %168, i64 %170
  %172 = getelementptr inbounds %struct.adfs_discmap, %struct.adfs_discmap* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @brelse(i32 %173)
  br label %163

175:                                              ; preds = %163
  %176 = load %struct.adfs_discmap*, %struct.adfs_discmap** %6, align 8
  %177 = call i32 @kfree(%struct.adfs_discmap* %176)
  store %struct.adfs_discmap* null, %struct.adfs_discmap** %3, align 8
  br label %178

178:                                              ; preds = %175, %157, %60
  %179 = load %struct.adfs_discmap*, %struct.adfs_discmap** %3, align 8
  ret %struct.adfs_discmap* %179
}

declare dso_local %struct.adfs_sb_info* @ADFS_SB(%struct.super_block*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @signed_asl(i32, i32) #1

declare dso_local %struct.adfs_discmap* @kmalloc(i32, i32) #1

declare dso_local i32 @adfs_error(%struct.super_block*, i8*) #1

declare dso_local i32 @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @adfs_checkmap(%struct.super_block*, %struct.adfs_discmap*) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i32 @kfree(%struct.adfs_discmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_misc.c_fat_time_unix2fat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_misc.c_fat_time_unix2fat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.msdos_sb_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.timespec = type { i32, i32 }

@sys_tz = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SECS_PER_MIN = common dso_local global i32 0, align 4
@UNIX_SECS_1980 = common dso_local global i32 0, align 4
@SECS_PER_DAY = common dso_local global i32 0, align 4
@DAYS_DELTA = common dso_local global i32 0, align 4
@YEAR_2100 = common dso_local global i32 0, align 4
@days_in_year = common dso_local global i32* null, align 8
@SECS_PER_HOUR = common dso_local global i32 0, align 4
@UNIX_SECS_2108 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fat_time_unix2fat(%struct.msdos_sb_info* %0, %struct.timespec* %1, i64* %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.msdos_sb_info*, align 8
  %7 = alloca %struct.timespec*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.msdos_sb_info* %0, %struct.msdos_sb_info** %6, align 8
  store %struct.timespec* %1, %struct.timespec** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load %struct.timespec*, %struct.timespec** %7, align 8
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %20 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sys_tz, i32 0, i32 0), align 4
  %26 = load i32, i32* @SECS_PER_MIN, align 4
  %27 = mul nsw i32 %25, %26
  %28 = load i32, i32* %11, align 4
  %29 = sub nsw i32 %28, %27
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %24, %5
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @UNIX_SECS_1980, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i64*, i64** %8, align 8
  store i64 0, i64* %35, align 8
  %36 = call i64 @cpu_to_le16(i32 33)
  %37 = load i64*, i64** %9, align 8
  store i64 %36, i64* %37, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32*, i32** %10, align 8
  store i32 0, i32* %41, align 4
  br label %42

42:                                               ; preds = %40, %34
  br label %179

43:                                               ; preds = %30
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @SECS_PER_DAY, align 4
  %46 = sdiv i32 %44, %45
  %47 = load i32, i32* @DAYS_DELTA, align 4
  %48 = sub nsw i32 %46, %47
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = sdiv i32 %49, 365
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %51, 3
  %53 = sdiv i32 %52, 4
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @YEAR_2100, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %43
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %57, %43
  %61 = load i32, i32* %15, align 4
  %62 = mul nsw i32 %61, 365
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* %12, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %15, align 4
  br label %70

70:                                               ; preds = %67, %60
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %71, 3
  %73 = sdiv i32 %72, 4
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* @YEAR_2100, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %77, %70
  %81 = load i32, i32* %15, align 4
  %82 = mul nsw i32 %81, 365
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* %12, align 4
  %86 = sub nsw i32 %85, %84
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %15, align 4
  %88 = call i64 @IS_LEAP_YEAR(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %80
  %91 = load i32, i32* %12, align 4
  %92 = load i32*, i32** @days_in_year, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %91, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i32 2, i32* %14, align 4
  br label %129

97:                                               ; preds = %90, %80
  %98 = load i32, i32* %15, align 4
  %99 = call i64 @IS_LEAP_YEAR(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %97
  %102 = load i32, i32* %12, align 4
  %103 = load i32*, i32** @days_in_year, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  %105 = load i32, i32* %104, align 4
  %106 = icmp sgt i32 %102, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %107, %101, %97
  store i32 1, i32* %14, align 4
  br label %111

111:                                              ; preds = %125, %110
  %112 = load i32, i32* %14, align 4
  %113 = icmp slt i32 %112, 12
  br i1 %113, label %114, label %128

114:                                              ; preds = %111
  %115 = load i32*, i32** @days_in_year, align 8
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp sgt i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  br label %128

124:                                              ; preds = %114
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %14, align 4
  br label %111

128:                                              ; preds = %123, %111
  br label %129

129:                                              ; preds = %128, %96
  %130 = load i32*, i32** @days_in_year, align 8
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %12, align 4
  %136 = sub nsw i32 %135, %134
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* @SECS_PER_HOUR, align 4
  %139 = sdiv i32 %137, %138
  %140 = srem i32 %139, 24
  %141 = shl i32 %140, 11
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* @SECS_PER_MIN, align 4
  %144 = sdiv i32 %142, %143
  %145 = srem i32 %144, 60
  %146 = shl i32 %145, 5
  %147 = or i32 %141, %146
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* @SECS_PER_MIN, align 4
  %150 = srem i32 %148, %149
  %151 = ashr i32 %150, 1
  %152 = or i32 %147, %151
  %153 = call i64 @cpu_to_le16(i32 %152)
  %154 = load i64*, i64** %8, align 8
  store i64 %153, i64* %154, align 8
  %155 = load i32, i32* %15, align 4
  %156 = shl i32 %155, 9
  %157 = load i32, i32* %14, align 4
  %158 = shl i32 %157, 5
  %159 = or i32 %156, %158
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %160, 1
  %162 = or i32 %159, %161
  %163 = call i64 @cpu_to_le16(i32 %162)
  %164 = load i64*, i64** %9, align 8
  store i64 %163, i64* %164, align 8
  %165 = load i32*, i32** %10, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %179

167:                                              ; preds = %129
  %168 = load %struct.timespec*, %struct.timespec** %7, align 8
  %169 = getelementptr inbounds %struct.timespec, %struct.timespec* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 1
  %172 = mul nsw i32 %171, 100
  %173 = load %struct.timespec*, %struct.timespec** %7, align 8
  %174 = getelementptr inbounds %struct.timespec, %struct.timespec* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = sdiv i32 %175, 10000000
  %177 = add nsw i32 %172, %176
  %178 = load i32*, i32** %10, align 8
  store i32 %177, i32* %178, align 4
  br label %179

179:                                              ; preds = %42, %167, %129
  ret void
}

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i64 @IS_LEAP_YEAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

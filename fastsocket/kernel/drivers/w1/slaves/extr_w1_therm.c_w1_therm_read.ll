; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/slaves/extr_w1_therm.c_w1_therm_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/slaves/extr_w1_therm.c_w1_therm_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w1_slave = type { i32*, %struct.TYPE_2__*, %struct.w1_master* }
%struct.TYPE_2__ = type { i32 }
%struct.w1_master = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@w1_strong_pullup = common dso_local global i64 0, align 8
@W1_CONVERT_TEMP = common dso_local global i32 0, align 4
@W1_READ_SCRATCHPAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"w1_read_block() returned %u instead of 9.\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c": crc=%02x %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"18S20 doesn't respond to CONVERT_TEMP.\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"t=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @w1_therm_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_therm_read(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.w1_slave*, align 8
  %8 = alloca %struct.w1_master*, align 8
  %9 = alloca [9 x i64], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call %struct.w1_slave* @dev_to_w1_slave(%struct.device* %17)
  store %struct.w1_slave* %18, %struct.w1_slave** %7, align 8
  %19 = load %struct.w1_slave*, %struct.w1_slave** %7, align 8
  %20 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %19, i32 0, i32 2
  %21 = load %struct.w1_master*, %struct.w1_master** %20, align 8
  store %struct.w1_master* %21, %struct.w1_master** %8, align 8
  store i32 10, i32* %13, align 4
  %22 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %22, i32* %14, align 4
  %23 = load %struct.w1_master*, %struct.w1_master** %8, align 8
  %24 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = getelementptr inbounds [9 x i64], [9 x i64]* %9, i64 0, i64 0
  %27 = call i32 @memset(i64* %26, i32 0, i32 72)
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %28

28:                                               ; preds = %83, %3
  %29 = load i32, i32* %13, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %13, align 4
  %31 = icmp ne i32 %29, 0
  br i1 %31, label %32, label %84

32:                                               ; preds = %28
  %33 = load %struct.w1_slave*, %struct.w1_slave** %7, align 8
  %34 = call i32 @w1_reset_select_slave(%struct.w1_slave* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %78, label %36

36:                                               ; preds = %32
  store i32 0, i32* %15, align 4
  store i32 750, i32* %16, align 4
  %37 = load i64, i64* @w1_strong_pullup, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.w1_master*, %struct.w1_master** %8, align 8
  %41 = load i32, i32* %16, align 4
  %42 = call i32 @w1_next_pullup(%struct.w1_master* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %36
  %44 = load %struct.w1_master*, %struct.w1_master** %8, align 8
  %45 = load i32, i32* @W1_CONVERT_TEMP, align 4
  %46 = call i32 @w1_write_8(%struct.w1_master* %44, i32 %45)
  %47 = load i64, i64* @w1_strong_pullup, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @msleep(i32 %50)
  br label %52

52:                                               ; preds = %49, %43
  %53 = load %struct.w1_slave*, %struct.w1_slave** %7, align 8
  %54 = call i32 @w1_reset_select_slave(%struct.w1_slave* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %77, label %56

56:                                               ; preds = %52
  %57 = load %struct.w1_master*, %struct.w1_master** %8, align 8
  %58 = load i32, i32* @W1_READ_SCRATCHPAD, align 4
  %59 = call i32 @w1_write_8(%struct.w1_master* %57, i32 %58)
  %60 = load %struct.w1_master*, %struct.w1_master** %8, align 8
  %61 = getelementptr inbounds [9 x i64], [9 x i64]* %9, i64 0, i64 0
  %62 = call i32 @w1_read_block(%struct.w1_master* %60, i64* %61, i32 9)
  store i32 %62, i32* %15, align 4
  %63 = icmp ne i32 %62, 9
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load i32, i32* %15, align 4
  %67 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %65, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %64, %56
  %69 = getelementptr inbounds [9 x i64], [9 x i64]* %9, i64 0, i64 0
  %70 = call i64 @w1_calc_crc8(i64* %69, i32 8)
  store i64 %70, i64* %10, align 8
  %71 = getelementptr inbounds [9 x i64], [9 x i64]* %9, i64 0, i64 8
  %72 = load i64, i64* %71, align 16
  %73 = load i64, i64* %10, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i64 1, i64* %11, align 8
  br label %76

76:                                               ; preds = %75, %68
  br label %77

77:                                               ; preds = %76, %52
  br label %78

78:                                               ; preds = %77, %32
  %79 = getelementptr inbounds [9 x i64], [9 x i64]* %9, i64 0, i64 0
  %80 = call i32 @w1_therm_check_rom(i64* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  br label %84

83:                                               ; preds = %78
  br label %28

84:                                               ; preds = %82, %28
  store i32 0, i32* %12, align 4
  br label %85

85:                                               ; preds = %106, %84
  %86 = load i32, i32* %12, align 4
  %87 = icmp slt i32 %86, 9
  br i1 %87, label %88, label %109

88:                                               ; preds = %85
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* @PAGE_SIZE, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = sub i64 0, %94
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [9 x i64], [9 x i64]* %9, i64 0, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %96, i32 %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %14, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* %14, align 4
  br label %106

106:                                              ; preds = %88
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %85

109:                                              ; preds = %85
  %110 = load i8*, i8** %6, align 8
  %111 = load i32, i32* @PAGE_SIZE, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = sub i64 0, %115
  %117 = getelementptr inbounds i8, i8* %113, i64 %116
  %118 = load i32, i32* %14, align 4
  %119 = load i64, i64* %10, align 8
  %120 = trunc i64 %119 to i32
  %121 = load i64, i64* %11, align 8
  %122 = icmp ne i64 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %125 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %117, i32 %118, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %120, i8* %124)
  %126 = load i32, i32* %14, align 4
  %127 = sub nsw i32 %126, %125
  store i32 %127, i32* %14, align 4
  %128 = load i64, i64* %11, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %109
  %131 = load %struct.w1_slave*, %struct.w1_slave** %7, align 8
  %132 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds [9 x i64], [9 x i64]* %9, i64 0, i64 0
  %135 = call i32 @memcpy(i32* %133, i64* %134, i32 8)
  br label %139

136:                                              ; preds = %109
  %137 = load %struct.device*, %struct.device** %4, align 8
  %138 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %137, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %130
  store i32 0, i32* %12, align 4
  br label %140

140:                                              ; preds = %163, %139
  %141 = load i32, i32* %12, align 4
  %142 = icmp slt i32 %141, 9
  br i1 %142, label %143, label %166

143:                                              ; preds = %140
  %144 = load i8*, i8** %6, align 8
  %145 = load i32, i32* @PAGE_SIZE, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i32, i32* %14, align 4
  %149 = sext i32 %148 to i64
  %150 = sub i64 0, %149
  %151 = getelementptr inbounds i8, i8* %147, i64 %150
  %152 = load i32, i32* %14, align 4
  %153 = load %struct.w1_slave*, %struct.w1_slave** %7, align 8
  %154 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %151, i32 %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* %14, align 4
  %162 = sub nsw i32 %161, %160
  store i32 %162, i32* %14, align 4
  br label %163

163:                                              ; preds = %143
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %12, align 4
  br label %140

166:                                              ; preds = %140
  %167 = load i8*, i8** %6, align 8
  %168 = load i32, i32* @PAGE_SIZE, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = load i32, i32* %14, align 4
  %172 = sext i32 %171 to i64
  %173 = sub i64 0, %172
  %174 = getelementptr inbounds i8, i8* %170, i64 %173
  %175 = load i32, i32* %14, align 4
  %176 = getelementptr inbounds [9 x i64], [9 x i64]* %9, i64 0, i64 0
  %177 = load %struct.w1_slave*, %struct.w1_slave** %7, align 8
  %178 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %177, i32 0, i32 1
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @w1_convert_temp(i64* %176, i32 %181)
  %183 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %174, i32 %175, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* %14, align 4
  %185 = sub nsw i32 %184, %183
  store i32 %185, i32* %14, align 4
  %186 = load %struct.w1_master*, %struct.w1_master** %8, align 8
  %187 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %186, i32 0, i32 0
  %188 = call i32 @mutex_unlock(i32* %187)
  %189 = load i32, i32* @PAGE_SIZE, align 4
  %190 = load i32, i32* %14, align 4
  %191 = sub nsw i32 %189, %190
  ret i32 %191
}

declare dso_local %struct.w1_slave* @dev_to_w1_slave(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @w1_reset_select_slave(%struct.w1_slave*) #1

declare dso_local i32 @w1_next_pullup(%struct.w1_master*, i32) #1

declare dso_local i32 @w1_write_8(%struct.w1_master*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @w1_read_block(%struct.w1_master*, i64*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i64 @w1_calc_crc8(i64*, i32) #1

declare dso_local i32 @w1_therm_check_rom(i64*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @w1_convert_temp(i64*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

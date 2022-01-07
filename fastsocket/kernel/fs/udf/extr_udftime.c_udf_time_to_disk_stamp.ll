; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_udftime.c_udf_time_to_disk_stamp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_udftime.c_udf_time_to_disk_stamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.timestamp = type { i64, i64, i64, i64, i64, i32, i32, i32, i8*, i8* }
%struct.timespec = type { i32, i32 }

@sys_tz = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SECS_PER_DAY = common dso_local global i64 0, align 8
@SECS_PER_HOUR = common dso_local global i64 0, align 8
@__mon_yday = common dso_local global i16** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.timestamp* @udf_time_to_disk_stamp(%struct.timestamp* %0, i64 %1) #0 {
  %3 = alloca %struct.timestamp*, align 8
  %4 = alloca %struct.timespec, align 4
  %5 = alloca %struct.timestamp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = bitcast %struct.timespec* %4 to i64*
  store i64 %1, i64* %12, align 4
  store %struct.timestamp* %0, %struct.timestamp** %5, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys_tz, i32 0, i32 0), align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load %struct.timestamp*, %struct.timestamp** %5, align 8
  %16 = icmp ne %struct.timestamp* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store %struct.timestamp* null, %struct.timestamp** %3, align 8
  br label %225

18:                                               ; preds = %2
  %19 = load i32, i32* %10, align 4
  %20 = and i32 %19, 4095
  %21 = or i32 4096, %20
  %22 = sext i32 %21 to i64
  %23 = call i8* @cpu_to_le16(i64 %22)
  %24 = load %struct.timestamp*, %struct.timestamp** %5, align 8
  %25 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %24, i32 0, i32 9
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %10, align 4
  %27 = mul nsw i32 %26, 60
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, %27
  store i32 %30, i32* %28, align 4
  %31 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @SECS_PER_DAY, align 8
  %35 = sdiv i64 %33, %34
  store i64 %35, i64* %6, align 8
  %36 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* @SECS_PER_DAY, align 8
  %40 = srem i64 %38, %39
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @SECS_PER_HOUR, align 8
  %43 = sdiv i64 %41, %42
  %44 = load %struct.timestamp*, %struct.timestamp** %5, align 8
  %45 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* @SECS_PER_HOUR, align 8
  %47 = load i64, i64* %7, align 8
  %48 = srem i64 %47, %46
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = sdiv i64 %49, 60
  %51 = load %struct.timestamp*, %struct.timestamp** %5, align 8
  %52 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load i64, i64* %7, align 8
  %54 = srem i64 %53, 60
  %55 = load %struct.timestamp*, %struct.timestamp** %5, align 8
  %56 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  store i64 1970, i64* %8, align 8
  br label %57

57:                                               ; preds = %71, %18
  %58 = load i64, i64* %6, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i64 @__isleap(i64 %62)
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 366, i32 365
  %67 = sext i32 %66 to i64
  %68 = icmp sge i64 %61, %67
  br label %69

69:                                               ; preds = %60, %57
  %70 = phi i1 [ true, %57 ], [ %68, %60 ]
  br i1 %70, label %71, label %155

71:                                               ; preds = %69
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %6, align 8
  %74 = sdiv i64 %73, 365
  %75 = add nsw i64 %72, %74
  %76 = load i64, i64* %6, align 8
  %77 = srem i64 %76, 365
  %78 = icmp slt i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = sext i32 %79 to i64
  %81 = sub nsw i64 %75, %80
  store i64 %81, i64* %11, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %8, align 8
  %84 = sub nsw i64 %82, %83
  %85 = mul nsw i64 %84, 365
  %86 = load i64, i64* %11, align 8
  %87 = sub nsw i64 %86, 1
  %88 = sdiv i64 %87, 4
  %89 = load i64, i64* %11, align 8
  %90 = sub nsw i64 %89, 1
  %91 = srem i64 %90, 4
  %92 = icmp slt i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = sext i32 %93 to i64
  %95 = sub nsw i64 %88, %94
  %96 = load i64, i64* %11, align 8
  %97 = sub nsw i64 %96, 1
  %98 = sdiv i64 %97, 100
  %99 = load i64, i64* %11, align 8
  %100 = sub nsw i64 %99, 1
  %101 = srem i64 %100, 100
  %102 = icmp slt i64 %101, 0
  %103 = zext i1 %102 to i32
  %104 = sext i32 %103 to i64
  %105 = sub nsw i64 %98, %104
  %106 = sub nsw i64 %95, %105
  %107 = load i64, i64* %11, align 8
  %108 = sub nsw i64 %107, 1
  %109 = sdiv i64 %108, 400
  %110 = load i64, i64* %11, align 8
  %111 = sub nsw i64 %110, 1
  %112 = srem i64 %111, 400
  %113 = icmp slt i64 %112, 0
  %114 = zext i1 %113 to i32
  %115 = sext i32 %114 to i64
  %116 = sub nsw i64 %109, %115
  %117 = add nsw i64 %106, %116
  %118 = add nsw i64 %85, %117
  %119 = load i64, i64* %8, align 8
  %120 = sub nsw i64 %119, 1
  %121 = sdiv i64 %120, 4
  %122 = load i64, i64* %8, align 8
  %123 = sub nsw i64 %122, 1
  %124 = srem i64 %123, 4
  %125 = icmp slt i64 %124, 0
  %126 = zext i1 %125 to i32
  %127 = sext i32 %126 to i64
  %128 = sub nsw i64 %121, %127
  %129 = load i64, i64* %8, align 8
  %130 = sub nsw i64 %129, 1
  %131 = sdiv i64 %130, 100
  %132 = load i64, i64* %8, align 8
  %133 = sub nsw i64 %132, 1
  %134 = srem i64 %133, 100
  %135 = icmp slt i64 %134, 0
  %136 = zext i1 %135 to i32
  %137 = sext i32 %136 to i64
  %138 = sub nsw i64 %131, %137
  %139 = sub nsw i64 %128, %138
  %140 = load i64, i64* %8, align 8
  %141 = sub nsw i64 %140, 1
  %142 = sdiv i64 %141, 400
  %143 = load i64, i64* %8, align 8
  %144 = sub nsw i64 %143, 1
  %145 = srem i64 %144, 400
  %146 = icmp slt i64 %145, 0
  %147 = zext i1 %146 to i32
  %148 = sext i32 %147 to i64
  %149 = sub nsw i64 %142, %148
  %150 = add nsw i64 %139, %149
  %151 = sub nsw i64 %118, %150
  %152 = load i64, i64* %6, align 8
  %153 = sub nsw i64 %152, %151
  store i64 %153, i64* %6, align 8
  %154 = load i64, i64* %11, align 8
  store i64 %154, i64* %8, align 8
  br label %57

155:                                              ; preds = %69
  %156 = load i64, i64* %8, align 8
  %157 = call i8* @cpu_to_le16(i64 %156)
  %158 = load %struct.timestamp*, %struct.timestamp** %5, align 8
  %159 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %158, i32 0, i32 8
  store i8* %157, i8** %159, align 8
  %160 = load i16**, i16*** @__mon_yday, align 8
  %161 = load i64, i64* %8, align 8
  %162 = call i64 @__isleap(i64 %161)
  %163 = getelementptr inbounds i16*, i16** %160, i64 %162
  %164 = load i16*, i16** %163, align 8
  store i16* %164, i16** %9, align 8
  store i64 11, i64* %8, align 8
  br label %165

165:                                              ; preds = %174, %155
  %166 = load i64, i64* %6, align 8
  %167 = load i16*, i16** %9, align 8
  %168 = load i64, i64* %8, align 8
  %169 = getelementptr inbounds i16, i16* %167, i64 %168
  %170 = load i16, i16* %169, align 2
  %171 = zext i16 %170 to i64
  %172 = icmp slt i64 %166, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %165
  br label %174

174:                                              ; preds = %173
  %175 = load i64, i64* %8, align 8
  %176 = add nsw i64 %175, -1
  store i64 %176, i64* %8, align 8
  br label %165

177:                                              ; preds = %165
  %178 = load i16*, i16** %9, align 8
  %179 = load i64, i64* %8, align 8
  %180 = getelementptr inbounds i16, i16* %178, i64 %179
  %181 = load i16, i16* %180, align 2
  %182 = zext i16 %181 to i64
  %183 = load i64, i64* %6, align 8
  %184 = sub nsw i64 %183, %182
  store i64 %184, i64* %6, align 8
  %185 = load i64, i64* %8, align 8
  %186 = add nsw i64 %185, 1
  %187 = load %struct.timestamp*, %struct.timestamp** %5, align 8
  %188 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %187, i32 0, i32 3
  store i64 %186, i64* %188, align 8
  %189 = load i64, i64* %6, align 8
  %190 = add nsw i64 %189, 1
  %191 = load %struct.timestamp*, %struct.timestamp** %5, align 8
  %192 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %191, i32 0, i32 4
  store i64 %190, i64* %192, align 8
  %193 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = sdiv i32 %194, 10000000
  %196 = load %struct.timestamp*, %struct.timestamp** %5, align 8
  %197 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %196, i32 0, i32 5
  store i32 %195, i32* %197, align 8
  %198 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = sdiv i32 %199, 1000
  %201 = load %struct.timestamp*, %struct.timestamp** %5, align 8
  %202 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 8
  %204 = mul nsw i32 %203, 10000
  %205 = sub nsw i32 %200, %204
  %206 = sdiv i32 %205, 100
  %207 = load %struct.timestamp*, %struct.timestamp** %5, align 8
  %208 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %207, i32 0, i32 6
  store i32 %206, i32* %208, align 4
  %209 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = sdiv i32 %210, 1000
  %212 = load %struct.timestamp*, %struct.timestamp** %5, align 8
  %213 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 8
  %215 = mul nsw i32 %214, 10000
  %216 = sub nsw i32 %211, %215
  %217 = load %struct.timestamp*, %struct.timestamp** %5, align 8
  %218 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %217, i32 0, i32 6
  %219 = load i32, i32* %218, align 4
  %220 = mul nsw i32 %219, 100
  %221 = sub nsw i32 %216, %220
  %222 = load %struct.timestamp*, %struct.timestamp** %5, align 8
  %223 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %222, i32 0, i32 7
  store i32 %221, i32* %223, align 8
  %224 = load %struct.timestamp*, %struct.timestamp** %5, align 8
  store %struct.timestamp* %224, %struct.timestamp** %3, align 8
  br label %225

225:                                              ; preds = %177, %17
  %226 = load %struct.timestamp*, %struct.timestamp** %3, align 8
  ret %struct.timestamp* %226
}

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i64 @__isleap(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

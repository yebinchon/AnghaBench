; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_options.c_dt_opt_rate.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_options.c_dt_opt_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.anon = type { i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"ns\00", align 1
@NANOSEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"nsec\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"us\00", align 1
@MICROSEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"usec\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ms\00", align 1
@MILLISEC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"msec\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@SEC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"hour\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"hz\00", align 1
@errno = common dso_local global i64 0, align 8
@EDT_BADOPTVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i64)* @dt_opt_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_opt_rate(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [16 x %struct.anon], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = getelementptr inbounds [16 x %struct.anon], [16 x %struct.anon]* %12, i64 0, i64 0
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %14, align 16
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1
  %16 = load i32, i32* @NANOSEC, align 4
  %17 = load i32, i32* @NANOSEC, align 4
  %18 = sdiv i32 %16, %17
  store i32 %18, i32* %15, align 8
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %13, i64 1
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %20, align 16
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 1
  %22 = load i32, i32* @NANOSEC, align 4
  %23 = load i32, i32* @NANOSEC, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* %21, align 8
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %19, i64 1
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %26, align 16
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 1
  %28 = load i32, i32* @NANOSEC, align 4
  %29 = load i32, i32* @MICROSEC, align 4
  %30 = sdiv i32 %28, %29
  store i32 %30, i32* %27, align 8
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %25, i64 1
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %32, align 16
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %31, i32 0, i32 1
  %34 = load i32, i32* @NANOSEC, align 4
  %35 = load i32, i32* @MICROSEC, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %33, align 8
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %31, i64 1
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %38, align 16
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %37, i32 0, i32 1
  %40 = load i32, i32* @NANOSEC, align 4
  %41 = load i32, i32* @MILLISEC, align 4
  %42 = sdiv i32 %40, %41
  store i32 %42, i32* %39, align 8
  %43 = getelementptr inbounds %struct.anon, %struct.anon* %37, i64 1
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %44, align 16
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 1
  %46 = load i32, i32* @NANOSEC, align 4
  %47 = load i32, i32* @MILLISEC, align 4
  %48 = sdiv i32 %46, %47
  store i32 %48, i32* %45, align 8
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %43, i64 1
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %50, align 16
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %49, i32 0, i32 1
  %52 = load i32, i32* @NANOSEC, align 4
  %53 = load i32, i32* @SEC, align 4
  %54 = sdiv i32 %52, %53
  store i32 %54, i32* %51, align 8
  %55 = getelementptr inbounds %struct.anon, %struct.anon* %49, i64 1
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %55, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %56, align 16
  %57 = getelementptr inbounds %struct.anon, %struct.anon* %55, i32 0, i32 1
  %58 = load i32, i32* @NANOSEC, align 4
  %59 = load i32, i32* @SEC, align 4
  %60 = sdiv i32 %58, %59
  store i32 %60, i32* %57, align 8
  %61 = getelementptr inbounds %struct.anon, %struct.anon* %55, i64 1
  %62 = getelementptr inbounds %struct.anon, %struct.anon* %61, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8** %62, align 16
  %63 = getelementptr inbounds %struct.anon, %struct.anon* %61, i32 0, i32 1
  %64 = load i32, i32* @NANOSEC, align 4
  %65 = mul nsw i32 %64, 60
  store i32 %65, i32* %63, align 8
  %66 = getelementptr inbounds %struct.anon, %struct.anon* %61, i64 1
  %67 = getelementptr inbounds %struct.anon, %struct.anon* %66, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %67, align 16
  %68 = getelementptr inbounds %struct.anon, %struct.anon* %66, i32 0, i32 1
  %69 = load i32, i32* @NANOSEC, align 4
  %70 = mul nsw i32 %69, 60
  store i32 %70, i32* %68, align 8
  %71 = getelementptr inbounds %struct.anon, %struct.anon* %66, i64 1
  %72 = getelementptr inbounds %struct.anon, %struct.anon* %71, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8** %72, align 16
  %73 = getelementptr inbounds %struct.anon, %struct.anon* %71, i32 0, i32 1
  %74 = load i32, i32* @NANOSEC, align 4
  %75 = mul nsw i32 %74, 60
  %76 = mul nsw i32 %75, 60
  store i32 %76, i32* %73, align 8
  %77 = getelementptr inbounds %struct.anon, %struct.anon* %71, i64 1
  %78 = getelementptr inbounds %struct.anon, %struct.anon* %77, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %78, align 16
  %79 = getelementptr inbounds %struct.anon, %struct.anon* %77, i32 0, i32 1
  %80 = load i32, i32* @NANOSEC, align 4
  %81 = mul nsw i32 %80, 60
  %82 = mul nsw i32 %81, 60
  store i32 %82, i32* %79, align 8
  %83 = getelementptr inbounds %struct.anon, %struct.anon* %77, i64 1
  %84 = getelementptr inbounds %struct.anon, %struct.anon* %83, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8** %84, align 16
  %85 = getelementptr inbounds %struct.anon, %struct.anon* %83, i32 0, i32 1
  %86 = load i32, i32* @NANOSEC, align 4
  %87 = mul nsw i32 %86, 86400
  store i32 %87, i32* %85, align 8
  %88 = getelementptr inbounds %struct.anon, %struct.anon* %83, i64 1
  %89 = getelementptr inbounds %struct.anon, %struct.anon* %88, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8** %89, align 16
  %90 = getelementptr inbounds %struct.anon, %struct.anon* %88, i32 0, i32 1
  %91 = load i32, i32* @NANOSEC, align 4
  %92 = mul nsw i32 %91, 86400
  store i32 %92, i32* %90, align 8
  %93 = getelementptr inbounds %struct.anon, %struct.anon* %88, i64 1
  %94 = getelementptr inbounds %struct.anon, %struct.anon* %93, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8** %94, align 16
  %95 = getelementptr inbounds %struct.anon, %struct.anon* %93, i32 0, i32 1
  store i32 0, i32* %95, align 8
  %96 = getelementptr inbounds %struct.anon, %struct.anon* %93, i64 1
  %97 = getelementptr inbounds %struct.anon, %struct.anon* %96, i32 0, i32 0
  store i8* null, i8** %97, align 16
  %98 = getelementptr inbounds %struct.anon, %struct.anon* %96, i32 0, i32 1
  store i32 0, i32* %98, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %165

101:                                              ; preds = %3
  store i64 0, i64* @errno, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = call i32 @strtoull(i8* %102, i8** %8, i32 0)
  store i32 %103, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %127, %101
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [16 x %struct.anon], [16 x %struct.anon]* %12, i64 0, i64 %106
  %108 = getelementptr inbounds %struct.anon, %struct.anon* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 16
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %130

111:                                              ; preds = %104
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [16 x %struct.anon], [16 x %struct.anon]* %12, i64 0, i64 %113
  %115 = getelementptr inbounds %struct.anon, %struct.anon* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 16
  %117 = load i8*, i8** %8, align 8
  %118 = call i64 @strcasecmp(i8* %116, i8* %117)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %111
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [16 x %struct.anon], [16 x %struct.anon]* %12, i64 0, i64 %122
  %124 = getelementptr inbounds %struct.anon, %struct.anon* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %10, align 4
  br label %130

126:                                              ; preds = %111
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  br label %104

130:                                              ; preds = %120, %104
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [16 x %struct.anon], [16 x %struct.anon]* %12, i64 0, i64 %132
  %134 = getelementptr inbounds %struct.anon, %struct.anon* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 16
  %136 = icmp eq i8* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %130
  %138 = load i8*, i8** %8, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %137, %130
  %143 = load i32, i32* %11, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142, %137
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %147 = load i32, i32* @EDT_BADOPTVAL, align 4
  %148 = call i32 @dt_set_errno(%struct.TYPE_4__* %146, i32 %147)
  store i32 %148, i32* %4, align 4
  br label %172

149:                                              ; preds = %142
  %150 = load i32, i32* %10, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %149
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = load i32, i32* @NANOSEC, align 4
  %157 = load i32, i32* %11, align 4
  %158 = sdiv i32 %156, %157
  store i32 %158, i32* %11, align 4
  br label %159

159:                                              ; preds = %155, %152
  br label %164

160:                                              ; preds = %149
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %11, align 4
  %163 = mul nsw i32 %162, %161
  store i32 %163, i32* %11, align 4
  br label %164

164:                                              ; preds = %160, %159
  br label %165

165:                                              ; preds = %164, %3
  %166 = load i32, i32* %11, align 4
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i64, i64* %7, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32 %166, i32* %171, align 4
  store i32 0, i32* %4, align 4
  br label %172

172:                                              ; preds = %165, %145
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i32 @strtoull(i8*, i8**, i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @dt_set_errno(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

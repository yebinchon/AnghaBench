; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/hlfsd/extr_homedir.c_table_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/hlfsd/extr_homedir.c_table_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8*, i8*, i8*, i64, i64, i64 }

@max_pwtab_num = common dso_local global i32 0, align 4
@pwtab = common dso_local global %struct.TYPE_6__* null, align 8
@untab = common dso_local global %struct.TYPE_6__* null, align 8
@cur_pwtab_num = common dso_local global i32 0, align 4
@XLOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"reallocating table spaces to %d entries\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"ignoring duplicate home %s for uid %d (already %s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*, i8*)* @table_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @table_add(i64 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* @max_pwtab_num, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %3
  store i32 1, i32* @max_pwtab_num, align 4
  %11 = load i32, i32* @max_pwtab_num, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 56
  %14 = trunc i64 %13 to i32
  %15 = call i64 @xmalloc(i32 %14)
  %16 = inttoptr i64 %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** @pwtab, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pwtab, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 0
  %19 = bitcast %struct.TYPE_6__* %18 to i8*
  %20 = load i32, i32* @max_pwtab_num, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 56
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memset(i8* %19, i32 0, i32 %23)
  %25 = load i32, i32* @max_pwtab_num, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 56
  %28 = trunc i64 %27 to i32
  %29 = call i64 @xmalloc(i32 %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** @untab, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @untab, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 0
  %33 = bitcast %struct.TYPE_6__* %32 to i8*
  %34 = load i32, i32* @max_pwtab_num, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 56
  %37 = trunc i64 %36 to i32
  %38 = call i32 @memset(i8* %33, i32 0, i32 %37)
  br label %39

39:                                               ; preds = %10, %3
  %40 = load i32, i32* @cur_pwtab_num, align 4
  %41 = add nsw i32 %40, 1
  %42 = load i32, i32* @max_pwtab_num, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %86

44:                                               ; preds = %39
  %45 = load i32, i32* @max_pwtab_num, align 4
  %46 = mul nsw i32 %45, 2
  store i32 %46, i32* @max_pwtab_num, align 4
  %47 = load i32, i32* @XLOG_INFO, align 4
  %48 = load i32, i32* @max_pwtab_num, align 4
  %49 = call i32 @plog(i32 %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pwtab, align 8
  %51 = load i32, i32* @max_pwtab_num, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 56, %52
  %54 = trunc i64 %53 to i32
  %55 = call i64 @xrealloc(%struct.TYPE_6__* %50, i32 %54)
  %56 = inttoptr i64 %55 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** @pwtab, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @untab, align 8
  %58 = load i32, i32* @max_pwtab_num, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 56, %59
  %61 = trunc i64 %60 to i32
  %62 = call i64 @xrealloc(%struct.TYPE_6__* %57, i32 %61)
  %63 = inttoptr i64 %62 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** @untab, align 8
  %64 = load i32, i32* @cur_pwtab_num, align 4
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %82, %44
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @max_pwtab_num, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %65
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pwtab, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %72
  %74 = bitcast %struct.TYPE_6__* %73 to i8*
  %75 = call i32 @memset(i8* %74, i32 0, i32 56)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @untab, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = bitcast %struct.TYPE_6__* %79 to i8*
  %81 = call i32 @memset(i8* %80, i32 0, i32 56)
  br label %82

82:                                               ; preds = %69
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %65

85:                                               ; preds = %65
  br label %86

86:                                               ; preds = %85, %39
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %114, %86
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @cur_pwtab_num, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %117

91:                                               ; preds = %87
  %92 = load i64, i64* %4, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pwtab, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %92, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %91
  %101 = load i64, i64* %4, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = load i8*, i8** %5, align 8
  %105 = load i64, i64* %4, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pwtab, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @dlog(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %104, i64 %105, i8* %111)
  br label %183

113:                                              ; preds = %100, %91
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %87

117:                                              ; preds = %87
  %118 = load i8*, i8** %5, align 8
  %119 = call i8* @xstrdup(i8* %118)
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pwtab, align 8
  %121 = load i32, i32* @cur_pwtab_num, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  store i8* %119, i8** %124, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pwtab, align 8
  %126 = load i32, i32* @cur_pwtab_num, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 6
  store i64 0, i64* %129, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pwtab, align 8
  %131 = load i32, i32* @cur_pwtab_num, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 5
  store i64 0, i64* %134, align 8
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pwtab, align 8
  %136 = load i32, i32* @cur_pwtab_num, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 4
  store i64 0, i64* %139, align 8
  %140 = load i64, i64* %4, align 8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pwtab, align 8
  %142 = load i32, i32* @cur_pwtab_num, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  store i64 %140, i64* %145, align 8
  %146 = load i8*, i8** %6, align 8
  %147 = call i8* @xstrdup(i8* %146)
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** @untab, align 8
  %149 = load i32, i32* @cur_pwtab_num, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  store i8* %147, i8** %152, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** @untab, align 8
  %154 = load i32, i32* @cur_pwtab_num, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 2
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pwtab, align 8
  %160 = load i32, i32* @cur_pwtab_num, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 3
  store i8* %158, i8** %163, align 8
  %164 = load i64, i64* %4, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** @untab, align 8
  %166 = load i32, i32* @cur_pwtab_num, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  store i64 %164, i64* %169, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pwtab, align 8
  %171 = load i32, i32* @cur_pwtab_num, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** @untab, align 8
  %177 = load i32, i32* @cur_pwtab_num, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 1
  store i8* %175, i8** %180, align 8
  %181 = load i32, i32* @cur_pwtab_num, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* @cur_pwtab_num, align 4
  br label %183

183:                                              ; preds = %117, %103
  ret void
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @plog(i32, i8*, i32) #1

declare dso_local i64 @xrealloc(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @dlog(i8*, i8*, i64, i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

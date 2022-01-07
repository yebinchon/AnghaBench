; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_datastream.c_befs_find_brun_indirect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_datastream.c_befs_find_brun_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.buffer_head = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i64 }

@.str = private unnamed_addr constant [41 x i8] c"---> befs_find_brun_indirect(), find %lu\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"---> befs_find_brun_indirect() failed to read disk block %lu from the indirect brun\00", align 1
@BEFS_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"<--- befs_find_brun_indirect() found file block %lu at indirect[%d]\00", align 1
@BEFS_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"BeFS: befs_find_brun_indirect() failed to find file block %lu\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"<--- befs_find_brun_indirect() ERROR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.TYPE_9__*, i64, %struct.TYPE_10__*)* @befs_find_brun_indirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @befs_find_brun_indirect(%struct.super_block* %0, %struct.TYPE_9__* %1, i64 %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca %struct.TYPE_10__, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  store i64 0, i64* %12, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = bitcast %struct.TYPE_10__* %17 to i8*
  %25 = bitcast %struct.TYPE_10__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 8 %25, i64 12, i1 false)
  %26 = load %struct.super_block*, %struct.super_block** %6, align 8
  %27 = call i64 @iaddr2blockno(%struct.super_block* %26, %struct.TYPE_10__* %17)
  store i64 %27, i64* %18, align 8
  %28 = load %struct.super_block*, %struct.super_block** %6, align 8
  %29 = call i32 @befs_iaddrs_per_block(%struct.super_block* %28)
  store i32 %29, i32* %19, align 4
  %30 = load %struct.super_block*, %struct.super_block** %6, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.super_block*, %struct.super_block** %6, align 8
  %37 = call %struct.TYPE_11__* @BEFS_SB(%struct.super_block* %36)
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = ashr i64 %35, %39
  store i64 %40, i64* %13, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %13, align 8
  %43 = sub nsw i64 %41, %42
  store i64 %43, i64* %14, align 8
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %155, %4
  %45 = load i32, i32* %10, align 4
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %158

49:                                               ; preds = %44
  %50 = load %struct.super_block*, %struct.super_block** %6, align 8
  %51 = load i64, i64* %18, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = call %struct.buffer_head* @befs_bread(%struct.super_block* %50, i64 %54)
  store %struct.buffer_head* %55, %struct.buffer_head** %15, align 8
  %56 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %57 = icmp eq %struct.buffer_head* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %49
  %59 = load %struct.super_block*, %struct.super_block** %6, align 8
  %60 = load i64, i64* %18, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %59, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i64 %63)
  %65 = load i32, i32* @BEFS_ERR, align 4
  store i32 %65, i32* %5, align 4
  br label %165

66:                                               ; preds = %49
  %67 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %68 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %16, align 8
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %149, %66
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %19, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %152

75:                                               ; preds = %71
  %76 = load %struct.super_block*, %struct.super_block** %6, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @fs16_to_cpu(%struct.super_block* %76, i32 %82)
  store i32 %83, i32* %20, align 4
  %84 = load i64, i64* %14, align 8
  %85 = load i64, i64* %12, align 8
  %86 = icmp sge i64 %84, %85
  br i1 %86, label %87, label %144

87:                                               ; preds = %75
  %88 = load i64, i64* %14, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load i32, i32* %20, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %89, %91
  %93 = icmp slt i64 %88, %92
  br i1 %93, label %94, label %144

94:                                               ; preds = %87
  %95 = load i64, i64* %14, align 8
  %96 = load i64, i64* %12, align 8
  %97 = sub nsw i64 %95, %96
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %21, align 4
  %99 = load %struct.super_block*, %struct.super_block** %6, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @fs32_to_cpu(%struct.super_block* %99, i32 %105)
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load %struct.super_block*, %struct.super_block** %6, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @fs16_to_cpu(%struct.super_block* %109, i32 %115)
  %117 = load i32, i32* %21, align 4
  %118 = add nsw i32 %116, %117
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.super_block*, %struct.super_block** %6, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @fs16_to_cpu(%struct.super_block* %121, i32 %127)
  %129 = load i32, i32* %21, align 4
  %130 = sub nsw i32 %128, %129
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  %133 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %134 = call i32 @brelse(%struct.buffer_head* %133)
  %135 = load %struct.super_block*, %struct.super_block** %6, align 8
  %136 = load i64, i64* %8, align 8
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %19, align 4
  %140 = mul nsw i32 %138, %139
  %141 = add nsw i32 %137, %140
  %142 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %135, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i64 %136, i32 %141)
  %143 = load i32, i32* @BEFS_OK, align 4
  store i32 %143, i32* %5, align 4
  br label %165

144:                                              ; preds = %87, %75
  %145 = load i32, i32* %20, align 4
  %146 = sext i32 %145 to i64
  %147 = load i64, i64* %12, align 8
  %148 = add nsw i64 %147, %146
  store i64 %148, i64* %12, align 8
  br label %149

149:                                              ; preds = %144
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %11, align 4
  br label %71

152:                                              ; preds = %71
  %153 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %154 = call i32 @brelse(%struct.buffer_head* %153)
  br label %155

155:                                              ; preds = %152
  %156 = load i32, i32* %10, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %10, align 4
  br label %44

158:                                              ; preds = %44
  %159 = load %struct.super_block*, %struct.super_block** %6, align 8
  %160 = load i64, i64* %8, align 8
  %161 = call i32 @befs_error(%struct.super_block* %159, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i64 %160)
  %162 = load %struct.super_block*, %struct.super_block** %6, align 8
  %163 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %162, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %164 = load i32, i32* @BEFS_ERR, align 4
  store i32 %164, i32* %5, align 4
  br label %165

165:                                              ; preds = %158, %94, %58
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @iaddr2blockno(%struct.super_block*, %struct.TYPE_10__*) #2

declare dso_local i32 @befs_iaddrs_per_block(%struct.super_block*) #2

declare dso_local i32 @befs_debug(%struct.super_block*, i8*, ...) #2

declare dso_local %struct.TYPE_11__* @BEFS_SB(%struct.super_block*) #2

declare dso_local %struct.buffer_head* @befs_bread(%struct.super_block*, i64) #2

declare dso_local i32 @fs16_to_cpu(%struct.super_block*, i32) #2

declare dso_local i32 @fs32_to_cpu(%struct.super_block*, i32) #2

declare dso_local i32 @brelse(%struct.buffer_head*) #2

declare dso_local i32 @befs_error(%struct.super_block*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

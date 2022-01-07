; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_datastream.c_befs_find_brun_dblindirect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_datastream.c_befs_find_brun_dblindirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.TYPE_9__ = type { i32 }

@BEFS_DBLINDIR_BRUN_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"---> befs_find_brun_dblindirect() find %lu\00", align 1
@.str.1 = private unnamed_addr constant [124 x i8] c"The double-indirect index calculated by befs_read_brun_dblindirect(), %d, is outside the range of the double-indirect block\00", align 1
@BEFS_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [84 x i8] c"befs_read_brun_dblindirect() couldn't read the double-indirect block at blockno %lu\00", align 1
@.str.3 = private unnamed_addr constant [110 x i8] c"The indirect index calculated by befs_read_brun_dblindirect(), %d, is outside the range of the indirect block\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"befs_read_brun_dblindirect() couldn't read the indirect block at blockno %lu\00", align 1
@.str.5 = private unnamed_addr constant [80 x i8] c"Found file block %lu in double_indirect[%d][%d], double_indirect_leftover = %lu\00", align 1
@BEFS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.TYPE_10__*, i8*, %struct.TYPE_11__*)* @befs_find_brun_dblindirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @befs_find_brun_dblindirect(%struct.super_block* %0, %struct.TYPE_10__* %1, i8* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.buffer_head*, align 8
  %20 = alloca %struct.buffer_head*, align 8
  %21 = alloca %struct.TYPE_11__, align 4
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_9__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.TYPE_11__, align 4
  %29 = alloca %struct.TYPE_11__, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  store i32* null, i32** %22, align 8
  %30 = load %struct.super_block*, %struct.super_block** %6, align 8
  %31 = call %struct.TYPE_9__* @BEFS_SB(%struct.super_block* %30)
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %23, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %34, %37
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** %24, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i8*, i8** %24, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  store i64 %45, i64* %25, align 8
  %46 = load i64, i64* @BEFS_DBLINDIR_BRUN_LEN, align 8
  store i64 %46, i64* %26, align 8
  %47 = load i64, i64* %26, align 8
  %48 = load %struct.super_block*, %struct.super_block** %6, align 8
  %49 = call i32 @befs_iaddrs_per_block(%struct.super_block* %48)
  %50 = sext i32 %49 to i64
  %51 = mul i64 %47, %50
  %52 = load i64, i64* @BEFS_DBLINDIR_BRUN_LEN, align 8
  %53 = mul i64 %51, %52
  store i64 %53, i64* %27, align 8
  %54 = load %struct.super_block*, %struct.super_block** %6, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 (%struct.super_block*, i8*, i8*, ...) @befs_debug(%struct.super_block* %54, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %55)
  %57 = load i64, i64* %25, align 8
  %58 = load i64, i64* %27, align 8
  %59 = udiv i64 %57, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %10, align 4
  %61 = load i64, i64* %25, align 8
  %62 = load i64, i64* %27, align 8
  %63 = urem i64 %61, %62
  store i64 %63, i64* %17, align 8
  %64 = load i64, i64* %17, align 8
  %65 = load i64, i64* %27, align 8
  %66 = udiv i64 %64, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.super_block*, %struct.super_block** %6, align 8
  %70 = call i32 @befs_iaddrs_per_block(%struct.super_block* %69)
  %71 = sdiv i32 %68, %70
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %72, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %4
  %79 = load %struct.super_block*, %struct.super_block** %6, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @befs_error(%struct.super_block* %79, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @BEFS_ERR, align 4
  store i32 %82, i32* %5, align 4
  br label %221

83:                                               ; preds = %4
  %84 = load %struct.super_block*, %struct.super_block** %6, align 8
  %85 = load %struct.super_block*, %struct.super_block** %6, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = call i32 @iaddr2blockno(%struct.super_block* %85, %struct.TYPE_11__* %87)
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %88, %89
  %91 = call %struct.buffer_head* @befs_bread(%struct.super_block* %84, i32 %90)
  store %struct.buffer_head* %91, %struct.buffer_head** %19, align 8
  %92 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %93 = icmp eq %struct.buffer_head* %92, null
  br i1 %93, label %94, label %106

94:                                               ; preds = %83
  %95 = load %struct.super_block*, %struct.super_block** %6, align 8
  %96 = load %struct.super_block*, %struct.super_block** %6, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = call i32 @iaddr2blockno(%struct.super_block* %96, %struct.TYPE_11__* %98)
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %99, %100
  %102 = call i32 @befs_error(%struct.super_block* %95, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %104 = call i32 @brelse(%struct.buffer_head* %103)
  %105 = load i32, i32* @BEFS_ERR, align 4
  store i32 %105, i32* %5, align 4
  br label %221

106:                                              ; preds = %83
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.super_block*, %struct.super_block** %6, align 8
  %110 = call i32 @befs_iaddrs_per_block(%struct.super_block* %109)
  %111 = mul nsw i32 %108, %110
  %112 = sub nsw i32 %107, %111
  store i32 %112, i32* %15, align 4
  %113 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %114 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i32*
  store i32* %116, i32** %22, align 8
  %117 = load %struct.super_block*, %struct.super_block** %6, align 8
  %118 = load i32*, i32** %22, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @fsrun_to_cpu(%struct.super_block* %117, i32 %122)
  %124 = bitcast %struct.TYPE_11__* %28 to i64*
  store i64 %123, i64* %124, align 4
  %125 = bitcast %struct.TYPE_11__* %21 to i8*
  %126 = bitcast %struct.TYPE_11__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %125, i8* align 4 %126, i64 8, i1 false)
  %127 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %128 = call i32 @brelse(%struct.buffer_head* %127)
  store i32* null, i32** %22, align 8
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.super_block*, %struct.super_block** %6, align 8
  %131 = call i32 @befs_iaddrs_per_block(%struct.super_block* %130)
  %132 = sdiv i32 %129, %131
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* %14, align 4
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp sgt i32 %133, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %106
  %138 = load %struct.super_block*, %struct.super_block** %6, align 8
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @befs_error(%struct.super_block* %138, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.3, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @BEFS_ERR, align 4
  store i32 %141, i32* %5, align 4
  br label %221

142:                                              ; preds = %106
  %143 = load %struct.super_block*, %struct.super_block** %6, align 8
  %144 = load %struct.super_block*, %struct.super_block** %6, align 8
  %145 = call i32 @iaddr2blockno(%struct.super_block* %144, %struct.TYPE_11__* %21)
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %145, %146
  %148 = call %struct.buffer_head* @befs_bread(%struct.super_block* %143, i32 %147)
  store %struct.buffer_head* %148, %struct.buffer_head** %20, align 8
  %149 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %150 = icmp eq %struct.buffer_head* %149, null
  br i1 %150, label %151, label %161

151:                                              ; preds = %142
  %152 = load %struct.super_block*, %struct.super_block** %6, align 8
  %153 = load %struct.super_block*, %struct.super_block** %6, align 8
  %154 = call i32 @iaddr2blockno(%struct.super_block* %153, %struct.TYPE_11__* %21)
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %154, %155
  %157 = call i32 @befs_error(%struct.super_block* %152, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0), i32 %156)
  %158 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %159 = call i32 @brelse(%struct.buffer_head* %158)
  %160 = load i32, i32* @BEFS_ERR, align 4
  store i32 %160, i32* %5, align 4
  br label %221

161:                                              ; preds = %142
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* %14, align 4
  %164 = load %struct.super_block*, %struct.super_block** %6, align 8
  %165 = call i32 @befs_iaddrs_per_block(%struct.super_block* %164)
  %166 = mul nsw i32 %163, %165
  %167 = sub nsw i32 %162, %166
  store i32 %167, i32* %16, align 4
  %168 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %169 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = inttoptr i64 %170 to i32*
  store i32* %171, i32** %22, align 8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %173 = load %struct.super_block*, %struct.super_block** %6, align 8
  %174 = load i32*, i32** %22, align 8
  %175 = load i32, i32* %16, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @fsrun_to_cpu(%struct.super_block* %173, i32 %178)
  %180 = bitcast %struct.TYPE_11__* %29 to i64*
  store i64 %179, i64* %180, align 4
  %181 = bitcast %struct.TYPE_11__* %172 to i8*
  %182 = bitcast %struct.TYPE_11__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %181, i8* align 4 %182, i64 8, i1 false)
  %183 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %184 = call i32 @brelse(%struct.buffer_head* %183)
  store i32* null, i32** %22, align 8
  %185 = load i8*, i8** %24, align 8
  store i8* %185, i8** %18, align 8
  %186 = load i64, i64* %27, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = mul i64 %186, %188
  %190 = load i8*, i8** %18, align 8
  %191 = getelementptr i8, i8* %190, i64 %189
  store i8* %191, i8** %18, align 8
  %192 = load i64, i64* %26, align 8
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = mul i64 %192, %194
  %196 = load i8*, i8** %18, align 8
  %197 = getelementptr i8, i8* %196, i64 %195
  store i8* %197, i8** %18, align 8
  %198 = load i8*, i8** %8, align 8
  %199 = load i8*, i8** %18, align 8
  %200 = ptrtoint i8* %198 to i64
  %201 = ptrtoint i8* %199 to i64
  %202 = sub i64 %200, %201
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %12, align 4
  %204 = load i32, i32* %12, align 4
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, %204
  store i32 %208, i32* %206, align 4
  %209 = load i32, i32* %12, align 4
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = sub nsw i32 %212, %209
  store i32 %213, i32* %211, align 4
  %214 = load %struct.super_block*, %struct.super_block** %6, align 8
  %215 = load i8*, i8** %8, align 8
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* %11, align 4
  %218 = load i64, i64* %17, align 8
  %219 = call i32 (%struct.super_block*, i8*, i8*, ...) @befs_debug(%struct.super_block* %214, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.5, i64 0, i64 0), i8* %215, i32 %216, i32 %217, i64 %218)
  %220 = load i32, i32* @BEFS_OK, align 4
  store i32 %220, i32* %5, align 4
  br label %221

221:                                              ; preds = %161, %151, %137, %94, %78
  %222 = load i32, i32* %5, align 4
  ret i32 %222
}

declare dso_local %struct.TYPE_9__* @BEFS_SB(%struct.super_block*) #1

declare dso_local i32 @befs_iaddrs_per_block(%struct.super_block*) #1

declare dso_local i32 @befs_debug(%struct.super_block*, i8*, i8*, ...) #1

declare dso_local i32 @befs_error(%struct.super_block*, i8*, i32) #1

declare dso_local %struct.buffer_head* @befs_bread(%struct.super_block*, i32) #1

declare dso_local i32 @iaddr2blockno(%struct.super_block*, %struct.TYPE_11__*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @fsrun_to_cpu(%struct.super_block*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

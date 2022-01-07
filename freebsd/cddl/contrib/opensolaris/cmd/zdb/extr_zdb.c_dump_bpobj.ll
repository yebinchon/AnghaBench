; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_bpobj.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_bpobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i32, i32, i32 }

@NN_NUMBUF_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"\09\09num_blkptrs = %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"\09\09bytes = %s\0A\00", align 1
@BPOBJ_SIZE_V1 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"\09\09comp = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"\09\09uncomp = %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"\09\09subobjs = %llu\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"\09\09num_subobjs = %llu\0A\00", align 1
@dump_opt = common dso_local global i32* null, align 8
@BP_SPRINTF_LEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"got error %u from dmu_read\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i64)* @dump_bpobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_bpobj(i32* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca [32 x i8], align 16
  %11 = alloca [32 x i8], align 16
  %12 = alloca [32 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %9, align 8
  %21 = load i32, i32* @NN_NUMBUF_SZ, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp uge i64 32, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @CTASSERT(i32 %24)
  %26 = load i32, i32* @NN_NUMBUF_SZ, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp uge i64 32, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @CTASSERT(i32 %29)
  %31 = load i32, i32* @NN_NUMBUF_SZ, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp uge i64 32, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @CTASSERT(i32 %34)
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %37 = icmp eq %struct.TYPE_2__* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %4
  br label %126

39:                                               ; preds = %4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %44 = call i32 @zdb_nicenum(i32 %42, i8* %43, i32 32)
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %49 = call i32 @zdb_nicenum(i32 %47, i8* %48, i32 32)
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %54 = call i32 @zdb_nicenum(i32 %52, i8* %53, i32 32)
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %59)
  %61 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @BPOBJ_SIZE_V1, align 8
  %65 = icmp uge i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %39
  %67 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  %69 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %66, %39
  %72 = load i64, i64* %8, align 8
  %73 = icmp uge i64 %72, 40
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %78)
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i8*
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %74, %71
  %86 = load i32*, i32** @dump_opt, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 100
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %88, 5
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %126

91:                                               ; preds = %85
  store i32 0, i32* %13, align 4
  br label %92

92:                                               ; preds = %123, %91
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %126

98:                                               ; preds = %92
  %99 = load i32, i32* @BP_SPRINTF_LEN, align 4
  %100 = zext i32 %99 to i64
  %101 = call i8* @llvm.stacksave()
  store i8* %101, i8** %14, align 8
  %102 = alloca i8, i64 %100, align 16
  store i64 %100, i64* %15, align 8
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 4
  %108 = trunc i64 %107 to i32
  %109 = call i32 @dmu_read(i32* %103, i32 %104, i32 %108, i32 4, i32* %16, i32 0)
  store i32 %109, i32* %17, align 4
  %110 = load i32, i32* %17, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %98
  %113 = load i32, i32* %17, align 4
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %113)
  store i32 2, i32* %18, align 4
  br label %119

115:                                              ; preds = %98
  %116 = trunc i64 %100 to i32
  %117 = call i32 @snprintf_blkptr_compact(i8* %102, i32 %116, i32* %16)
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %102)
  store i32 0, i32* %18, align 4
  br label %119

119:                                              ; preds = %115, %112
  %120 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %18, align 4
  switch i32 %121, label %127 [
    i32 0, label %122
    i32 2, label %126
  ]

122:                                              ; preds = %119
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  br label %92

126:                                              ; preds = %38, %90, %119, %92
  ret void

127:                                              ; preds = %119
  unreachable
}

declare dso_local i32 @CTASSERT(i32) #1

declare dso_local i32 @zdb_nicenum(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dmu_read(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @snprintf_blkptr_compact(i8*, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

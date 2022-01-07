; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_sysfs.c_wlp_uuid_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_sysfs.c_wlp_uuid_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { i32, %struct.wlp_uuid }
%struct.wlp_uuid = type { i32* }

@.str = private unnamed_addr constant [113 x i8] c"%02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx \00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlp_uuid_store(%struct.wlp* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.wlp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wlp_uuid, align 8
  store %struct.wlp* %0, %struct.wlp** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.wlp*, %struct.wlp** %4, align 8
  %10 = getelementptr inbounds %struct.wlp, %struct.wlp* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  %28 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 5
  %31 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 6
  %34 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 7
  %37 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 8
  %40 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 9
  %43 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 10
  %46 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 11
  %49 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 12
  %52 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 13
  %55 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 14
  %58 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 15
  %61 = call i32 @sscanf(i8* %12, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str, i64 0, i64 0), i32* %15, i32* %18, i32* %21, i32* %24, i32* %27, i32* %30, i32* %33, i32* %36, i32* %39, i32* %42, i32* %45, i32* %48, i32* %51, i32* %54, i32* %57, i32* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 16
  br i1 %63, label %64, label %67

64:                                               ; preds = %3
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %72

67:                                               ; preds = %3
  %68 = load %struct.wlp*, %struct.wlp** %4, align 8
  %69 = getelementptr inbounds %struct.wlp, %struct.wlp* %68, i32 0, i32 1
  %70 = bitcast %struct.wlp_uuid* %69 to i8*
  %71 = bitcast %struct.wlp_uuid* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 8, i1 false)
  br label %72

72:                                               ; preds = %67, %64
  %73 = load %struct.wlp*, %struct.wlp** %4, align 8
  %74 = getelementptr inbounds %struct.wlp, %struct.wlp* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  br label %83

81:                                               ; preds = %72
  %82 = load i64, i64* %6, align 8
  br label %83

83:                                               ; preds = %81, %78
  %84 = phi i64 [ %80, %78 ], [ %82, %81 ]
  %85 = trunc i64 %84 to i32
  ret i32 %85
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

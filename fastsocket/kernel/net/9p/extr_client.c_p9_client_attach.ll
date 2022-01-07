; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_client.c_p9_client_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_client.c_p9_client_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i32 }
%struct.p9_fid = type { i32, i32, i32 }
%struct.p9_req_t = type { i32, i32, i32 }
%struct.p9_qid = type { i32, i64, i32 }

@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c">>> TATTACH afid %d uname %s aname %s\0A\00", align 1
@P9_TATTACH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ddss?d\00", align 1
@P9_NOFID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"<<< RATTACH qid %x.%llx.%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.p9_fid* @p9_client_attach(%struct.p9_client* %0, %struct.p9_fid* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.p9_fid*, align 8
  %7 = alloca %struct.p9_client*, align 8
  %8 = alloca %struct.p9_fid*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.p9_req_t*, align 8
  %14 = alloca %struct.p9_fid*, align 8
  %15 = alloca %struct.p9_qid, align 8
  store %struct.p9_client* %0, %struct.p9_client** %7, align 8
  store %struct.p9_fid* %1, %struct.p9_fid** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load i32, i32* @P9_DEBUG_9P, align 4
  %17 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %18 = icmp ne %struct.p9_fid* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %21 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  br label %24

23:                                               ; preds = %5
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i32 [ %22, %19 ], [ -1, %23 ]
  %26 = load i8*, i8** %9, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = call i32 (i32, i8*, i32, ...) @P9_DPRINTK(i32 %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %26, i8* %27)
  store i32 0, i32* %12, align 4
  %29 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %30 = call %struct.p9_req_t* @p9_fid_create(%struct.p9_client* %29)
  %31 = bitcast %struct.p9_req_t* %30 to %struct.p9_fid*
  store %struct.p9_fid* %31, %struct.p9_fid** %14, align 8
  %32 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %33 = bitcast %struct.p9_fid* %32 to %struct.p9_req_t*
  %34 = call i64 @IS_ERR(%struct.p9_req_t* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %24
  %37 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %38 = bitcast %struct.p9_fid* %37 to %struct.p9_req_t*
  %39 = call i32 @PTR_ERR(%struct.p9_req_t* %38)
  store i32 %39, i32* %12, align 4
  store %struct.p9_fid* null, %struct.p9_fid** %14, align 8
  br label %100

40:                                               ; preds = %24
  %41 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %42 = load i32, i32* @P9_TATTACH, align 4
  %43 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %44 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %47 = icmp ne %struct.p9_fid* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %50 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  br label %54

52:                                               ; preds = %40
  %53 = load i32, i32* @P9_NOFID, align 4
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi i32 [ %51, %48 ], [ %53, %52 ]
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %41, i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %55, i8* %56, i8* %57, i32 %58)
  store %struct.p9_req_t* %59, %struct.p9_req_t** %13, align 8
  %60 = load %struct.p9_req_t*, %struct.p9_req_t** %13, align 8
  %61 = call i64 @IS_ERR(%struct.p9_req_t* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load %struct.p9_req_t*, %struct.p9_req_t** %13, align 8
  %65 = call i32 @PTR_ERR(%struct.p9_req_t* %64)
  store i32 %65, i32* %12, align 4
  br label %100

66:                                               ; preds = %54
  %67 = load %struct.p9_req_t*, %struct.p9_req_t** %13, align 8
  %68 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %71 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @p9pdu_readf(i32 %69, i32 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.p9_qid* %15)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %66
  %77 = load %struct.p9_req_t*, %struct.p9_req_t** %13, align 8
  %78 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @p9pdu_dump(i32 1, i32 %79)
  %81 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %82 = load %struct.p9_req_t*, %struct.p9_req_t** %13, align 8
  %83 = call i32 @p9_free_req(%struct.p9_client* %81, %struct.p9_req_t* %82)
  br label %100

84:                                               ; preds = %66
  %85 = load i32, i32* @P9_DEBUG_9P, align 4
  %86 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %15, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %15, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %15, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i32, i8*, i32, ...) @P9_DPRINTK(i32 %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %87, i64 %89, i32 %91)
  %93 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %94 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %93, i32 0, i32 1
  %95 = call i32 @memmove(i32* %94, %struct.p9_qid* %15, i32 24)
  %96 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %97 = load %struct.p9_req_t*, %struct.p9_req_t** %13, align 8
  %98 = call i32 @p9_free_req(%struct.p9_client* %96, %struct.p9_req_t* %97)
  %99 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  store %struct.p9_fid* %99, %struct.p9_fid** %6, align 8
  br label %111

100:                                              ; preds = %76, %63, %36
  %101 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %102 = icmp ne %struct.p9_fid* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %105 = bitcast %struct.p9_fid* %104 to %struct.p9_req_t*
  %106 = call i32 @p9_fid_destroy(%struct.p9_req_t* %105)
  br label %107

107:                                              ; preds = %103, %100
  %108 = load i32, i32* %12, align 4
  %109 = call %struct.p9_req_t* @ERR_PTR(i32 %108)
  %110 = bitcast %struct.p9_req_t* %109 to %struct.p9_fid*
  store %struct.p9_fid* %110, %struct.p9_fid** %6, align 8
  br label %111

111:                                              ; preds = %107, %84
  %112 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  ret %struct.p9_fid* %112
}

declare dso_local i32 @P9_DPRINTK(i32, i8*, i32, ...) #1

declare dso_local %struct.p9_req_t* @p9_fid_create(%struct.p9_client*) #1

declare dso_local i64 @IS_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_req_t*) #1

declare dso_local %struct.p9_req_t* @p9_client_rpc(%struct.p9_client*, i32, i8*, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @p9pdu_readf(i32, i32, i8*, %struct.p9_qid*) #1

declare dso_local i32 @p9pdu_dump(i32, i32) #1

declare dso_local i32 @p9_free_req(%struct.p9_client*, %struct.p9_req_t*) #1

declare dso_local i32 @memmove(i32*, %struct.p9_qid*, i32) #1

declare dso_local i32 @p9_fid_destroy(%struct.p9_req_t*) #1

declare dso_local %struct.p9_req_t* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

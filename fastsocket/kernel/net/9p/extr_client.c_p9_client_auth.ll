; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_client.c_p9_client_auth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_client.c_p9_client_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32, i32, i32 }
%struct.p9_client = type { i32 }
%struct.p9_req_t = type { i32, i32, i32 }
%struct.p9_qid = type { i32, i64, i32 }

@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c">>> TAUTH uname %s aname %s\0A\00", align 1
@P9_TAUTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"dss?d\00", align 1
@P9_NOFID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"<<< RAUTH qid %x.%llx.%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.p9_fid* @p9_client_auth(%struct.p9_client* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.p9_fid*, align 8
  %6 = alloca %struct.p9_client*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.p9_req_t*, align 8
  %12 = alloca %struct.p9_qid, align 8
  %13 = alloca %struct.p9_fid*, align 8
  store %struct.p9_client* %0, %struct.p9_client** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* @P9_DEBUG_9P, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 (i32, i8*, i8*, ...) @P9_DPRINTK(i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %16)
  store i32 0, i32* %10, align 4
  %18 = load %struct.p9_client*, %struct.p9_client** %6, align 8
  %19 = call %struct.p9_req_t* @p9_fid_create(%struct.p9_client* %18)
  %20 = bitcast %struct.p9_req_t* %19 to %struct.p9_fid*
  store %struct.p9_fid* %20, %struct.p9_fid** %13, align 8
  %21 = load %struct.p9_fid*, %struct.p9_fid** %13, align 8
  %22 = bitcast %struct.p9_fid* %21 to %struct.p9_req_t*
  %23 = call i64 @IS_ERR(%struct.p9_req_t* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load %struct.p9_fid*, %struct.p9_fid** %13, align 8
  %27 = bitcast %struct.p9_fid* %26 to %struct.p9_req_t*
  %28 = call i32 @PTR_ERR(%struct.p9_req_t* %27)
  store i32 %28, i32* %10, align 4
  store %struct.p9_fid* null, %struct.p9_fid** %13, align 8
  br label %88

29:                                               ; preds = %4
  %30 = load %struct.p9_client*, %struct.p9_client** %6, align 8
  %31 = load i32, i32* @P9_TAUTH, align 4
  %32 = load %struct.p9_fid*, %struct.p9_fid** %13, align 8
  %33 = icmp ne %struct.p9_fid* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.p9_fid*, %struct.p9_fid** %13, align 8
  %36 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  br label %40

38:                                               ; preds = %29
  %39 = load i32, i32* @P9_NOFID, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi i32 [ %37, %34 ], [ %39, %38 ]
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %30, i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %41, i8* %42, i8* %43, i32 %44)
  store %struct.p9_req_t* %45, %struct.p9_req_t** %11, align 8
  %46 = load %struct.p9_req_t*, %struct.p9_req_t** %11, align 8
  %47 = call i64 @IS_ERR(%struct.p9_req_t* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load %struct.p9_req_t*, %struct.p9_req_t** %11, align 8
  %51 = call i32 @PTR_ERR(%struct.p9_req_t* %50)
  store i32 %51, i32* %10, align 4
  br label %88

52:                                               ; preds = %40
  %53 = load %struct.p9_req_t*, %struct.p9_req_t** %11, align 8
  %54 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.p9_client*, %struct.p9_client** %6, align 8
  %57 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @p9pdu_readf(i32 %55, i32 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.p9_qid* %12)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %52
  %63 = load %struct.p9_req_t*, %struct.p9_req_t** %11, align 8
  %64 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @p9pdu_dump(i32 1, i32 %65)
  %67 = load %struct.p9_client*, %struct.p9_client** %6, align 8
  %68 = load %struct.p9_req_t*, %struct.p9_req_t** %11, align 8
  %69 = call i32 @p9_free_req(%struct.p9_client* %67, %struct.p9_req_t* %68)
  br label %88

70:                                               ; preds = %52
  %71 = load i32, i32* @P9_DEBUG_9P, align 4
  %72 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %12, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i8*
  %76 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %12, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %12, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i32, i8*, i8*, ...) @P9_DPRINTK(i32 %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %75, i64 %77, i32 %79)
  %81 = load %struct.p9_fid*, %struct.p9_fid** %13, align 8
  %82 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %81, i32 0, i32 0
  %83 = call i32 @memmove(i32* %82, %struct.p9_qid* %12, i32 24)
  %84 = load %struct.p9_client*, %struct.p9_client** %6, align 8
  %85 = load %struct.p9_req_t*, %struct.p9_req_t** %11, align 8
  %86 = call i32 @p9_free_req(%struct.p9_client* %84, %struct.p9_req_t* %85)
  %87 = load %struct.p9_fid*, %struct.p9_fid** %13, align 8
  store %struct.p9_fid* %87, %struct.p9_fid** %5, align 8
  br label %99

88:                                               ; preds = %62, %49, %25
  %89 = load %struct.p9_fid*, %struct.p9_fid** %13, align 8
  %90 = icmp ne %struct.p9_fid* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load %struct.p9_fid*, %struct.p9_fid** %13, align 8
  %93 = bitcast %struct.p9_fid* %92 to %struct.p9_req_t*
  %94 = call i32 @p9_fid_destroy(%struct.p9_req_t* %93)
  br label %95

95:                                               ; preds = %91, %88
  %96 = load i32, i32* %10, align 4
  %97 = call %struct.p9_req_t* @ERR_PTR(i32 %96)
  %98 = bitcast %struct.p9_req_t* %97 to %struct.p9_fid*
  store %struct.p9_fid* %98, %struct.p9_fid** %5, align 8
  br label %99

99:                                               ; preds = %95, %70
  %100 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  ret %struct.p9_fid* %100
}

declare dso_local i32 @P9_DPRINTK(i32, i8*, i8*, ...) #1

declare dso_local %struct.p9_req_t* @p9_fid_create(%struct.p9_client*) #1

declare dso_local i64 @IS_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_req_t*) #1

declare dso_local %struct.p9_req_t* @p9_client_rpc(%struct.p9_client*, i32, i8*, i32, i8*, i8*, i32) #1

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

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_client.c_p9_client_walk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_client.c_p9_client_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32, i32, i32, i32, %struct.p9_client* }
%struct.p9_client = type { i32 }
%struct.p9_qid = type { i32, i8*, i64 }
%struct.p9_req_t = type { i32, i32, i32, i32, %struct.p9_client* }

@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c">>> TWALK fids %d,%d nwname %d wname[0] %s\0A\00", align 1
@P9_TWALK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ddT\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"<<< RWALK nwqid %d:\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"<<<     [%d] %x.%llx.%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.p9_fid* @p9_client_walk(%struct.p9_fid* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca %struct.p9_fid*, align 8
  %6 = alloca %struct.p9_fid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.p9_client*, align 8
  %12 = alloca %struct.p9_fid*, align 8
  %13 = alloca %struct.p9_qid*, align 8
  %14 = alloca %struct.p9_req_t*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.p9_fid* %0, %struct.p9_fid** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %18 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %17, i32 0, i32 4
  %19 = load %struct.p9_client*, %struct.p9_client** %18, align 8
  store %struct.p9_client* %19, %struct.p9_client** %11, align 8
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %4
  %23 = load %struct.p9_client*, %struct.p9_client** %11, align 8
  %24 = call %struct.p9_req_t* @p9_fid_create(%struct.p9_client* %23)
  %25 = bitcast %struct.p9_req_t* %24 to %struct.p9_fid*
  store %struct.p9_fid* %25, %struct.p9_fid** %12, align 8
  %26 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %27 = bitcast %struct.p9_fid* %26 to %struct.p9_req_t*
  %28 = call i64 @IS_ERR(%struct.p9_req_t* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %32 = bitcast %struct.p9_fid* %31 to %struct.p9_req_t*
  %33 = call i32 @PTR_ERR(%struct.p9_req_t* %32)
  store i32 %33, i32* %10, align 4
  store %struct.p9_fid* null, %struct.p9_fid** %12, align 8
  br label %163

34:                                               ; preds = %22
  %35 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %36 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %39 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  br label %42

40:                                               ; preds = %4
  %41 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  store %struct.p9_fid* %41, %struct.p9_fid** %12, align 8
  br label %42

42:                                               ; preds = %40, %34
  %43 = load i32, i32* @P9_DEBUG_9P, align 4
  %44 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %45 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %48 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i8**, i8*** %8, align 8
  %52 = icmp ne i8** %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = load i8**, i8*** %8, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  br label %58

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57, %53
  %59 = phi i8* [ %56, %53 ], [ null, %57 ]
  %60 = call i32 (i32, i8*, i32, ...) @P9_DPRINTK(i32 %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49, i32 %50, i8* %59)
  %61 = load %struct.p9_client*, %struct.p9_client** %11, align 8
  %62 = load i32, i32* @P9_TWALK, align 4
  %63 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %64 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %67 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i8**, i8*** %8, align 8
  %71 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %61, i32 %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %68, i32 %69, i8** %70)
  store %struct.p9_req_t* %71, %struct.p9_req_t** %14, align 8
  %72 = load %struct.p9_req_t*, %struct.p9_req_t** %14, align 8
  %73 = call i64 @IS_ERR(%struct.p9_req_t* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %58
  %76 = load %struct.p9_req_t*, %struct.p9_req_t** %14, align 8
  %77 = call i32 @PTR_ERR(%struct.p9_req_t* %76)
  store i32 %77, i32* %10, align 4
  br label %163

78:                                               ; preds = %58
  %79 = load %struct.p9_req_t*, %struct.p9_req_t** %14, align 8
  %80 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.p9_client*, %struct.p9_client** %11, align 8
  %83 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @p9pdu_readf(i32 %81, i32 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %15, %struct.p9_qid** %13)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %78
  %89 = load %struct.p9_req_t*, %struct.p9_req_t** %14, align 8
  %90 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @p9pdu_dump(i32 1, i32 %91)
  %93 = load %struct.p9_client*, %struct.p9_client** %11, align 8
  %94 = load %struct.p9_req_t*, %struct.p9_req_t** %14, align 8
  %95 = call i32 @p9_free_req(%struct.p9_client* %93, %struct.p9_req_t* %94)
  br label %159

96:                                               ; preds = %78
  %97 = load %struct.p9_client*, %struct.p9_client** %11, align 8
  %98 = load %struct.p9_req_t*, %struct.p9_req_t** %14, align 8
  %99 = call i32 @p9_free_req(%struct.p9_client* %97, %struct.p9_req_t* %98)
  %100 = load i32, i32* @P9_DEBUG_9P, align 4
  %101 = load i32, i32* %15, align 4
  %102 = call i32 (i32, i8*, i32, ...) @P9_DPRINTK(i32 %100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %96
  %107 = load i32, i32* @ENOENT, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %10, align 4
  br label %159

109:                                              ; preds = %96
  store i32 0, i32* %16, align 4
  br label %110

110:                                              ; preds = %136, %109
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %139

114:                                              ; preds = %110
  %115 = load i32, i32* @P9_DEBUG_9P, align 4
  %116 = load i32, i32* %16, align 4
  %117 = load %struct.p9_qid*, %struct.p9_qid** %13, align 8
  %118 = load i32, i32* %16, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %117, i64 %119
  %121 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.p9_qid*, %struct.p9_qid** %13, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %123, i64 %125
  %127 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.p9_qid*, %struct.p9_qid** %13, align 8
  %130 = load i32, i32* %16, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %129, i64 %131
  %133 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 (i32, i8*, i32, ...) @P9_DPRINTK(i32 %115, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %116, i32 %122, i64 %128, i8* %134)
  br label %136

136:                                              ; preds = %114
  %137 = load i32, i32* %16, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %16, align 4
  br label %110

139:                                              ; preds = %110
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %139
  %143 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %144 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %143, i32 0, i32 1
  %145 = load %struct.p9_qid*, %struct.p9_qid** %13, align 8
  %146 = load i32, i32* %15, align 4
  %147 = sub nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %145, i64 %148
  %150 = call i32 @memmove(i32* %144, %struct.p9_qid* %149, i32 24)
  br label %157

151:                                              ; preds = %139
  %152 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %153 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %156 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  br label %157

157:                                              ; preds = %151, %142
  %158 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  store %struct.p9_fid* %158, %struct.p9_fid** %5, align 8
  br label %178

159:                                              ; preds = %106, %88
  %160 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %161 = bitcast %struct.p9_fid* %160 to %struct.p9_req_t*
  %162 = call i32 @p9_client_clunk(%struct.p9_req_t* %161)
  store %struct.p9_fid* null, %struct.p9_fid** %12, align 8
  br label %163

163:                                              ; preds = %159, %75, %30
  %164 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %165 = icmp ne %struct.p9_fid* %164, null
  br i1 %165, label %166, label %174

166:                                              ; preds = %163
  %167 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %168 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %169 = icmp ne %struct.p9_fid* %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %172 = bitcast %struct.p9_fid* %171 to %struct.p9_req_t*
  %173 = call i32 @p9_fid_destroy(%struct.p9_req_t* %172)
  br label %174

174:                                              ; preds = %170, %166, %163
  %175 = load i32, i32* %10, align 4
  %176 = call %struct.p9_req_t* @ERR_PTR(i32 %175)
  %177 = bitcast %struct.p9_req_t* %176 to %struct.p9_fid*
  store %struct.p9_fid* %177, %struct.p9_fid** %5, align 8
  br label %178

178:                                              ; preds = %174, %157
  %179 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  ret %struct.p9_fid* %179
}

declare dso_local %struct.p9_req_t* @p9_fid_create(%struct.p9_client*) #1

declare dso_local i64 @IS_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @P9_DPRINTK(i32, i8*, i32, ...) #1

declare dso_local %struct.p9_req_t* @p9_client_rpc(%struct.p9_client*, i32, i8*, i32, i32, i32, i8**) #1

declare dso_local i32 @p9pdu_readf(i32, i32, i8*, i32*, %struct.p9_qid**) #1

declare dso_local i32 @p9pdu_dump(i32, i32) #1

declare dso_local i32 @p9_free_req(%struct.p9_client*, %struct.p9_req_t*) #1

declare dso_local i32 @memmove(i32*, %struct.p9_qid*, i32) #1

declare dso_local i32 @p9_client_clunk(%struct.p9_req_t*) #1

declare dso_local i32 @p9_fid_destroy(%struct.p9_req_t*) #1

declare dso_local %struct.p9_req_t* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

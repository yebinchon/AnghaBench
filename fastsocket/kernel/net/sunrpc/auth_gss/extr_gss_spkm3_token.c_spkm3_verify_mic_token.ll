; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_spkm3_token.c_spkm3_verify_mic_token.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_spkm3_token.c_spkm3_verify_mic_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_netobj = type { i32*, i32 }

@GSS_S_DEFECTIVE_TOKEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"RPC:       BAD SPKM ictoken preamble\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"RPC:       BAD asn1 SPKM3 token type\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"RPC:       ERROR unsupported SPKM3 token \0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"RPC:       BAD SPKM3 asn1 context-id type\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"RPC:       BAD SPKM3 contextid len %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [123 x i8] c"RPC:       BAD SPKM_ MIC_TOK header len %d: we only support default int-alg (should be absent) and do not support snd-seq\0A\00", align 1
@GSS_S_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spkm3_verify_mic_token(i8** %0, i32* %1, i8** %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.xdr_netobj, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8** %2, i8*** %6, align 8
  %11 = bitcast %struct.xdr_netobj* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = load i8**, i8*** %4, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp ne i32 %18, 164
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 2
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp ne i32 %24, 48
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %3
  %27 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %105

28:                                               ; preds = %20
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 3
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 4
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp ne i32 %37, 2
  br i1 %38, label %45, label %39

39:                                               ; preds = %28
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 5
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp ne i32 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %39, %28
  %46 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %105

47:                                               ; preds = %39
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 6
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 7
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %61

59:                                               ; preds = %53, %47
  %60 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %105

61:                                               ; preds = %53
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 8
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp ne i32 %65, 3
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %105

69:                                               ; preds = %61
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 9
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp sgt i32 %74, 17
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* %9, align 4
  %78 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  br label %105

79:                                               ; preds = %69
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 11
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %82, 1
  %84 = call i32 @decode_asn1_bitstring(%struct.xdr_netobj* %7, i8* %81, i32 %83, i32 16)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  br label %105

87:                                               ; preds = %79
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 6, %90
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  br label %105

97:                                               ; preds = %87
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 10
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i8**, i8*** %6, align 8
  store i8* %102, i8** %103, align 8
  %104 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %97, %93, %86, %76, %67, %59, %45, %26
  %106 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %7, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @kfree(i32* %107)
  %109 = load i32, i32* %10, align 4
  ret i32 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dprintk(i8*, ...) #2

declare dso_local i32 @decode_asn1_bitstring(%struct.xdr_netobj*, i8*, i32, i32) #2

declare dso_local i32 @kfree(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

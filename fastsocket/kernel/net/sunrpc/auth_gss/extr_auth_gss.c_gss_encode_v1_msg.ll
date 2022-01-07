; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_encode_v1_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_encode_v1_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_upcall_msg = type { i8*, i32, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i8* }
%struct.TYPE_4__ = type { %struct.gss_api_mech* }
%struct.gss_api_mech = type { i8*, i8* }
%struct.rpc_clnt = type { i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"mech=%s uid=%d \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"target=%s \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"service=* \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"nfs4_cb\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"service=nfs \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@UPCALL_BUF_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gss_upcall_msg*, %struct.rpc_clnt*, i32)* @gss_encode_v1_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gss_encode_v1_msg(%struct.gss_upcall_msg* %0, %struct.rpc_clnt* %1, i32 %2) #0 {
  %4 = alloca %struct.gss_upcall_msg*, align 8
  %5 = alloca %struct.rpc_clnt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gss_api_mech*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.gss_upcall_msg* %0, %struct.gss_upcall_msg** %4, align 8
  store %struct.rpc_clnt* %1, %struct.rpc_clnt** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %4, align 8
  %11 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.gss_api_mech*, %struct.gss_api_mech** %13, align 8
  store %struct.gss_api_mech* %14, %struct.gss_api_mech** %7, align 8
  %15 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %4, align 8
  %16 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %4, align 8
  %19 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.gss_api_mech*, %struct.gss_api_mech** %7, align 8
  %22 = getelementptr inbounds %struct.gss_api_mech, %struct.gss_api_mech* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %4, align 8
  %25 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i8* (i8*, i8*, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %4, align 8
  %30 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %4, align 8
  %33 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %8, align 8
  %39 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %40 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %3
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %46 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i8* (i8*, i8*, ...) @sprintf(i8* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = ptrtoint i8* %48 to i32
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %4, align 8
  %56 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, %54
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %43, %3
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = load i8*, i8** %8, align 8
  %65 = call i8* (i8*, i8*, ...) @sprintf(i8* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %66 = ptrtoint i8* %65 to i32
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i8*, i8** %8, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %70, i8** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %4, align 8
  %73 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, %71
  store i32 %76, i32* %74, align 8
  br label %100

77:                                               ; preds = %60
  %78 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %79 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @strcmp(i32 %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %99, label %85

85:                                               ; preds = %77
  %86 = load i8*, i8** %8, align 8
  %87 = call i8* (i8*, i8*, ...) @sprintf(i8* %86, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %88 = ptrtoint i8* %87 to i32
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i8*, i8** %8, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %92, i8** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %4, align 8
  %95 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, %93
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %85, %77
  br label %100

100:                                              ; preds = %99, %63
  %101 = load %struct.gss_api_mech*, %struct.gss_api_mech** %7, align 8
  %102 = getelementptr inbounds %struct.gss_api_mech, %struct.gss_api_mech* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %122

105:                                              ; preds = %100
  %106 = load i8*, i8** %8, align 8
  %107 = load %struct.gss_api_mech*, %struct.gss_api_mech** %7, align 8
  %108 = getelementptr inbounds %struct.gss_api_mech, %struct.gss_api_mech* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* (i8*, i8*, ...) @sprintf(i8* %106, i8* %109)
  %111 = ptrtoint i8* %110 to i32
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i8*, i8** %8, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8* %115, i8** %8, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %4, align 8
  %118 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, %116
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %105, %100
  %123 = load i8*, i8** %8, align 8
  %124 = call i8* (i8*, i8*, ...) @sprintf(i8* %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %125 = ptrtoint i8* %124 to i32
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %4, align 8
  %128 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, %126
  store i32 %131, i32* %129, align 8
  %132 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %4, align 8
  %133 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %4, align 8
  %136 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  store i8* %134, i8** %137, align 8
  %138 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %4, align 8
  %139 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @UPCALL_BUF_LEN, align 4
  %143 = icmp sgt i32 %141, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @BUG_ON(i32 %144)
  ret void
}

declare dso_local i8* @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter.c_msm_rpc_call_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter.c_msm_rpc_call_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_rpc_endpoint = type { i32, i32, i32 }
%struct.rpc_request_hdr = type { i64, i8*, i32, i32, i8* }
%struct.rpc_reply_hdr = type { i64, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ETOOSMALL = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@next_xid = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_rpc_call_reply(%struct.msm_rpc_endpoint* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.msm_rpc_endpoint*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.rpc_request_hdr*, align 8
  %17 = alloca %struct.rpc_reply_hdr*, align 8
  %18 = alloca i32, align 4
  store %struct.msm_rpc_endpoint* %0, %struct.msm_rpc_endpoint** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = bitcast i8* %19 to %struct.rpc_request_hdr*
  store %struct.rpc_request_hdr* %20, %struct.rpc_request_hdr** %16, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 32
  br i1 %23, label %24, label %27

24:                                               ; preds = %7
  %25 = load i32, i32* @ETOOSMALL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %143

27:                                               ; preds = %7
  %28 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %9, align 8
  %29 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOTCONN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %143

35:                                               ; preds = %27
  %36 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %16, align 8
  %37 = call i32 @memset(%struct.rpc_request_hdr* %36, i32 0, i32 32)
  %38 = call i32 @atomic_add_return(i32 1, i32* @next_xid)
  %39 = call i8* @cpu_to_be32(i32 %38)
  %40 = ptrtoint i8* %39 to i64
  %41 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %16, align 8
  %42 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = call i8* @cpu_to_be32(i32 2)
  %44 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %16, align 8
  %45 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %9, align 8
  %47 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %16, align 8
  %50 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %9, align 8
  %52 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %16, align 8
  %55 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i8* @cpu_to_be32(i32 %56)
  %58 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %16, align 8
  %59 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %9, align 8
  %61 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %16, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @msm_rpc_write(%struct.msm_rpc_endpoint* %60, %struct.rpc_request_hdr* %61, i32 %62)
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %18, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %35
  %67 = load i32, i32* %18, align 4
  store i32 %67, i32* %8, align 4
  br label %143

68:                                               ; preds = %35
  br label %69

69:                                               ; preds = %101, %90, %68
  %70 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %9, align 8
  %71 = bitcast %struct.rpc_reply_hdr** %17 to i8*
  %72 = load i64, i64* %15, align 8
  %73 = call i32 @msm_rpc_read(%struct.msm_rpc_endpoint* %70, i8* %71, i32 -1, i64 %72)
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %18, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %18, align 4
  store i32 %77, i32* %8, align 4
  br label %143

78:                                               ; preds = %69
  %79 = load i32, i32* %18, align 4
  %80 = sext i32 %79 to i64
  %81 = icmp ult i64 %80, 12
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %18, align 4
  br label %139

85:                                               ; preds = %78
  %86 = load %struct.rpc_reply_hdr*, %struct.rpc_reply_hdr** %17, align 8
  %87 = getelementptr inbounds %struct.rpc_reply_hdr, %struct.rpc_reply_hdr* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.rpc_reply_hdr*, %struct.rpc_reply_hdr** %17, align 8
  %92 = call i32 @kfree(%struct.rpc_reply_hdr* %91)
  br label %69

93:                                               ; preds = %85
  %94 = load %struct.rpc_reply_hdr*, %struct.rpc_reply_hdr** %17, align 8
  %95 = getelementptr inbounds %struct.rpc_reply_hdr, %struct.rpc_reply_hdr* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %16, align 8
  %98 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load %struct.rpc_reply_hdr*, %struct.rpc_reply_hdr** %17, align 8
  %103 = call i32 @kfree(%struct.rpc_reply_hdr* %102)
  br label %69

104:                                              ; preds = %93
  %105 = load %struct.rpc_reply_hdr*, %struct.rpc_reply_hdr** %17, align 8
  %106 = getelementptr inbounds %struct.rpc_reply_hdr, %struct.rpc_reply_hdr* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* @EPERM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %18, align 4
  br label %139

112:                                              ; preds = %104
  %113 = load %struct.rpc_reply_hdr*, %struct.rpc_reply_hdr** %17, align 8
  %114 = getelementptr inbounds %struct.rpc_reply_hdr, %struct.rpc_reply_hdr* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %18, align 4
  br label %139

122:                                              ; preds = %112
  %123 = load i8*, i8** %13, align 8
  %124 = icmp eq i8* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 0, i32* %18, align 4
  br label %139

126:                                              ; preds = %122
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* %14, align 4
  %129 = icmp sgt i32 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %18, align 4
  br label %138

133:                                              ; preds = %126
  %134 = load i8*, i8** %13, align 8
  %135 = load %struct.rpc_reply_hdr*, %struct.rpc_reply_hdr** %17, align 8
  %136 = load i32, i32* %18, align 4
  %137 = call i32 @memcpy(i8* %134, %struct.rpc_reply_hdr* %135, i32 %136)
  br label %138

138:                                              ; preds = %133, %130
  br label %139

139:                                              ; preds = %138, %125, %119, %109, %82
  %140 = load %struct.rpc_reply_hdr*, %struct.rpc_reply_hdr** %17, align 8
  %141 = call i32 @kfree(%struct.rpc_reply_hdr* %140)
  %142 = load i32, i32* %18, align 4
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %139, %76, %66, %32, %24
  %144 = load i32, i32* %8, align 4
  ret i32 %144
}

declare dso_local i32 @memset(%struct.rpc_request_hdr*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @msm_rpc_write(%struct.msm_rpc_endpoint*, %struct.rpc_request_hdr*, i32) #1

declare dso_local i32 @msm_rpc_read(%struct.msm_rpc_endpoint*, i8*, i32, i64) #1

declare dso_local i32 @kfree(%struct.rpc_reply_hdr*) #1

declare dso_local i32 @memcpy(i8*, %struct.rpc_reply_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

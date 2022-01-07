; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_rpc_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_rpc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32, i32, i32, i32, i32 }
%struct.rpc_create_args = type { i8*, i32, %struct.TYPE_3__*, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.rpc_xprt = type { i32, i32, i32, i32, i32 }
%struct.xprt_create = type { i32, i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.sockaddr_un = type { i8* }
%struct.sockaddr_in = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8 }
%struct.sockaddr_in6 = type { i8 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%pI4\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%pI6\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RPC_CLNT_CREATE_NONPRIVPORT = common dso_local global i32 0, align 4
@RPC_CLNT_CREATE_NOPING = common dso_local global i32 0, align 4
@RPC_CLNT_CREATE_HARDRTRY = common dso_local global i32 0, align 4
@RPC_CLNT_CREATE_AUTOBIND = common dso_local global i32 0, align 4
@RPC_CLNT_CREATE_DISCRTRY = common dso_local global i32 0, align 4
@RPC_CLNT_CREATE_QUIET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_clnt* @rpc_create(%struct.rpc_create_args* %0) #0 {
  %2 = alloca %struct.rpc_clnt*, align 8
  %3 = alloca %struct.rpc_create_args*, align 8
  %4 = alloca %struct.rpc_xprt*, align 8
  %5 = alloca %struct.rpc_clnt*, align 8
  %6 = alloca %struct.xprt_create, align 8
  %7 = alloca [48 x i8], align 16
  %8 = alloca %struct.sockaddr_un*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca i32, align 4
  store %struct.rpc_create_args* %0, %struct.rpc_create_args** %3, align 8
  %12 = getelementptr inbounds %struct.xprt_create, %struct.xprt_create* %6, i32 0, i32 0
  %13 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %14 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %12, align 8
  %16 = getelementptr inbounds %struct.xprt_create, %struct.xprt_create* %6, i32 0, i32 1
  %17 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %18 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds %struct.xprt_create, %struct.xprt_create* %6, i32 0, i32 2
  %21 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %22 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %20, align 8
  %24 = getelementptr inbounds %struct.xprt_create, %struct.xprt_create* %6, i32 0, i32 3
  %25 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %26 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %24, align 8
  %28 = getelementptr inbounds %struct.xprt_create, %struct.xprt_create* %6, i32 0, i32 4
  %29 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %30 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %28, align 4
  %32 = getelementptr inbounds %struct.xprt_create, %struct.xprt_create* %6, i32 0, i32 5
  %33 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %34 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %32, align 8
  %36 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %37 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %85

40:                                               ; preds = %1
  %41 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %42 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = bitcast %struct.TYPE_3__* %43 to %struct.sockaddr_un*
  store %struct.sockaddr_un* %44, %struct.sockaddr_un** %8, align 8
  %45 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %46 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = bitcast %struct.TYPE_3__* %47 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %48, %struct.sockaddr_in** %9, align 8
  %49 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %50 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %49, i32 0, i32 2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = bitcast %struct.TYPE_3__* %51 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %52, %struct.sockaddr_in6** %10, align 8
  %53 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %53, align 16
  %54 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %55 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %76 [
    i32 128, label %59
    i32 130, label %65
    i32 129, label %71
  ]

59:                                               ; preds = %40
  %60 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i64 0, i64 0
  %61 = load %struct.sockaddr_un*, %struct.sockaddr_un** %8, align 8
  %62 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @snprintf(i8* %60, i32 48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %63)
  br label %81

65:                                               ; preds = %40
  %66 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i64 0, i64 0
  %67 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %68 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = call i32 @snprintf(i8* %66, i32 48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  br label %81

71:                                               ; preds = %40
  %72 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i64 0, i64 0
  %73 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %74 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %73, i32 0, i32 0
  %75 = call i32 @snprintf(i8* %72, i32 48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %74)
  br label %81

76:                                               ; preds = %40
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  %79 = call %struct.rpc_xprt* @ERR_PTR(i32 %78)
  %80 = bitcast %struct.rpc_xprt* %79 to %struct.rpc_clnt*
  store %struct.rpc_clnt* %80, %struct.rpc_clnt** %2, align 8
  br label %181

81:                                               ; preds = %71, %65, %59
  %82 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i64 0, i64 0
  %83 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %84 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %81, %1
  %86 = call %struct.rpc_xprt* @xprt_create_transport(%struct.xprt_create* %6)
  store %struct.rpc_xprt* %86, %struct.rpc_xprt** %4, align 8
  %87 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %88 = call i64 @IS_ERR(%struct.rpc_xprt* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %92 = bitcast %struct.rpc_xprt* %91 to %struct.rpc_clnt*
  store %struct.rpc_clnt* %92, %struct.rpc_clnt** %2, align 8
  br label %181

93:                                               ; preds = %85
  %94 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %95 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %94, i32 0, i32 0
  store i32 1, i32* %95, align 4
  %96 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %97 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @RPC_CLNT_CREATE_NONPRIVPORT, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %93
  %103 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %104 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %103, i32 0, i32 0
  store i32 0, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %93
  %106 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %107 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %108 = call %struct.rpc_xprt* @rpc_new_client(%struct.rpc_create_args* %106, %struct.rpc_xprt* %107)
  %109 = bitcast %struct.rpc_xprt* %108 to %struct.rpc_clnt*
  store %struct.rpc_clnt* %109, %struct.rpc_clnt** %5, align 8
  %110 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %111 = bitcast %struct.rpc_clnt* %110 to %struct.rpc_xprt*
  %112 = call i64 @IS_ERR(%struct.rpc_xprt* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %105
  %115 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  store %struct.rpc_clnt* %115, %struct.rpc_clnt** %2, align 8
  br label %181

116:                                              ; preds = %105
  %117 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %118 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @RPC_CLNT_CREATE_NOPING, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %137, label %123

123:                                              ; preds = %116
  %124 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %125 = bitcast %struct.rpc_clnt* %124 to %struct.rpc_xprt*
  %126 = call i32 @rpc_ping(%struct.rpc_xprt* %125)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %123
  %130 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %131 = bitcast %struct.rpc_clnt* %130 to %struct.rpc_xprt*
  %132 = call i32 @rpc_shutdown_client(%struct.rpc_xprt* %131)
  %133 = load i32, i32* %11, align 4
  %134 = call %struct.rpc_xprt* @ERR_PTR(i32 %133)
  %135 = bitcast %struct.rpc_xprt* %134 to %struct.rpc_clnt*
  store %struct.rpc_clnt* %135, %struct.rpc_clnt** %2, align 8
  br label %181

136:                                              ; preds = %123
  br label %137

137:                                              ; preds = %136, %116
  %138 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %139 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %138, i32 0, i32 1
  store i32 1, i32* %139, align 4
  %140 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %141 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @RPC_CLNT_CREATE_HARDRTRY, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %137
  %147 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %148 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %147, i32 0, i32 1
  store i32 0, i32* %148, align 4
  br label %149

149:                                              ; preds = %146, %137
  %150 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %151 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @RPC_CLNT_CREATE_AUTOBIND, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %149
  %157 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %158 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %157, i32 0, i32 2
  store i32 1, i32* %158, align 4
  br label %159

159:                                              ; preds = %156, %149
  %160 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %161 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @RPC_CLNT_CREATE_DISCRTRY, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %159
  %167 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %168 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %167, i32 0, i32 3
  store i32 1, i32* %168, align 4
  br label %169

169:                                              ; preds = %166, %159
  %170 = load %struct.rpc_create_args*, %struct.rpc_create_args** %3, align 8
  %171 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @RPC_CLNT_CREATE_QUIET, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %169
  %177 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %178 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %177, i32 0, i32 4
  store i32 1, i32* %178, align 4
  br label %179

179:                                              ; preds = %176, %169
  %180 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  store %struct.rpc_clnt* %180, %struct.rpc_clnt** %2, align 8
  br label %181

181:                                              ; preds = %179, %129, %114, %90, %76
  %182 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  ret %struct.rpc_clnt* %182
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local %struct.rpc_xprt* @ERR_PTR(i32) #1

declare dso_local %struct.rpc_xprt* @xprt_create_transport(%struct.xprt_create*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_xprt*) #1

declare dso_local %struct.rpc_xprt* @rpc_new_client(%struct.rpc_create_args*, %struct.rpc_xprt*) #1

declare dso_local i32 @rpc_ping(%struct.rpc_xprt*) #1

declare dso_local i32 @rpc_shutdown_client(%struct.rpc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

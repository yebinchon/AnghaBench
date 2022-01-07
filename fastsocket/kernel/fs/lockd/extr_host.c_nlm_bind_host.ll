; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_host.c_nlm_bind_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_host.c_nlm_bind_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.nlm_host = type { i32, i32, %struct.rpc_clnt*, i64, i64, i32, i32, i32, i32, i64, i32 }
%struct.rpc_timeout = type { i64, i64, i64, i32 }
%struct.rpc_create_args = type { i32, i32, i32, i32, i32*, i32, %struct.rpc_timeout*, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [30 x i8] c"lockd: nlm_bind_host %s (%s)\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@NLM_HOST_REBIND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"lockd: next rebind in %lu jiffies\0A\00", align 1
@nlmsvc_timeout = common dso_local global i64 0, align 8
@RPC_CLNT_CREATE_NOPING = common dso_local global i32 0, align 4
@RPC_CLNT_CREATE_AUTOBIND = common dso_local global i32 0, align 4
@RPC_AUTH_UNIX = common dso_local global i32 0, align 4
@nlm_program = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@RPC_CLNT_CREATE_HARDRTRY = common dso_local global i32 0, align 4
@RPC_CLNT_CREATE_NONPRIVPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"lockd: couldn't create RPC handle for %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_clnt* @nlm_bind_host(%struct.nlm_host* %0) #0 {
  %2 = alloca %struct.nlm_host*, align 8
  %3 = alloca %struct.rpc_clnt*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rpc_timeout, align 8
  %6 = alloca %struct.rpc_create_args, align 8
  store %struct.nlm_host* %0, %struct.nlm_host** %2, align 8
  %7 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %8 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %12 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (i8*, i64, ...) @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %10, i32 %13)
  %15 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %16 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %19 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %18, i32 0, i32 2
  %20 = load %struct.rpc_clnt*, %struct.rpc_clnt** %19, align 8
  store %struct.rpc_clnt* %20, %struct.rpc_clnt** %3, align 8
  %21 = icmp ne %struct.rpc_clnt* %20, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %1
  %23 = load i64, i64* @jiffies, align 8
  %24 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %25 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %24, i32 0, i32 9
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @time_after_eq(i64 %23, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %22
  %30 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %31 = call i32 @rpc_force_rebind(%struct.rpc_clnt* %30)
  %32 = load i64, i64* @jiffies, align 8
  %33 = load i64, i64* @NLM_HOST_REBIND, align 8
  %34 = add nsw i64 %32, %33
  %35 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %36 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %35, i32 0, i32 9
  store i64 %34, i64* %36, align 8
  %37 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %38 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %37, i32 0, i32 9
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @jiffies, align 8
  %41 = sub nsw i64 %39, %40
  %42 = call i32 (i8*, i64, ...) @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  br label %43

43:                                               ; preds = %29, %22
  br label %126

44:                                               ; preds = %1
  %45 = load i64, i64* @nlmsvc_timeout, align 8
  store i64 %45, i64* %4, align 8
  %46 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %5, i32 0, i32 0
  %47 = load i64, i64* %4, align 8
  store i64 %47, i64* %46, align 8
  %48 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %5, i32 0, i32 1
  %49 = load i64, i64* %4, align 8
  store i64 %49, i64* %48, align 8
  %50 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %5, i32 0, i32 2
  %51 = load i64, i64* %4, align 8
  %52 = mul i64 %51, 6
  store i64 %52, i64* %50, align 8
  %53 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %5, i32 0, i32 3
  store i32 5, i32* %53, align 8
  %54 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 0
  %55 = load i32, i32* @RPC_CLNT_CREATE_NOPING, align 4
  %56 = load i32, i32* @RPC_CLNT_CREATE_AUTOBIND, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %54, align 8
  %58 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 2
  %60 = load i32, i32* @RPC_AUTH_UNIX, align 4
  store i32 %60, i32* %59, align 8
  %61 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 3
  %62 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %63 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %61, align 4
  %65 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 4
  store i32* @nlm_program, i32** %65, align 8
  %66 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 5
  %67 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %68 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %66, align 8
  %70 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 6
  store %struct.rpc_timeout* %5, %struct.rpc_timeout** %70, align 8
  %71 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 7
  %72 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %73 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %71, align 8
  %75 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 8
  %76 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %77 = call i32 @nlm_addr(%struct.nlm_host* %76)
  store i32 %77, i32* %75, align 4
  %78 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 9
  %79 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %80 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %78, align 8
  %82 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 10
  store i32* @init_net, i32** %82, align 8
  %83 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %84 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %44
  %88 = load i32, i32* @RPC_CLNT_CREATE_HARDRTRY, align 4
  %89 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %88
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %87, %44
  %93 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %94 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load i32, i32* @RPC_CLNT_CREATE_NONPRIVPORT, align 4
  %99 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %98
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %97, %92
  %103 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %104 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %109 = call i32 @nlm_srcaddr(%struct.nlm_host* %108)
  %110 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 1
  store i32 %109, i32* %110, align 4
  br label %111

111:                                              ; preds = %107, %102
  %112 = call %struct.rpc_clnt* @rpc_create(%struct.rpc_create_args* %6)
  store %struct.rpc_clnt* %112, %struct.rpc_clnt** %3, align 8
  %113 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %114 = call i32 @IS_ERR(%struct.rpc_clnt* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %111
  %117 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %118 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %119 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %118, i32 0, i32 2
  store %struct.rpc_clnt* %117, %struct.rpc_clnt** %119, align 8
  br label %125

120:                                              ; preds = %111
  %121 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %122 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  store %struct.rpc_clnt* null, %struct.rpc_clnt** %3, align 8
  br label %125

125:                                              ; preds = %120, %116
  br label %126

126:                                              ; preds = %125, %43
  %127 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %128 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %127, i32 0, i32 0
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  ret %struct.rpc_clnt* %130
}

declare dso_local i32 @dprintk(i8*, i64, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @rpc_force_rebind(%struct.rpc_clnt*) #1

declare dso_local i32 @nlm_addr(%struct.nlm_host*) #1

declare dso_local i32 @nlm_srcaddr(%struct.nlm_host*) #1

declare dso_local %struct.rpc_clnt* @rpc_create(%struct.rpc_create_args*) #1

declare dso_local i32 @IS_ERR(%struct.rpc_clnt*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

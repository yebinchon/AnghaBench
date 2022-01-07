; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_adsp_rpc_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_adsp_rpc_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_request_hdr = type { i64, i64, i64, i64, i64, i64 }

@rpc_cb_server_client = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"adsp: could not read rpc: %d\0A\00", align 1
@RPC_ADSP_RTOS_MTOA_PROG = common dso_local global i64 0, align 8
@RPC_ADSP_RTOS_MTOA_VERS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"adsp: bogus rpc from modem\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @adsp_rpc_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adsp_rpc_thread(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rpc_request_hdr*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  br label %7

7:                                                ; preds = %94, %1
  %8 = load i32, i32* @rpc_cb_server_client, align 4
  %9 = call i32 @msm_rpc_read(i32 %8, i8** %4, i32 -1, i32 -1)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load i32, i32* %6, align 4
  %14 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %95

15:                                               ; preds = %7
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.rpc_request_hdr*
  store %struct.rpc_request_hdr* %17, %struct.rpc_request_hdr** %5, align 8
  %18 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %5, align 8
  %19 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i8* @be32_to_cpu(i64 %20)
  %22 = ptrtoint i8* %21 to i64
  %23 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %5, align 8
  %24 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %5, align 8
  %26 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i8* @be32_to_cpu(i64 %27)
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %5, align 8
  %31 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %5, align 8
  %33 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i8* @be32_to_cpu(i64 %34)
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %5, align 8
  %38 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %5, align 8
  %40 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = call i8* @be32_to_cpu(i64 %41)
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %5, align 8
  %45 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %44, i32 0, i32 3
  store i64 %43, i64* %45, align 8
  %46 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %5, align 8
  %47 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = call i8* @be32_to_cpu(i64 %48)
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %5, align 8
  %52 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %51, i32 0, i32 4
  store i64 %50, i64* %52, align 8
  %53 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %5, align 8
  %54 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = call i8* @be32_to_cpu(i64 %55)
  %57 = ptrtoint i8* %56 to i64
  %58 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %5, align 8
  %59 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %58, i32 0, i32 5
  store i64 %57, i64* %59, align 8
  %60 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %5, align 8
  %61 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %15
  br label %90

65:                                               ; preds = %15
  %66 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %5, align 8
  %67 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 2
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %90

71:                                               ; preds = %65
  %72 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %5, align 8
  %73 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @RPC_ADSP_RTOS_MTOA_PROG, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %90

78:                                               ; preds = %71
  %79 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %5, align 8
  %80 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @RPC_ADSP_RTOS_MTOA_VERS, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %90

85:                                               ; preds = %78
  %86 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %5, align 8
  %87 = call i32 @handle_adsp_rtos_mtoa(%struct.rpc_request_hdr* %86)
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @kfree(i8* %88)
  br label %94

90:                                               ; preds = %84, %77, %70, %64
  %91 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i8*, i8** %4, align 8
  %93 = call i32 @kfree(i8* %92)
  br label %94

94:                                               ; preds = %90, %85
  br i1 true, label %7, label %95

95:                                               ; preds = %94, %12
  %96 = call i32 @do_exit(i32 0)
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @msm_rpc_read(i32, i8**, i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i8* @be32_to_cpu(i64) #1

declare dso_local i32 @handle_adsp_rtos_mtoa(%struct.rpc_request_hdr*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @do_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

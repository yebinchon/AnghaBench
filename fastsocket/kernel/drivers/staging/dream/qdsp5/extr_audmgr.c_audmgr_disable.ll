; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audmgr.c_audmgr_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audmgr.c_audmgr_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audmgr = type { i64, i32, i32, i32 }
%struct.audmgr_disable_msg = type { i32, i32 }

@STATE_DISABLED = common dso_local global i64 0, align 8
@AUDMGR_PROG = common dso_local global i32 0, align 4
@AUDMGR_DISABLE_CLIENT = common dso_local global i32 0, align 4
@STATE_DISABLING = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"audmgr_disable: ARM9 did not reply to RPC am->state = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"audmgr: unexpected state %d while disabling?!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audmgr_disable(%struct.audmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.audmgr*, align 8
  %4 = alloca %struct.audmgr_disable_msg, align 4
  %5 = alloca i32, align 4
  store %struct.audmgr* %0, %struct.audmgr** %3, align 8
  %6 = load %struct.audmgr*, %struct.audmgr** %3, align 8
  %7 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @STATE_DISABLED, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %72

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.audmgr_disable_msg, %struct.audmgr_disable_msg* %4, i32 0, i32 1
  %14 = load i32, i32* @AUDMGR_PROG, align 4
  %15 = load %struct.audmgr*, %struct.audmgr** %3, align 8
  %16 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @msm_rpc_get_vers(i32 %17)
  %19 = load i32, i32* @AUDMGR_DISABLE_CLIENT, align 4
  %20 = call i32 @msm_rpc_setup_req(i32* %13, i32 %14, i32 %18, i32 %19)
  %21 = load %struct.audmgr*, %struct.audmgr** %3, align 8
  %22 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @cpu_to_be32(i32 %23)
  %25 = getelementptr inbounds %struct.audmgr_disable_msg, %struct.audmgr_disable_msg* %4, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i64, i64* @STATE_DISABLING, align 8
  %27 = load %struct.audmgr*, %struct.audmgr** %3, align 8
  %28 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.audmgr*, %struct.audmgr** %3, align 8
  %30 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @msm_rpc_write(i32 %31, %struct.audmgr_disable_msg* %4, i32 8)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %12
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %72

37:                                               ; preds = %12
  %38 = load %struct.audmgr*, %struct.audmgr** %3, align 8
  %39 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.audmgr*, %struct.audmgr** %3, align 8
  %42 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @STATE_DISABLING, align 8
  %45 = icmp ne i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* @HZ, align 4
  %48 = mul nsw i32 15, %47
  %49 = call i32 @wait_event_timeout(i32 %40, i32 %46, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %37
  %53 = load %struct.audmgr*, %struct.audmgr** %3, align 8
  %54 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %55)
  %57 = call i32 (...) @BUG()
  br label %58

58:                                               ; preds = %52, %37
  %59 = load %struct.audmgr*, %struct.audmgr** %3, align 8
  %60 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @STATE_DISABLED, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %72

65:                                               ; preds = %58
  %66 = load %struct.audmgr*, %struct.audmgr** %3, align 8
  %67 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %65, %64, %35, %11
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @msm_rpc_setup_req(i32*, i32, i32, i32) #1

declare dso_local i32 @msm_rpc_get_vers(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @msm_rpc_write(i32, %struct.audmgr_disable_msg*, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

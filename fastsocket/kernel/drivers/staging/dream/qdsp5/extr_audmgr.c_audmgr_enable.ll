; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audmgr.c_audmgr_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audmgr.c_audmgr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audmgr = type { i64, i32, i32 }
%struct.audmgr_config = type { i32, i32, i32, i32, i32 }
%struct.audmgr_enable_msg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@STATE_ENABLED = common dso_local global i64 0, align 8
@STATE_DISABLING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"audmgr: state is DISABLING in enable?\0A\00", align 1
@STATE_ENABLING = common dso_local global i64 0, align 8
@AUDMGR_PROG = common dso_local global i32 0, align 4
@AUDMGR_ENABLE_CLIENT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"audmgr_enable: ARM9 did not reply to RPC am->state = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"audmgr: unexpected state %d while enabling?!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audmgr_enable(%struct.audmgr* %0, %struct.audmgr_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.audmgr*, align 8
  %5 = alloca %struct.audmgr_config*, align 8
  %6 = alloca %struct.audmgr_enable_msg, align 8
  %7 = alloca i32, align 4
  store %struct.audmgr* %0, %struct.audmgr** %4, align 8
  store %struct.audmgr_config* %1, %struct.audmgr_config** %5, align 8
  %8 = load %struct.audmgr*, %struct.audmgr** %4, align 8
  %9 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @STATE_ENABLED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %116

14:                                               ; preds = %2
  %15 = load %struct.audmgr*, %struct.audmgr** %4, align 8
  %16 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @STATE_DISABLING, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %14
  %23 = load i64, i64* @STATE_ENABLING, align 8
  %24 = load %struct.audmgr*, %struct.audmgr** %4, align 8
  %25 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = call i8* @cpu_to_be32(i32 1)
  %27 = getelementptr inbounds %struct.audmgr_enable_msg, %struct.audmgr_enable_msg* %6, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 7
  store i8* %26, i8** %28, align 8
  %29 = load %struct.audmgr_config*, %struct.audmgr_config** %5, align 8
  %30 = getelementptr inbounds %struct.audmgr_config, %struct.audmgr_config* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @cpu_to_be32(i32 %31)
  %33 = getelementptr inbounds %struct.audmgr_enable_msg, %struct.audmgr_enable_msg* %6, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 6
  store i8* %32, i8** %34, align 8
  %35 = load %struct.audmgr_config*, %struct.audmgr_config** %5, align 8
  %36 = getelementptr inbounds %struct.audmgr_config, %struct.audmgr_config* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @cpu_to_be32(i32 %37)
  %39 = getelementptr inbounds %struct.audmgr_enable_msg, %struct.audmgr_enable_msg* %6, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  store i8* %38, i8** %40, align 8
  %41 = load %struct.audmgr_config*, %struct.audmgr_config** %5, align 8
  %42 = getelementptr inbounds %struct.audmgr_config, %struct.audmgr_config* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @cpu_to_be32(i32 %43)
  %45 = getelementptr inbounds %struct.audmgr_enable_msg, %struct.audmgr_enable_msg* %6, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load %struct.audmgr_config*, %struct.audmgr_config** %5, align 8
  %48 = getelementptr inbounds %struct.audmgr_config, %struct.audmgr_config* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @cpu_to_be32(i32 %49)
  %51 = getelementptr inbounds %struct.audmgr_enable_msg, %struct.audmgr_enable_msg* %6, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load %struct.audmgr_config*, %struct.audmgr_config** %5, align 8
  %54 = getelementptr inbounds %struct.audmgr_config, %struct.audmgr_config* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @cpu_to_be32(i32 %55)
  %57 = getelementptr inbounds %struct.audmgr_enable_msg, %struct.audmgr_enable_msg* %6, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = call i8* @cpu_to_be32(i32 286331153)
  %60 = getelementptr inbounds %struct.audmgr_enable_msg, %struct.audmgr_enable_msg* %6, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = call i8* @cpu_to_be32(i32 287454020)
  %63 = getelementptr inbounds %struct.audmgr_enable_msg, %struct.audmgr_enable_msg* %6, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = getelementptr inbounds %struct.audmgr_enable_msg, %struct.audmgr_enable_msg* %6, i32 0, i32 0
  %66 = load i32, i32* @AUDMGR_PROG, align 4
  %67 = load %struct.audmgr*, %struct.audmgr** %4, align 8
  %68 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @msm_rpc_get_vers(i32 %69)
  %71 = load i32, i32* @AUDMGR_ENABLE_CLIENT, align 4
  %72 = call i32 @msm_rpc_setup_req(i32* %65, i32 %66, i32 %70, i32 %71)
  %73 = load %struct.audmgr*, %struct.audmgr** %4, align 8
  %74 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @msm_rpc_write(i32 %75, %struct.audmgr_enable_msg* %6, i32 72)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %22
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %116

81:                                               ; preds = %22
  %82 = load %struct.audmgr*, %struct.audmgr** %4, align 8
  %83 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.audmgr*, %struct.audmgr** %4, align 8
  %86 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @STATE_ENABLING, align 8
  %89 = icmp ne i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* @HZ, align 4
  %92 = mul nsw i32 15, %91
  %93 = call i32 @wait_event_timeout(i32 %84, i32 %90, i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %81
  %97 = load %struct.audmgr*, %struct.audmgr** %4, align 8
  %98 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 %99)
  %101 = call i32 (...) @BUG()
  br label %102

102:                                              ; preds = %96, %81
  %103 = load %struct.audmgr*, %struct.audmgr** %4, align 8
  %104 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @STATE_ENABLED, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %116

109:                                              ; preds = %102
  %110 = load %struct.audmgr*, %struct.audmgr** %4, align 8
  %111 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %112)
  %114 = load i32, i32* @ENODEV, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %109, %108, %79, %13
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @msm_rpc_setup_req(i32*, i32, i32, i32) #1

declare dso_local i32 @msm_rpc_get_vers(i32) #1

declare dso_local i32 @msm_rpc_write(i32, %struct.audmgr_enable_msg*, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_rcom.c_check_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_rcom.c_check_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i64, i64 }
%struct.dlm_rcom = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.rcom_config = type { i32, i32 }

@DLM_HEADER_MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"version mismatch: %x nodeid %d: %x\00", align 1
@DLM_HEADER_MINOR = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"config too short: %d nodeid %d\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"config mismatch: %d,%x nodeid %d: %d,%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, %struct.dlm_rcom*, i32)* @check_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_config(%struct.dlm_ls* %0, %struct.dlm_rcom* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dlm_ls*, align 8
  %6 = alloca %struct.dlm_rcom*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rcom_config*, align 8
  %9 = alloca i64, align 8
  store %struct.dlm_ls* %0, %struct.dlm_ls** %5, align 8
  store %struct.dlm_rcom* %1, %struct.dlm_rcom** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dlm_rcom*, %struct.dlm_rcom** %6, align 8
  %11 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.rcom_config*
  store %struct.rcom_config* %13, %struct.rcom_config** %8, align 8
  store i64 32, i64* %9, align 8
  %14 = load %struct.dlm_rcom*, %struct.dlm_rcom** %6, align 8
  %15 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, -65536
  %19 = load i32, i32* @DLM_HEADER_MAJOR, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %3
  %22 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %23 = load i32, i32* @DLM_HEADER_MAJOR, align 4
  %24 = load i32, i32* @DLM_HEADER_MINOR, align 4
  %25 = or i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = load %struct.dlm_rcom*, %struct.dlm_rcom** %6, align 8
  %30 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (%struct.dlm_ls*, i8*, i64, i64, ...) @log_error(%struct.dlm_ls* %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %28, i32 %32)
  %34 = load i32, i32* @EPROTO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %93

36:                                               ; preds = %3
  %37 = load %struct.dlm_rcom*, %struct.dlm_rcom** %6, align 8
  %38 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %45 = load %struct.dlm_rcom*, %struct.dlm_rcom** %6, align 8
  %46 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = call i32 (%struct.dlm_ls*, i8*, i64, i64, ...) @log_error(%struct.dlm_ls* %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %48, i64 %50)
  %52 = load i32, i32* @EPROTO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %93

54:                                               ; preds = %36
  %55 = load %struct.rcom_config*, %struct.rcom_config** %8, align 8
  %56 = getelementptr inbounds %struct.rcom_config, %struct.rcom_config* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @le32_to_cpu(i32 %57)
  %59 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %60 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %72, label %63

63:                                               ; preds = %54
  %64 = load %struct.rcom_config*, %struct.rcom_config** %8, align 8
  %65 = getelementptr inbounds %struct.rcom_config, %struct.rcom_config* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @le32_to_cpu(i32 %66)
  %68 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %69 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %63, %54
  %73 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %74 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %75 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %78 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.rcom_config*, %struct.rcom_config** %8, align 8
  %82 = getelementptr inbounds %struct.rcom_config, %struct.rcom_config* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @le32_to_cpu(i32 %83)
  %85 = load %struct.rcom_config*, %struct.rcom_config** %8, align 8
  %86 = getelementptr inbounds %struct.rcom_config, %struct.rcom_config* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @le32_to_cpu(i32 %87)
  %89 = call i32 (%struct.dlm_ls*, i8*, i64, i64, ...) @log_error(%struct.dlm_ls* %73, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %76, i64 %79, i32 %80, i64 %84, i64 %88)
  %90 = load i32, i32* @EPROTO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %93

92:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %72, %43, %21
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @log_error(%struct.dlm_ls*, i8*, i64, i64, ...) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

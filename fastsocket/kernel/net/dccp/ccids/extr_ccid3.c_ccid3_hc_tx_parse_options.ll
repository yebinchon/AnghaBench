; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid3.c_ccid3_hc_tx_parse_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid3.c_ccid3_hc_tx_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dccp_sock = type { i64 }
%struct.ccid3_hc_tx_sock = type { %struct.ccid3_options_received }
%struct.ccid3_options_received = type { i64, i8, i8*, i64, i8* }

@.str = private unnamed_addr constant [53 x i8] c"%s(%p), invalid len %d for TFRC_OPT_LOSS_EVENT_RATE\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%s(%p), LOSS_EVENT_RATE=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"%s(%p), LOSS_INTERVALS=(%u, %u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"%s(%p), invalid len %d for TFRC_OPT_RECEIVE_RATE\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"%s(%p), RECEIVE_RATE=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i8, i8, i64, i8*)* @ccid3_hc_tx_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccid3_hc_tx_parse_options(%struct.sock* %0, i8 zeroext %1, i8 zeroext %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dccp_sock*, align 8
  %13 = alloca %struct.ccid3_hc_tx_sock*, align 8
  %14 = alloca %struct.ccid3_options_received*, align 8
  %15 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.sock*, %struct.sock** %6, align 8
  %17 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %16)
  store %struct.dccp_sock* %17, %struct.dccp_sock** %12, align 8
  %18 = load %struct.sock*, %struct.sock** %6, align 8
  %19 = call %struct.ccid3_hc_tx_sock* @ccid3_hc_tx_sk(%struct.sock* %18)
  store %struct.ccid3_hc_tx_sock* %19, %struct.ccid3_hc_tx_sock** %13, align 8
  %20 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %13, align 8
  %21 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %20, i32 0, i32 0
  store %struct.ccid3_options_received* %21, %struct.ccid3_options_received** %14, align 8
  %22 = load %struct.ccid3_options_received*, %struct.ccid3_options_received** %14, align 8
  %23 = getelementptr inbounds %struct.ccid3_options_received, %struct.ccid3_options_received* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.dccp_sock*, %struct.dccp_sock** %12, align 8
  %26 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %5
  %30 = load %struct.dccp_sock*, %struct.dccp_sock** %12, align 8
  %31 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ccid3_options_received*, %struct.ccid3_options_received** %14, align 8
  %34 = getelementptr inbounds %struct.ccid3_options_received, %struct.ccid3_options_received* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.ccid3_options_received*, %struct.ccid3_options_received** %14, align 8
  %36 = getelementptr inbounds %struct.ccid3_options_received, %struct.ccid3_options_received* %35, i32 0, i32 4
  store i8* inttoptr (i64 -1 to i8*), i8** %36, align 8
  %37 = load %struct.ccid3_options_received*, %struct.ccid3_options_received** %14, align 8
  %38 = getelementptr inbounds %struct.ccid3_options_received, %struct.ccid3_options_received* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load %struct.ccid3_options_received*, %struct.ccid3_options_received** %14, align 8
  %40 = getelementptr inbounds %struct.ccid3_options_received, %struct.ccid3_options_received* %39, i32 0, i32 1
  store i8 0, i8* %40, align 8
  %41 = load %struct.ccid3_options_received*, %struct.ccid3_options_received** %14, align 8
  %42 = getelementptr inbounds %struct.ccid3_options_received, %struct.ccid3_options_received* %41, i32 0, i32 2
  store i8* null, i8** %42, align 8
  br label %43

43:                                               ; preds = %29, %5
  %44 = load i8, i8* %7, align 1
  %45 = zext i8 %44 to i32
  switch i32 %45, label %127 [
    i32 130, label %46
    i32 129, label %77
    i32 128, label %96
  ]

46:                                               ; preds = %43
  %47 = load i8, i8* %8, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp ne i32 %48, 4
  %50 = zext i1 %49 to i32
  %51 = call i32 @unlikely(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load %struct.sock*, %struct.sock** %6, align 8
  %55 = call i32 @dccp_role(%struct.sock* %54)
  %56 = load %struct.sock*, %struct.sock** %6, align 8
  %57 = load i8, i8* %8, align 1
  %58 = call i32 @DCCP_WARN(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %55, %struct.sock* %56, i8 zeroext %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %11, align 4
  br label %76

61:                                               ; preds = %46
  %62 = load i8*, i8** %10, align 8
  %63 = bitcast i8* %62 to i32*
  %64 = call i32 @get_unaligned(i32* %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = call i8* @ntohl(i32 %65)
  %67 = load %struct.ccid3_options_received*, %struct.ccid3_options_received** %14, align 8
  %68 = getelementptr inbounds %struct.ccid3_options_received, %struct.ccid3_options_received* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load %struct.sock*, %struct.sock** %6, align 8
  %70 = call i32 @dccp_role(%struct.sock* %69)
  %71 = load %struct.sock*, %struct.sock** %6, align 8
  %72 = load %struct.ccid3_options_received*, %struct.ccid3_options_received** %14, align 8
  %73 = getelementptr inbounds %struct.ccid3_options_received, %struct.ccid3_options_received* %72, i32 0, i32 4
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i8*, i32, %struct.sock*, i8*, ...) @ccid3_pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %70, %struct.sock* %71, i8* %74)
  br label %76

76:                                               ; preds = %61, %53
  br label %127

77:                                               ; preds = %43
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.ccid3_options_received*, %struct.ccid3_options_received** %14, align 8
  %80 = getelementptr inbounds %struct.ccid3_options_received, %struct.ccid3_options_received* %79, i32 0, i32 3
  store i64 %78, i64* %80, align 8
  %81 = load i8, i8* %8, align 1
  %82 = load %struct.ccid3_options_received*, %struct.ccid3_options_received** %14, align 8
  %83 = getelementptr inbounds %struct.ccid3_options_received, %struct.ccid3_options_received* %82, i32 0, i32 1
  store i8 %81, i8* %83, align 8
  %84 = load %struct.sock*, %struct.sock** %6, align 8
  %85 = call i32 @dccp_role(%struct.sock* %84)
  %86 = load %struct.sock*, %struct.sock** %6, align 8
  %87 = load %struct.ccid3_options_received*, %struct.ccid3_options_received** %14, align 8
  %88 = getelementptr inbounds %struct.ccid3_options_received, %struct.ccid3_options_received* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i8*
  %91 = load %struct.ccid3_options_received*, %struct.ccid3_options_received** %14, align 8
  %92 = getelementptr inbounds %struct.ccid3_options_received, %struct.ccid3_options_received* %91, i32 0, i32 1
  %93 = load i8, i8* %92, align 8
  %94 = zext i8 %93 to i32
  %95 = call i32 (i8*, i32, %struct.sock*, i8*, ...) @ccid3_pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %85, %struct.sock* %86, i8* %90, i32 %94)
  br label %127

96:                                               ; preds = %43
  %97 = load i8, i8* %8, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp ne i32 %98, 4
  %100 = zext i1 %99 to i32
  %101 = call i32 @unlikely(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %96
  %104 = load %struct.sock*, %struct.sock** %6, align 8
  %105 = call i32 @dccp_role(%struct.sock* %104)
  %106 = load %struct.sock*, %struct.sock** %6, align 8
  %107 = load i8, i8* %8, align 1
  %108 = call i32 @DCCP_WARN(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %105, %struct.sock* %106, i8 zeroext %107)
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %11, align 4
  br label %126

111:                                              ; preds = %96
  %112 = load i8*, i8** %10, align 8
  %113 = bitcast i8* %112 to i32*
  %114 = call i32 @get_unaligned(i32* %113)
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %15, align 4
  %116 = call i8* @ntohl(i32 %115)
  %117 = load %struct.ccid3_options_received*, %struct.ccid3_options_received** %14, align 8
  %118 = getelementptr inbounds %struct.ccid3_options_received, %struct.ccid3_options_received* %117, i32 0, i32 2
  store i8* %116, i8** %118, align 8
  %119 = load %struct.sock*, %struct.sock** %6, align 8
  %120 = call i32 @dccp_role(%struct.sock* %119)
  %121 = load %struct.sock*, %struct.sock** %6, align 8
  %122 = load %struct.ccid3_options_received*, %struct.ccid3_options_received** %14, align 8
  %123 = getelementptr inbounds %struct.ccid3_options_received, %struct.ccid3_options_received* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 (i8*, i32, %struct.sock*, i8*, ...) @ccid3_pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %120, %struct.sock* %121, i8* %124)
  br label %126

126:                                              ; preds = %111, %103
  br label %127

127:                                              ; preds = %43, %126, %77, %76
  %128 = load i32, i32* %11, align 4
  ret i32 %128
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.ccid3_hc_tx_sock* @ccid3_hc_tx_sk(%struct.sock*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @DCCP_WARN(i8*, i32, %struct.sock*, i8 zeroext) #1

declare dso_local i32 @dccp_role(%struct.sock*) #1

declare dso_local i32 @get_unaligned(i32*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @ccid3_pr_debug(i8*, i32, %struct.sock*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

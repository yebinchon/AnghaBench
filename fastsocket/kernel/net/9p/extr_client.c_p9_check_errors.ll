; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_client.c_p9_check_errors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_client.c_p9_check_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i64 }
%struct.p9_req_t = type { i32 }

@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"couldn't parse header %d\0A\00", align 1
@P9_RERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"s?d\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"couldn't parse error%d\0A\00", align 1
@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"<<< RERROR (%d) %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_client*, %struct.p9_req_t*)* @p9_check_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_check_errors(%struct.p9_client* %0, %struct.p9_req_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p9_client*, align 8
  %5 = alloca %struct.p9_req_t*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.p9_client* %0, %struct.p9_client** %4, align 8
  store %struct.p9_req_t* %1, %struct.p9_req_t** %5, align 8
  %10 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %11 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @p9_parse_header(i32 %12, i32* null, i64* %6, i32* null, i32 0)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 (i32, i8*, i32, ...) @P9_DPRINTK(i32 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %71

21:                                               ; preds = %2
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @P9_RERROR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %68

25:                                               ; preds = %21
  %26 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %27 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %30 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @p9pdu_readf(i32 %28, i64 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %9, i32* %8)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (i32, i8*, i32, ...) @P9_DPRINTK(i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %71

40:                                               ; preds = %25
  %41 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %42 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @IS_ERR_VALUE(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %51, %48
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = call i32 @p9_errstr2errno(i8* %56, i32 %58)
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %55, %51
  %61 = load i32, i32* @P9_DEBUG_9P, align 4
  %62 = load i32, i32* %8, align 4
  %63 = sub nsw i32 0, %62
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 (i32, i8*, i32, ...) @P9_DPRINTK(i32 %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %63, i8* %64)
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @kfree(i8* %66)
  br label %69

68:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %68, %60
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %35, %16
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @p9_parse_header(i32, i32*, i64*, i32*, i32) #1

declare dso_local i32 @P9_DPRINTK(i32, i8*, i32, ...) #1

declare dso_local i32 @p9pdu_readf(i32, i64, i8*, i8**, i32*) #1

declare dso_local i32 @IS_ERR_VALUE(i32) #1

declare dso_local i32 @p9_errstr2errno(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

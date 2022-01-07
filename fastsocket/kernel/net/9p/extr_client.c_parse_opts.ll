; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_client.c_parse_opts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_client.c_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i32, i32, i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"failed to allocate copy of option string\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"integer field, but no integer?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.p9_client*)* @parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_opts(i8* %0, %struct.p9_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.p9_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.p9_client* %1, %struct.p9_client** %5, align 8
  %15 = load i32, i32* @MAX_OPT_ARGS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %20 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %22 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %21, i32 0, i32 1
  store i32 8192, i32* %22, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %82

26:                                               ; preds = %2
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @kstrdup(i8* %27, i32 %28)
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %34 = call i32 @P9_DPRINTK(i32 %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %82

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %77, %76, %57, %45, %37
  %39 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %39, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %78

41:                                               ; preds = %38
  %42 = load i8*, i8** %7, align 8
  %43 = load i8, i8* %42, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %38

46:                                               ; preds = %41
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* @tokens, align 4
  %49 = call i32 @match_token(i8* %47, i32 %48, i32* %18)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 128
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = getelementptr inbounds i32, i32* %18, i64 0
  %54 = call i32 @match_int(i32* %53, i32* %10)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %59 = call i32 @P9_DPRINTK(i32 %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %11, align 4
  br label %38

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %46
  %63 = load i32, i32* %13, align 4
  switch i32 %63, label %76 [
    i32 129, label %64
    i32 128, label %68
    i32 130, label %73
  ]

64:                                               ; preds = %62
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %67 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %77

68:                                               ; preds = %62
  %69 = getelementptr inbounds i32, i32* %18, i64 0
  %70 = call i32 @v9fs_get_trans_by_name(i32* %69)
  %71 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %72 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  br label %77

73:                                               ; preds = %62
  %74 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %75 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %74, i32 0, i32 0
  store i32 0, i32* %75, align 4
  br label %77

76:                                               ; preds = %62
  br label %38

77:                                               ; preds = %73, %68, %64
  br label %38

78:                                               ; preds = %38
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @kfree(i8* %79)
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %82

82:                                               ; preds = %78, %32, %25
  %83 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @kstrdup(i8*, i32) #2

declare dso_local i32 @P9_DPRINTK(i32, i8*) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @match_int(i32*, i32*) #2

declare dso_local i32 @v9fs_get_trans_by_name(i32*) #2

declare dso_local i32 @kfree(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

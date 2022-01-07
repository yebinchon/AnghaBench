; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_rdma.c_parse_opts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_rdma.c_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_rdma_opts = type { i32, i32, i32, i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@P9_PORT = common dso_local global i32 0, align 4
@P9_RDMA_SQ_DEPTH = common dso_local global i32 0, align 4
@P9_RDMA_RQ_DEPTH = common dso_local global i32 0, align 4
@P9_RDMA_TIMEOUT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"failed to allocate copy of option string\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"integer field, but no integer?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.p9_rdma_opts*)* @parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_opts(i8* %0, %struct.p9_rdma_opts* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.p9_rdma_opts*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.p9_rdma_opts* %1, %struct.p9_rdma_opts** %5, align 8
  %15 = load i32, i32* @MAX_OPT_ARGS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load i32, i32* @P9_PORT, align 4
  %20 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %5, align 8
  %21 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @P9_RDMA_SQ_DEPTH, align 4
  %23 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %5, align 8
  %24 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @P9_RDMA_RQ_DEPTH, align 4
  %26 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %5, align 8
  %27 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @P9_RDMA_TIMEOUT, align 4
  %29 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %5, align 8
  %30 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %98

34:                                               ; preds = %2
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kstrdup(i8* %35, i32 %36)
  store i8* %37, i8** %10, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %42 = call i32 @P9_DPRINTK(i32 %41, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %98

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %85, %84, %62, %53, %45
  %47 = call i8* @strsep(i8** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %47, i8** %6, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %86

49:                                               ; preds = %46
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  br label %46

54:                                               ; preds = %49
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* @tokens, align 4
  %57 = call i32 @match_token(i8* %55, i32 %56, i32* %18)
  store i32 %57, i32* %13, align 4
  %58 = getelementptr inbounds i32, i32* %18, i64 0
  %59 = call i32 @match_int(i32* %58, i32* %9)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %64 = call i32 @P9_DPRINTK(i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %11, align 4
  br label %46

66:                                               ; preds = %54
  %67 = load i32, i32* %13, align 4
  switch i32 %67, label %84 [
    i32 131, label %68
    i32 129, label %72
    i32 130, label %76
    i32 128, label %80
  ]

68:                                               ; preds = %66
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %5, align 8
  %71 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %85

72:                                               ; preds = %66
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %5, align 8
  %75 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %85

76:                                               ; preds = %66
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %5, align 8
  %79 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  br label %85

80:                                               ; preds = %66
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %5, align 8
  %83 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  br label %85

84:                                               ; preds = %66
  br label %46

85:                                               ; preds = %80, %76, %72, %68
  br label %46

86:                                               ; preds = %46
  %87 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %5, align 8
  %88 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %5, align 8
  %91 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @max(i32 %89, i32 %92)
  %94 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %5, align 8
  %95 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load i8*, i8** %10, align 8
  %97 = call i32 @kfree(i8* %96)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %98

98:                                               ; preds = %86, %40, %33
  %99 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @kstrdup(i8*, i32) #2

declare dso_local i32 @P9_DPRINTK(i32, i8*) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @match_int(i32*, i32*) #2

declare dso_local i32 @max(i32, i32) #2

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

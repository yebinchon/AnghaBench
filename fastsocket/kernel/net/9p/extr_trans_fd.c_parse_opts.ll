; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_fd.c_parse_opts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_fd.c_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fd_opts = type { i32, i32, i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@P9_PORT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"failed to allocate copy of option string\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@Opt_err = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"integer field, but no integer?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.p9_fd_opts*)* @parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_opts(i8* %0, %struct.p9_fd_opts* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.p9_fd_opts*, align 8
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
  store %struct.p9_fd_opts* %1, %struct.p9_fd_opts** %5, align 8
  %15 = load i32, i32* @MAX_OPT_ARGS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load i32, i32* @P9_PORT, align 4
  %20 = load %struct.p9_fd_opts*, %struct.p9_fd_opts** %5, align 8
  %21 = getelementptr inbounds %struct.p9_fd_opts, %struct.p9_fd_opts* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.p9_fd_opts*, %struct.p9_fd_opts** %5, align 8
  %23 = getelementptr inbounds %struct.p9_fd_opts, %struct.p9_fd_opts* %22, i32 0, i32 1
  store i32 -1, i32* %23, align 4
  %24 = load %struct.p9_fd_opts*, %struct.p9_fd_opts** %5, align 8
  %25 = getelementptr inbounds %struct.p9_fd_opts, %struct.p9_fd_opts* %24, i32 0, i32 2
  store i32 -1, i32* %25, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %85

29:                                               ; preds = %2
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kstrdup(i8* %30, i32 %31)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %37 = call i32 @P9_DPRINTK(i32 %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %85

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %81, %80, %61, %48, %40
  %42 = call i8* @strsep(i8** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %42, i8** %6, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %82

44:                                               ; preds = %41
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %41

49:                                               ; preds = %44
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* @tokens, align 4
  %52 = call i32 @match_token(i8* %50, i32 %51, i32* %18)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @Opt_err, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %49
  %57 = getelementptr inbounds i32, i32* %18, i64 0
  %58 = call i32 @match_int(i32* %57, i32* %9)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %63 = call i32 @P9_DPRINTK(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %11, align 4
  br label %41

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %49
  %67 = load i32, i32* %13, align 4
  switch i32 %67, label %80 [
    i32 130, label %68
    i32 129, label %72
    i32 128, label %76
  ]

68:                                               ; preds = %66
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.p9_fd_opts*, %struct.p9_fd_opts** %5, align 8
  %71 = getelementptr inbounds %struct.p9_fd_opts, %struct.p9_fd_opts* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %81

72:                                               ; preds = %66
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.p9_fd_opts*, %struct.p9_fd_opts** %5, align 8
  %75 = getelementptr inbounds %struct.p9_fd_opts, %struct.p9_fd_opts* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %81

76:                                               ; preds = %66
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.p9_fd_opts*, %struct.p9_fd_opts** %5, align 8
  %79 = getelementptr inbounds %struct.p9_fd_opts, %struct.p9_fd_opts* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  br label %81

80:                                               ; preds = %66
  br label %41

81:                                               ; preds = %76, %72, %68
  br label %41

82:                                               ; preds = %41
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 @kfree(i8* %83)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %85

85:                                               ; preds = %82, %35, %28
  %86 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @kstrdup(i8*, i32) #2

declare dso_local i32 @P9_DPRINTK(i32, i8*) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @match_int(i32*, i32*) #2

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

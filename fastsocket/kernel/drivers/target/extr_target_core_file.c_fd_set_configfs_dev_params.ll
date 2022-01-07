; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_file.c_fd_set_configfs_dev_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_file.c_fd_set_configfs_dev_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32 }
%struct.fd_dev = type { i32, i32, i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@tokens = common dso_local global i32 0, align 4
@FD_MAX_DEV_NAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"FILEIO: Referencing Path: %s\0A\00", align 1
@FBDF_HAS_PATH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"strict_strtoull() failed for fd_dev_size=\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"FILEIO: Referencing Size: %llu bytes\0A\00", align 1
@FBDF_HAS_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"bogus fd_buffered_io=%d value\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"FILEIO: Using buffered I/O operations for struct fd_dev\0A\00", align 1
@FDBD_HAS_BUFFERED_IO_WCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*, i8*, i32)* @fd_set_configfs_dev_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_set_configfs_dev_params(%struct.se_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.se_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fd_dev*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.se_device*, %struct.se_device** %5, align 8
  %20 = call %struct.fd_dev* @FD_DEV(%struct.se_device* %19)
  store %struct.fd_dev* %20, %struct.fd_dev** %8, align 8
  %21 = load i32, i32* @MAX_OPT_ARGS, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %13, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kstrdup(i8* %25, i32 %26)
  store i8* %27, i8** %12, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %128

33:                                               ; preds = %3
  %34 = load i8*, i8** %12, align 8
  store i8* %34, i8** %9, align 8
  br label %35

35:                                               ; preds = %115, %42, %33
  %36 = call i8* @strsep(i8** %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %36, i8** %10, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %116

38:                                               ; preds = %35
  %39 = load i8*, i8** %10, align 8
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  br label %35

43:                                               ; preds = %38
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* @tokens, align 4
  %46 = call i32 @match_token(i8* %44, i32 %45, i32* %24)
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  switch i32 %47, label %114 [
    i32 129, label %48
    i32 128, label %69
    i32 130, label %98
  ]

48:                                               ; preds = %43
  %49 = load %struct.fd_dev*, %struct.fd_dev** %8, align 8
  %50 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds i32, i32* %24, i64 0
  %53 = load i32, i32* @FD_MAX_DEV_NAME, align 4
  %54 = call i32 @match_strlcpy(i32 %51, i32* %52, i32 %53)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %15, align 4
  br label %115

59:                                               ; preds = %48
  %60 = load %struct.fd_dev*, %struct.fd_dev** %8, align 8
  %61 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @FBDF_HAS_PATH, align 4
  %65 = load %struct.fd_dev*, %struct.fd_dev** %8, align 8
  %66 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %115

69:                                               ; preds = %43
  %70 = getelementptr inbounds i32, i32* %24, i64 0
  %71 = call i8* @match_strdup(i32* %70)
  store i8* %71, i8** %11, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %15, align 4
  br label %115

77:                                               ; preds = %69
  %78 = load i8*, i8** %11, align 8
  %79 = load %struct.fd_dev*, %struct.fd_dev** %8, align 8
  %80 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %79, i32 0, i32 1
  %81 = call i32 @strict_strtoull(i8* %78, i32 0, i32* %80)
  store i32 %81, i32* %15, align 4
  %82 = load i8*, i8** %11, align 8
  %83 = call i32 @kfree(i8* %82)
  %84 = load i32, i32* %15, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %117

88:                                               ; preds = %77
  %89 = load %struct.fd_dev*, %struct.fd_dev** %8, align 8
  %90 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @FBDF_HAS_SIZE, align 4
  %94 = load %struct.fd_dev*, %struct.fd_dev** %8, align 8
  %95 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %115

98:                                               ; preds = %43
  %99 = call i32 @match_int(i32* %24, i32* %16)
  %100 = load i32, i32* %16, align 4
  %101 = icmp ne i32 %100, 1
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i32, i32* %16, align 4
  %104 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %15, align 4
  br label %117

107:                                              ; preds = %98
  %108 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  %109 = load i32, i32* @FDBD_HAS_BUFFERED_IO_WCE, align 4
  %110 = load %struct.fd_dev*, %struct.fd_dev** %8, align 8
  %111 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %115

114:                                              ; preds = %43
  br label %115

115:                                              ; preds = %114, %107, %88, %74, %59, %56
  br label %35

116:                                              ; preds = %35
  br label %117

117:                                              ; preds = %116, %102, %86
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 @kfree(i8* %118)
  %120 = load i32, i32* %15, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %117
  %123 = load i32, i32* %7, align 4
  br label %126

124:                                              ; preds = %117
  %125 = load i32, i32* %15, align 4
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i32 [ %123, %122 ], [ %125, %124 ]
  store i32 %127, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %128

128:                                              ; preds = %126, %30
  %129 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %129)
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local %struct.fd_dev* @FD_DEV(%struct.se_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @match_token(i8*, i32, i32*) #1

declare dso_local i32 @match_strlcpy(i32, i32*, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i8* @match_strdup(i32*) #1

declare dso_local i32 @strict_strtoull(i8*, i32, i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @match_int(i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

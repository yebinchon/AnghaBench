; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dma/extr_net.c_smtp_login.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dma/extr_net.c_smtp_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@INSECURE = common dso_local global i32 0, align 4
@SECURETRANS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"AUTH LOGIN\00", align 1
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"remote delivery deferred: AUTH login not available: %s\00", align 1
@neterr = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"can not encode auth reply: %m\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"remote delivery %s: AUTH login failed: %s\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"deferred\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"remote delivery %s: Authentication failed: %s\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [65 x i8] c"non-encrypted SMTP login is disabled in config, so skipping it. \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @smtp_login to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smtp_login(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @smtp_auth_md5(i32 %11, i8* %12, i8* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %111

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  %20 = icmp eq i32 %19, -2
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %111

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  %25 = load i32, i32* @INSECURE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  %30 = load i32, i32* @SECURETRANS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %107

33:                                               ; preds = %28, %23
  %34 = load i32, i32* %5, align 4
  %35 = call i32 (i32, i8*, ...) @send_remote_command(i32 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @read_remote(i32 %36, i32 0, i32* null)
  %38 = icmp ne i32 %37, 3
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* @LOG_NOTICE, align 4
  %41 = load i32, i32* @neterr, align 4
  %42 = call i32 (i32, i8*, ...) @syslog(i32 %40, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  store i32 1, i32* %4, align 4
  br label %111

43:                                               ; preds = %33
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = call i32 @base64_encode(i8* %44, i32 %46, i8** %8)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %83, %50
  %52 = load i32, i32* @LOG_ERR, align 4
  %53 = call i32 (i32, i8*, ...) @syslog(i32 %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %111

54:                                               ; preds = %43
  %55 = load i32, i32* %5, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 (i32, i8*, ...) @send_remote_command(i32 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @free(i8* %58)
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @read_remote(i32 %60, i32 0, i32* null)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 3
  br i1 %63, label %64, label %76

64:                                               ; preds = %54
  %65 = load i32, i32* @LOG_NOTICE, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %66, 5
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %70 = load i32, i32* @neterr, align 4
  %71 = call i32 (i32, i8*, ...) @syslog(i32 %65, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %69, i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, 5
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 -1, i32 1
  store i32 %75, i32* %4, align 4
  br label %111

76:                                               ; preds = %54
  %77 = load i8*, i8** %7, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @strlen(i8* %78)
  %80 = call i32 @base64_encode(i8* %77, i32 %79, i8** %8)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %51

84:                                               ; preds = %76
  %85 = load i32, i32* %5, align 4
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 (i32, i8*, ...) @send_remote_command(i32 %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %86)
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @free(i8* %88)
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @read_remote(i32 %90, i32 0, i32* null)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 2
  br i1 %93, label %94, label %106

94:                                               ; preds = %84
  %95 = load i32, i32* @LOG_NOTICE, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp eq i32 %96, 5
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %100 = load i32, i32* @neterr, align 4
  %101 = call i32 (i32, i8*, ...) @syslog(i32 %95, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i8* %99, i32 %100)
  %102 = load i32, i32* %10, align 4
  %103 = icmp eq i32 %102, 5
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 -1, i32 1
  store i32 %105, i32* %4, align 4
  br label %111

106:                                              ; preds = %84
  br label %110

107:                                              ; preds = %28
  %108 = load i32, i32* @LOG_WARNING, align 4
  %109 = call i32 (i32, i8*, ...) @syslog(i32 %108, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %111

110:                                              ; preds = %106
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %107, %94, %64, %51, %39, %21, %17
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @smtp_auth_md5(i32, i8*, i8*) #1

declare dso_local i32 @send_remote_command(i32, i8*, ...) #1

declare dso_local i32 @read_remote(i32, i32, i32*) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32 @base64_encode(i8*, i32, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

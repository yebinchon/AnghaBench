; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_nfsl.c_amfs_nfsl_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_nfsl.c_amfs_nfsl_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* (%struct.TYPE_8__*)* }
%struct.TYPE_8__ = type { i8*, i8*, i8* }
%struct.TYPE_10__ = type { i8* (%struct.TYPE_8__*)* }
%struct.stat = type { i32 }

@XLOG_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"amfs_nfsl: host $fs and $rhost must be specified\00", align 1
@hostd = common dso_local global i32 0, align 4
@XLOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"amfs_nfsl: \22%s\22 is not the local host \22%s\22, or \22%s\22 using type:=nfs\00", align 1
@nfs_ops = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"amfs_nfsl: \22%s\22 does not exist, using type:=nfs\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"amfs_nfsl: \22%s\22 exists, using type:=link\00", align 1
@amfs_link_ops = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_8__*)* @amfs_nfsl_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @amfs_nfsl_match(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %4, align 8
  br label %31

27:                                               ; preds = %15, %1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %4, align 8
  br label %31

31:                                               ; preds = %27, %23
  %32 = load i8*, i8** %4, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i8*, i8** %5, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* @XLOG_USER, align 4
  %39 = call i32 (i32, i8*, ...) @plog(i32 %38, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %80

40:                                               ; preds = %34
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 (...) @am_get_hostname()
  %43 = call i32 @STRCEQ(i8* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* @hostd, align 4
  %48 = call i32 @STRCEQ(i8* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @XLOG_INFO, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 (...) @am_get_hostname()
  %54 = load i32, i32* @hostd, align 4
  %55 = call i32 (i32, i8*, ...) @plog(i32 %51, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i8* %52, i32 %53, i32 %54)
  %56 = load i8* (%struct.TYPE_8__*)*, i8* (%struct.TYPE_8__*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @nfs_ops, i32 0, i32 0), align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = call i8* %56(%struct.TYPE_8__* %57)
  store i8* %58, i8** %6, align 8
  br label %78

59:                                               ; preds = %45, %40
  %60 = load i8*, i8** %4, align 8
  %61 = call i64 @lstat(i8* %60, %struct.stat* %7)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i32, i32* @XLOG_INFO, align 4
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 (i32, i8*, ...) @plog(i32 %64, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  %67 = load i8* (%struct.TYPE_8__*)*, i8* (%struct.TYPE_8__*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @nfs_ops, i32 0, i32 0), align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = call i8* %67(%struct.TYPE_8__* %68)
  store i8* %69, i8** %6, align 8
  br label %77

70:                                               ; preds = %59
  %71 = load i32, i32* @XLOG_INFO, align 4
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 (i32, i8*, ...) @plog(i32 %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %72)
  %74 = load i8* (%struct.TYPE_8__*)*, i8* (%struct.TYPE_8__*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @amfs_link_ops, i32 0, i32 0), align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %76 = call i8* %74(%struct.TYPE_8__* %75)
  store i8* %76, i8** %6, align 8
  br label %77

77:                                               ; preds = %70, %63
  br label %78

78:                                               ; preds = %77, %50
  %79 = load i8*, i8** %6, align 8
  store i8* %79, i8** %2, align 8
  br label %80

80:                                               ; preds = %78, %37
  %81 = load i8*, i8** %2, align 8
  ret i8* %81
}

declare dso_local i32 @plog(i32, i8*, ...) #1

declare dso_local i32 @STRCEQ(i8*, i32) #1

declare dso_local i32 @am_get_hostname(...) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/conf/transp/extr_transp_sockets.c_create_amq_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/conf/transp/extr_transp_sockets.c_create_amq_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconfig = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@XLOG_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"cannot create tcp socket for amq service: %m\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"can't bind amq service to requested TCP port %d: %m)\00", align 1
@AMQ_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"cannot create tcp service for amq: soAMQp=%d\00", align 1
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"cannot create udp socket for amq service: %m\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"can't bind amq service to requested UDP port %d: %m)\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"cannot create udp service for amq: soAMQp=%d\00", align 1
@RPC_MAXDATASIZE = common dso_local global i32 0, align 4
@SVCSET_CONNMAXREC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_amq_service(i32* %0, i32** %1, %struct.netconfig** %2, i32* %3, i32** %4, %struct.netconfig** %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca %struct.netconfig**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca %struct.netconfig**, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32** %1, i32*** %10, align 8
  store %struct.netconfig** %2, %struct.netconfig*** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32** %4, i32*** %13, align 8
  store %struct.netconfig** %5, %struct.netconfig*** %14, align 8
  store i32 %6, i32* %15, align 4
  %16 = load i32*, i32** %12, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %59

18:                                               ; preds = %7
  %19 = load i32, i32* @AF_INET, align 4
  %20 = load i32, i32* @SOCK_STREAM, align 4
  %21 = call i32 @socket(i32 %19, i32 %20, i32 0)
  %22 = load i32*, i32** %12, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %12, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @XLOG_FATAL, align 4
  %28 = call i32 (i32, i8*, ...) @plog(i32 %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %104

29:                                               ; preds = %18
  %30 = load i32, i32* %15, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @bind_resv_port(i32 %34, i32* %15)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @XLOG_FATAL, align 4
  %39 = load i32, i32* %15, align 4
  %40 = call i32 (i32, i8*, ...) @plog(i32 %38, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  store i32 1, i32* %8, align 4
  br label %104

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %29
  %43 = load i32**, i32*** %13, align 8
  %44 = icmp ne i32** %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = load i32*, i32** %12, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AMQ_SIZE, align 4
  %49 = load i32, i32* @AMQ_SIZE, align 4
  %50 = call i32* @svctcp_create(i32 %47, i32 %48, i32 %49)
  %51 = load i32**, i32*** %13, align 8
  store i32* %50, i32** %51, align 8
  %52 = icmp eq i32* %50, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load i32, i32* @XLOG_FATAL, align 4
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, ...) @plog(i32 %54, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  store i32 1, i32* %8, align 4
  br label %104

58:                                               ; preds = %45, %42
  br label %59

59:                                               ; preds = %58, %7
  %60 = load i32*, i32** %9, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %103

62:                                               ; preds = %59
  %63 = load i32, i32* @AF_INET, align 4
  %64 = load i32, i32* @SOCK_DGRAM, align 4
  %65 = call i32 @socket(i32 %63, i32 %64, i32 0)
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i32, i32* @XLOG_FATAL, align 4
  %72 = call i32 (i32, i8*, ...) @plog(i32 %71, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %104

73:                                               ; preds = %62
  %74 = load i32, i32* %15, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @bind_resv_port(i32 %78, i32* %15)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* @XLOG_FATAL, align 4
  %83 = load i32, i32* %15, align 4
  %84 = call i32 (i32, i8*, ...) @plog(i32 %82, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  store i32 1, i32* %8, align 4
  br label %104

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %73
  %87 = load i32**, i32*** %10, align 8
  %88 = icmp ne i32** %87, null
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @AMQ_SIZE, align 4
  %93 = load i32, i32* @AMQ_SIZE, align 4
  %94 = call i32* @svcudp_bufcreate(i32 %91, i32 %92, i32 %93)
  %95 = load i32**, i32*** %10, align 8
  store i32* %94, i32** %95, align 8
  %96 = icmp eq i32* %94, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %89
  %98 = load i32, i32* @XLOG_FATAL, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i8*, ...) @plog(i32 %98, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %100)
  store i32 1, i32* %8, align 4
  br label %104

102:                                              ; preds = %89, %86
  br label %103

103:                                              ; preds = %102, %59
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %103, %97, %81, %70, %53, %37, %26
  %105 = load i32, i32* %8, align 4
  ret i32 %105
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @plog(i32, i8*, ...) #1

declare dso_local i64 @bind_resv_port(i32, i32*) #1

declare dso_local i32* @svctcp_create(i32, i32, i32) #1

declare dso_local i32* @svcudp_bufcreate(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

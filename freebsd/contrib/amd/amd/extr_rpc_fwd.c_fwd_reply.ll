; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_rpc_fwd.c_fwd_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_rpc_fwd.c_fwd_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 (i32, i32, %struct.sockaddr_in*, i32*, i32, i32)*, i32 }
%struct.sockaddr_in = type { i64 }
%struct.sockaddr = type { i32 }

@MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@fwd_sock = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Error reading RPC reply: %m\00", align 1
@amd_state = common dso_local global i64 0, align 8
@Finishing = common dso_local global i64 0, align 8
@RPC_XID_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Receiving PORTMAP reply %#x\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Receiving MOUNTD reply %#x\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Receiving NFS ping %#x\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Receiving WebNFS lookup %#x\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"UNKNOWN RPC XID %#x\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Can't forward reply id %#x\00", align 1
@TRUE = common dso_local global i32 0, align 4
@TLOOK = common dso_local global i64 0, align 8
@t_errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fwd_reply() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.sockaddr_in, align 8
  %9 = alloca i32, align 4
  %10 = load i32, i32* @MAX_PACKET_SIZE, align 4
  %11 = sext i32 %10 to i64
  %12 = udiv i64 %11, 4
  %13 = add i64 %12, 1
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %2, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %3, align 8
  %16 = load i32, i32* @MAX_PACKET_SIZE, align 4
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %41, %0
  store i32 8, i32* %9, align 4
  %18 = load i32, i32* @fwd_sock, align 4
  %19 = bitcast i32* %15 to i8*
  %20 = load i32, i32* %1, align 4
  %21 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %22 = call i32 @recvfrom(i32 %18, i8* %19, i32 %20, i32 0, %struct.sockaddr* %21, i32* %9)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 8
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AF_INET, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %29, %25, %17
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @EINTR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %17

42:                                               ; preds = %37, %34
  %43 = load i32, i32* @XLOG_ERROR, align 4
  %44 = call i32 (i32, i8*, ...) @plog(i32 %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %108

45:                                               ; preds = %29
  %46 = load i64, i64* @amd_state, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i64, i64* @Finishing, align 8
  %49 = trunc i64 %48 to i32
  %50 = icmp sge i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %108

52:                                               ; preds = %45
  store i32* %15, i32** %4, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ntohl(i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @RPC_XID_MASK, align 4
  %58 = and i32 %56, %57
  switch i32 %58, label %71 [
    i32 129, label %59
    i32 131, label %62
    i32 130, label %65
    i32 128, label %68
  ]

59:                                               ; preds = %52
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @dlog(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %74

62:                                               ; preds = %52
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @dlog(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %74

65:                                               ; preds = %52
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @dlog(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  br label %74

68:                                               ; preds = %52
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @dlog(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  br label %74

71:                                               ; preds = %52
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @dlog(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %71, %68, %65, %62, %59
  %75 = load i32, i32* %5, align 4
  %76 = call %struct.TYPE_10__* @fwd_locate(i32 %75)
  store %struct.TYPE_10__* %76, %struct.TYPE_10__** %7, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %78 = icmp ne %struct.TYPE_10__* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @dlog(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %80)
  br label %108

82:                                               ; preds = %74
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load i32 (i32, i32, %struct.sockaddr_in*, i32*, i32, i32)*, i32 (i32, i32, %struct.sockaddr_in*, i32*, i32, i32)** %84, align 8
  %86 = icmp ne i32 (i32, i32, %struct.sockaddr_in*, i32*, i32, i32)* %85, null
  br i1 %86, label %87, label %105

87:                                               ; preds = %82
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @htonl(i32 %90)
  %92 = load i32*, i32** %4, align 8
  store i32 %91, i32* %92, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load i32 (i32, i32, %struct.sockaddr_in*, i32*, i32, i32)*, i32 (i32, i32, %struct.sockaddr_in*, i32*, i32, i32)** %94, align 8
  %96 = ptrtoint i32* %15 to i32
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @TRUE, align 4
  %104 = call i32 %95(i32 %96, i32 %97, %struct.sockaddr_in* %8, i32* %99, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %87, %82
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %107 = call i32 @fwd_free(%struct.TYPE_10__* %106)
  br label %108

108:                                              ; preds = %105, %79, %51, %42
  %109 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %109)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #2

declare dso_local i32 @plog(i32, i8*, ...) #2

declare dso_local i32 @ntohl(i32) #2

declare dso_local i32 @dlog(i8*, i32) #2

declare dso_local %struct.TYPE_10__* @fwd_locate(i32) #2

declare dso_local i32 @htonl(i32) #2

declare dso_local i32 @fwd_free(%struct.TYPE_10__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

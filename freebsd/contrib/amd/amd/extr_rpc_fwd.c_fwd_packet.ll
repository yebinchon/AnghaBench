; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_rpc_fwd.c_fwd_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_rpc_fwd.c_fwd_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.sockaddr_in, i32*, i32 }
%struct.sockaddr = type { i32 }

@amd_state = common dso_local global i64 0, align 8
@Finishing = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@RPC_XID_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Sending PORTMAP request %#x\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Sending MOUNTD request %#x\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Sending NFS ping %#x\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Sending WebNFS lookup %#x\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"UNKNOWN RPC XID %#x\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Discarding earlier rpc fwd handle\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Allocating a new xid...\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@AM_ERRNO_HOST_DOWN = common dso_local global i32 0, align 4
@fwd_sock = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@XLOG_ERROR = common dso_local global i32 0, align 4
@t_errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fwd_packet(i32 %0, i8* %1, i32 %2, %struct.sockaddr_in* %3, %struct.sockaddr_in* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca %struct.sockaddr_in*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.sockaddr_in* %3, %struct.sockaddr_in** %12, align 8
  store %struct.sockaddr_in* %4, %struct.sockaddr_in** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %19 = load i64, i64* @amd_state, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i64, i64* @Finishing, align 8
  %22 = trunc i64 %21 to i32
  %23 = icmp sge i32 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %7
  %25 = load i32, i32* @ENOENT, align 4
  store i32 %25, i32* %8, align 4
  br label %123

26:                                               ; preds = %7
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @RPC_XID_MASK, align 4
  %29 = and i32 %27, %28
  switch i32 %29, label %42 [
    i32 129, label %30
    i32 131, label %33
    i32 130, label %36
    i32 128, label %39
  ]

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %45

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  %35 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %45

36:                                               ; preds = %26
  %37 = load i32, i32* %9, align 4
  %38 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %45

39:                                               ; preds = %26
  %40 = load i32, i32* %9, align 4
  %41 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  br label %45

42:                                               ; preds = %26
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %42, %39, %36, %33, %30
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @RPC_XID_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = load i32, i32* %9, align 4
  %53 = call %struct.TYPE_13__* @fwd_locate(i32 %52)
  store %struct.TYPE_13__* %53, %struct.TYPE_13__** %16, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %55 = icmp ne %struct.TYPE_13__* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %59 = call i32 @fwd_free(%struct.TYPE_13__* %58)
  br label %60

60:                                               ; preds = %56, %51
  br label %66

61:                                               ; preds = %45
  %62 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %63 = load i32, i32* %9, align 4
  %64 = call i32 (...) @XID_ALLOC()
  %65 = call i32 @MK_RPC_XID(i32 %63, i32 %64)
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %61, %60
  %67 = call %struct.TYPE_13__* (...) @fwd_alloc()
  store %struct.TYPE_13__* %67, %struct.TYPE_13__** %16, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %69 = icmp ne %struct.TYPE_13__* %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* @ENOBUFS, align 4
  store i32 %71, i32* %8, align 4
  br label %123

72:                                               ; preds = %66
  store i32 0, i32* %18, align 4
  %73 = load i8*, i8** %10, align 8
  %74 = bitcast i8* %73 to i32*
  store i32* %74, i32** %17, align 8
  %75 = load i32*, i32** %17, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ntohl(i32 %76)
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @htonl(i32 %83)
  %85 = load i32*, i32** %17, align 8
  store i32 %84, i32* %85, align 4
  %86 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %87 = icmp ne %struct.sockaddr_in* %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %72
  %89 = load i32, i32* @AM_ERRNO_HOST_DOWN, align 4
  store i32 %89, i32* %18, align 4
  br label %101

90:                                               ; preds = %72
  %91 = load i32, i32* @fwd_sock, align 4
  %92 = load i8*, i8** %10, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %95 = bitcast %struct.sockaddr_in* %94 to %struct.sockaddr*
  %96 = call i64 @sendto(i32 %91, i8* %92, i32 %93, i32 0, %struct.sockaddr* %95, i32 8)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = load i32, i32* @errno, align 4
  store i32 %99, i32* %18, align 4
  br label %100

100:                                              ; preds = %98, %90
  br label %101

101:                                              ; preds = %100, %88
  %102 = load i32*, i32** %15, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 3
  store i32* %102, i32** %104, align 8
  %105 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %106 = icmp ne %struct.sockaddr_in* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 2
  %110 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %111 = bitcast %struct.sockaddr_in* %109 to i8*
  %112 = bitcast %struct.sockaddr_in* %110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 4 %112, i64 8, i1 false)
  br label %118

113:                                              ; preds = %101
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  %116 = ptrtoint %struct.sockaddr_in* %115 to i32
  %117 = call i32 @memset(i32 %116, i32 0, i32 8)
  br label %118

118:                                              ; preds = %113, %107
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %18, align 4
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %118, %70, %24
  %124 = load i32, i32* %8, align 4
  ret i32 %124
}

declare dso_local i32 @dlog(i8*, ...) #1

declare dso_local %struct.TYPE_13__* @fwd_locate(i32) #1

declare dso_local i32 @fwd_free(%struct.TYPE_13__*) #1

declare dso_local i32 @MK_RPC_XID(i32, i32) #1

declare dso_local i32 @XID_ALLOC(...) #1

declare dso_local %struct.TYPE_13__* @fwd_alloc(...) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

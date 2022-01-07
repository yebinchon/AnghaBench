; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_ops_nfs.c_webnfs_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_ops_nfs.c_webnfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_12__, i32, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.rpc_msg = type { i32 }
%struct.TYPE_16__ = type { i8*, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }

@UDPMSGSIZE = common dso_local global i32 0, align 4
@nfs_auth = common dso_local global i32 0, align 4
@XLOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"webnfs_lookup: port == 0 for nfs on %s, fixed\00", align 1
@NFS_PORT = common dso_local global i32 0, align 4
@NFSPROC_LOOKUP = common dso_local global i32 0, align 4
@xdr_diropargs = common dso_local global i64 0, align 8
@NFS_FHSIZE = common dso_local global i32 0, align 4
@XLOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"webnfs_lookup: NFS version %d\00", align 1
@NFS_PROGRAM = common dso_local global i32 0, align 4
@RPC_XID_WEBNFS = common dso_local global i32 0, align 4
@AM_NFSPROC3_LOOKUP = common dso_local global i32 0, align 4
@NFS_VERSION3 = common dso_local global i64 0, align 8
@xdr_am_LOOKUP3args = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32, i32)* @webnfs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @webnfs_lookup(%struct.TYPE_17__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rpc_msg, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_16__, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %20 = load i32, i32* @UDPMSGSIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %10, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %24 = load i32, i32* @nfs_auth, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %3
  %27 = call i32 (...) @make_nfs_auth()
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %123

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %3
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %33
  %40 = load i32, i32* @XLOG_WARNING, align 4
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @plog(i32 %40, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @NFS_PORT, align 4
  %48 = call i64 @htons(i32 %47)
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  br label %52

52:                                               ; preds = %39, %33
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @strlen(i32 %55)
  %57 = add nsw i32 %56, 2
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %18, align 8
  %59 = load i64, i64* %18, align 8
  %60 = call i64 @xmalloc(i64 %59)
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** %17, align 8
  %62 = load i8*, i8** %17, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  store i8 -128, i8* %63, align 1
  %64 = load i8*, i8** %17, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i64, i64* %18, align 8
  %70 = sub i64 %69, 1
  %71 = call i32 @xstrlcpy(i8* %65, i32 %68, i64 %70)
  %72 = load i32, i32* @NFSPROC_LOOKUP, align 4
  store i32 %72, i32* %13, align 4
  %73 = load i64, i64* @xdr_diropargs, align 8
  store i64 %73, i64* %14, align 8
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %75 = load i32, i32* @NFS_FHSIZE, align 4
  %76 = call i32 @memset(i32* %74, i32 0, i32 %75)
  %77 = load i8*, i8** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  store i8* %77, i8** %78, align 8
  %79 = load i32, i32* @XLOG_INFO, align 4
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @plog(i32 %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @NFS_PROGRAM, align 4
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @rpc_msg_init(%struct.rpc_msg* %8, i32 %85, i64 %88, i32 %89)
  %91 = trunc i64 %21 to i32
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %94 = load i64, i64* %14, align 8
  %95 = load i32, i32* @nfs_auth, align 4
  %96 = call i32 @make_rpc_packet(i8* %23, i32 %91, i32 %92, %struct.rpc_msg* %8, %struct.TYPE_16__* %93, i64 %94, i32 %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %52
  %100 = load i32, i32* @RPC_XID_WEBNFS, align 4
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @MK_RPC_XID(i32 %100, i64 %103)
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @fwd_packet(i32 %104, i8* %23, i32 %105, %struct.TYPE_12__* %107, %struct.TYPE_12__* %109, i32 %113, i32 %114)
  store i32 %115, i32* %12, align 4
  br label %119

116:                                              ; preds = %52
  %117 = load i32, i32* %9, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %116, %99
  %120 = load i8*, i8** %17, align 8
  %121 = call i32 @XFREE(i8* %120)
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %123

123:                                              ; preds = %119, %30
  %124 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @make_nfs_auth(...) #2

declare dso_local i32 @plog(i32, i8*, i32) #2

declare dso_local i64 @htons(i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i64 @xmalloc(i64) #2

declare dso_local i32 @xstrlcpy(i8*, i32, i64) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @rpc_msg_init(%struct.rpc_msg*, i32, i64, i32) #2

declare dso_local i32 @make_rpc_packet(i8*, i32, i32, %struct.rpc_msg*, %struct.TYPE_16__*, i64, i32) #2

declare dso_local i32 @fwd_packet(i32, i8*, i32, %struct.TYPE_12__*, %struct.TYPE_12__*, i32, i32) #2

declare dso_local i32 @MK_RPC_XID(i32, i64) #2

declare dso_local i32 @XFREE(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

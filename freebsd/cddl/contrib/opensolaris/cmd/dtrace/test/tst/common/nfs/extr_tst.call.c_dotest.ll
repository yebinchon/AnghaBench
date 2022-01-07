; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/test/tst/common/nfs/extr_tst.call.c_dotest.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/test/tst/common/nfs/extr_tst.call.c_dotest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_9__, i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.timeval = type { i32, i64 }

@.str = private unnamed_addr constant [12 x i8] c"dtrace test\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@NFS4_PROGRAM = common dso_local global i32 0, align 4
@NFS_V4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@OP_PUTROOTFH = common dso_local global i32 0, align 4
@NFSPROC4_COMPOUND = common dso_local global i32 0, align 4
@xdr_COMPOUND4args = common dso_local global i32 0, align 4
@xdr_COMPOUND4res = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dotest() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_12__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.timeval, align 8
  %8 = alloca [1 x %struct.TYPE_11__], align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store volatile i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %14, %0
  %12 = call i64 @waiting(i32* %10)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %11

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 30, i32* %16, align 8
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @NFS4_PROGRAM, align 4
  %19 = load i32, i32* @NFS_V4, align 4
  %20 = call %struct.TYPE_13__* @clnt_create(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %2, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = icmp eq %struct.TYPE_13__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = call i32 @clnt_pcreateerror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %61

25:                                               ; preds = %15
  %26 = call i32* (...) @authsys_create_default()
  store i32* %26, i32** %3, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %8, i64 0, i64 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %42, align 8
  %43 = load i32, i32* @OP_PUTROOTFH, align 4
  %44 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %8, i64 0, i64 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = call i32 @bzero(i32* %5, i32 4)
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %48 = load i32, i32* @NFSPROC4_COMPOUND, align 4
  %49 = load i32, i32* @xdr_COMPOUND4args, align 4
  %50 = ptrtoint %struct.TYPE_12__* %4 to i32
  %51 = load i32, i32* @xdr_COMPOUND4res, align 4
  %52 = ptrtoint i32* %5 to i32
  %53 = call i32 @clnt_call(%struct.TYPE_13__* %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, %struct.timeval* byval(%struct.timeval) align 8 %7)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @RPC_SUCCESS, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %25
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %59 = call i32 @clnt_perror(%struct.TYPE_13__* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 2, i32* %1, align 4
  br label %61

60:                                               ; preds = %25
  store i32 0, i32* %1, align 4
  br label %61

61:                                               ; preds = %60, %57, %23
  %62 = load i32, i32* %1, align 4
  ret i32 %62
}

declare dso_local i64 @waiting(i32*) #1

declare dso_local %struct.TYPE_13__* @clnt_create(i8*, i32, i32, i8*) #1

declare dso_local i32 @clnt_pcreateerror(i8*) #1

declare dso_local i32* @authsys_create_default(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @clnt_call(%struct.TYPE_13__*, i32, i32, i32, i32, i32, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @clnt_perror(%struct.TYPE_13__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

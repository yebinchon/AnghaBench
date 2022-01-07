; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_rxrpc.c_afs_send_simple_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_rxrpc.c_afs_send_simple_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.afs_call*)* }
%struct.msghdr = type { i32, i64, i64, i32*, %struct.iovec*, i64, i32* }
%struct.iovec = type { i64, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AFS_CALL_AWAIT_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c" [replied]\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"oom\00", align 1
@RX_USER_ABORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c" [error]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @afs_send_simple_reply(%struct.afs_call* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.afs_call*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.msghdr, align 8
  %8 = alloca [1 x %struct.iovec], align 16
  %9 = alloca i32, align 4
  store %struct.afs_call* %0, %struct.afs_call** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %8, i64 0, i64 0
  %13 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %8, i64 0, i64 0
  %16 = getelementptr inbounds %struct.iovec, %struct.iovec* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 16
  %17 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 6
  store i32* null, i32** %17, align 8
  %18 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 5
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %8, i64 0, i64 0
  %20 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 4
  store %struct.iovec* %19, %struct.iovec** %20, align 8
  %21 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 3
  store i32* null, i32** %22, align 8
  %23 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @AFS_CALL_AWAIT_ACK, align 4
  %26 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %27 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %29 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @rxrpc_kernel_send_data(i32* %30, %struct.msghdr* %7, i64 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = call i32 @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %66

37:                                               ; preds = %3
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = call i32 @_debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %45 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @RX_USER_ABORT, align 4
  %48 = call i32 @rxrpc_kernel_abort_call(i32* %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %37
  %50 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %51 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @rxrpc_kernel_end_call(i32* %52)
  %54 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %55 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %54, i32 0, i32 1
  store i32* null, i32** %55, align 8
  %56 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %57 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (%struct.afs_call*)*, i32 (%struct.afs_call*)** %59, align 8
  %61 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %62 = call i32 %60(%struct.afs_call* %61)
  %63 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %64 = call i32 @afs_free_call(%struct.afs_call* %63)
  %65 = call i32 @_leave(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %49, %35
  ret void
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @rxrpc_kernel_send_data(i32*, %struct.msghdr*, i64) #1

declare dso_local i32 @_leave(i8*) #1

declare dso_local i32 @_debug(i8*) #1

declare dso_local i32 @rxrpc_kernel_abort_call(i32*, i32) #1

declare dso_local i32 @rxrpc_kernel_end_call(i32*) #1

declare dso_local i32 @afs_free_call(%struct.afs_call*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

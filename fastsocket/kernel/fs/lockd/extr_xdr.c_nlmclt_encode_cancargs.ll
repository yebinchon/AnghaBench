; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_xdr.c_nlmclt_encode_cancargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_xdr.c_nlmclt_encode_cancargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i32, %struct.nlm_lock }
%struct.nlm_lock = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@xdr_one = common dso_local global i8* null, align 8
@xdr_zero = common dso_local global i8* null, align 8
@F_WRLCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.TYPE_5__*)* @nlmclt_encode_cancargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlmclt_encode_cancargs(%struct.rpc_rqst* %0, i32* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.nlm_lock*, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  store %struct.nlm_lock* %10, %struct.nlm_lock** %8, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = call i32* @nlm_encode_cookie(i32* %11, i32* %13)
  store i32* %14, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %63

19:                                               ; preds = %3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i8*, i8** @xdr_one, align 8
  br label %28

26:                                               ; preds = %19
  %27 = load i8*, i8** @xdr_zero, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i8* [ %25, %24 ], [ %27, %26 ]
  %30 = ptrtoint i8* %29 to i32
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  %33 = load %struct.nlm_lock*, %struct.nlm_lock** %8, align 8
  %34 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @F_WRLCK, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i8*, i8** @xdr_one, align 8
  br label %43

41:                                               ; preds = %28
  %42 = load i8*, i8** @xdr_zero, align 8
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i8* [ %40, %39 ], [ %42, %41 ]
  %45 = ptrtoint i8* %44 to i32
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %6, align 8
  store i32 %45, i32* %46, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.nlm_lock*, %struct.nlm_lock** %8, align 8
  %50 = call i32* @nlm_encode_lock(i32* %48, %struct.nlm_lock* %49)
  store i32* %50, i32** %6, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %63

55:                                               ; preds = %43
  %56 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %57 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @xdr_adjust_iovec(i32 %58, i32* %59)
  %61 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %62 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %55, %52, %16
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32* @nlm_encode_cookie(i32*, i32*) #1

declare dso_local i32* @nlm_encode_lock(i32*, %struct.nlm_lock*) #1

declare dso_local i32 @xdr_adjust_iovec(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

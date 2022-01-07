; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_callback_xdr.c_encode_compound_hdr_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_callback_xdr.c_encode_compound_hdr_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.cb_compound_hdr_res = type { i32*, i32, i32, i32* }

@NFS4ERR_RESOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xdr_stream*, %struct.cb_compound_hdr_res*)* @encode_compound_hdr_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @encode_compound_hdr_res(%struct.xdr_stream* %0, %struct.cb_compound_hdr_res* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.cb_compound_hdr_res*, align 8
  %6 = alloca i64, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.cb_compound_hdr_res* %1, %struct.cb_compound_hdr_res** %5, align 8
  %7 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %8 = call i8* @xdr_reserve_space(%struct.xdr_stream* %7, i32 4)
  %9 = bitcast i8* %8 to i32*
  %10 = load %struct.cb_compound_hdr_res*, %struct.cb_compound_hdr_res** %5, align 8
  %11 = getelementptr inbounds %struct.cb_compound_hdr_res, %struct.cb_compound_hdr_res* %10, i32 0, i32 3
  store i32* %9, i32** %11, align 8
  %12 = load %struct.cb_compound_hdr_res*, %struct.cb_compound_hdr_res** %5, align 8
  %13 = getelementptr inbounds %struct.cb_compound_hdr_res, %struct.cb_compound_hdr_res* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @NFS4ERR_RESOURCE, align 4
  %21 = call i64 @htonl(i32 %20)
  store i64 %21, i64* %3, align 8
  br label %55

22:                                               ; preds = %2
  %23 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %24 = load %struct.cb_compound_hdr_res*, %struct.cb_compound_hdr_res** %5, align 8
  %25 = getelementptr inbounds %struct.cb_compound_hdr_res, %struct.cb_compound_hdr_res* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cb_compound_hdr_res*, %struct.cb_compound_hdr_res** %5, align 8
  %28 = getelementptr inbounds %struct.cb_compound_hdr_res, %struct.cb_compound_hdr_res* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @encode_string(%struct.xdr_stream* %23, i32 %26, i32 %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i64, i64* %6, align 8
  store i64 %37, i64* %3, align 8
  br label %55

38:                                               ; preds = %22
  %39 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %40 = call i8* @xdr_reserve_space(%struct.xdr_stream* %39, i32 4)
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.cb_compound_hdr_res*, %struct.cb_compound_hdr_res** %5, align 8
  %43 = getelementptr inbounds %struct.cb_compound_hdr_res, %struct.cb_compound_hdr_res* %42, i32 0, i32 0
  store i32* %41, i32** %43, align 8
  %44 = load %struct.cb_compound_hdr_res*, %struct.cb_compound_hdr_res** %5, align 8
  %45 = getelementptr inbounds %struct.cb_compound_hdr_res, %struct.cb_compound_hdr_res* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = load i32, i32* @NFS4ERR_RESOURCE, align 4
  %53 = call i64 @htonl(i32 %52)
  store i64 %53, i64* %3, align 8
  br label %55

54:                                               ; preds = %38
  store i64 0, i64* %3, align 8
  br label %55

55:                                               ; preds = %54, %51, %36, %19
  %56 = load i64, i64* %3, align 8
  ret i64 %56
}

declare dso_local i8* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i64 @encode_string(%struct.xdr_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

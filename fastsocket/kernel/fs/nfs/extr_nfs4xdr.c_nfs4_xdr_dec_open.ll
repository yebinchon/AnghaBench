; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_dec_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_dec_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.nfs_openres = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.xdr_stream = type { i32 }
%struct.compound_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs_openres*)* @nfs4_xdr_dec_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_xdr_dec_open(%struct.rpc_rqst* %0, i32* %1, %struct.nfs_openres* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfs_openres*, align 8
  %7 = alloca %struct.xdr_stream, align 4
  %8 = alloca %struct.compound_hdr, align 4
  %9 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nfs_openres* %2, %struct.nfs_openres** %6, align 8
  %10 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %11 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %10, i32 0, i32 0
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @xdr_init_decode(%struct.xdr_stream* %7, i32* %11, i32* %12)
  %14 = call i32 @decode_compound_hdr(%struct.xdr_stream* %7, %struct.compound_hdr* %8)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %64

18:                                               ; preds = %3
  %19 = load %struct.nfs_openres*, %struct.nfs_openres** %6, align 8
  %20 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %19, i32 0, i32 6
  %21 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %22 = call i32 @decode_sequence(%struct.xdr_stream* %7, i32* %20, %struct.rpc_rqst* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %64

26:                                               ; preds = %18
  %27 = call i32 @decode_putfh(%struct.xdr_stream* %7)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %64

31:                                               ; preds = %26
  %32 = load %struct.nfs_openres*, %struct.nfs_openres** %6, align 8
  %33 = call i32 @decode_open(%struct.xdr_stream* %7, %struct.nfs_openres* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %64

37:                                               ; preds = %31
  %38 = load %struct.nfs_openres*, %struct.nfs_openres** %6, align 8
  %39 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %38, i32 0, i32 5
  %40 = call i64 @decode_getfh(%struct.xdr_stream* %7, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %64

43:                                               ; preds = %37
  %44 = load %struct.nfs_openres*, %struct.nfs_openres** %6, align 8
  %45 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.nfs_openres*, %struct.nfs_openres** %6, align 8
  %50 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %49, i32 0, i32 3
  %51 = load %struct.nfs_openres*, %struct.nfs_openres** %6, align 8
  %52 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %51, i32 0, i32 2
  %53 = call i64 @decode_access(%struct.xdr_stream* %7, i32* %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %64

56:                                               ; preds = %48, %43
  %57 = load %struct.nfs_openres*, %struct.nfs_openres** %6, align 8
  %58 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.nfs_openres*, %struct.nfs_openres** %6, align 8
  %61 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @decode_getfattr(%struct.xdr_stream* %7, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %56, %55, %42, %36, %30, %25, %17
  %65 = load i32, i32* %9, align 4
  ret i32 %65
}

declare dso_local i32 @xdr_init_decode(%struct.xdr_stream*, i32*, i32*) #1

declare dso_local i32 @decode_compound_hdr(%struct.xdr_stream*, %struct.compound_hdr*) #1

declare dso_local i32 @decode_sequence(%struct.xdr_stream*, i32*, %struct.rpc_rqst*) #1

declare dso_local i32 @decode_putfh(%struct.xdr_stream*) #1

declare dso_local i32 @decode_open(%struct.xdr_stream*, %struct.nfs_openres*) #1

declare dso_local i64 @decode_getfh(%struct.xdr_stream*, i32*) #1

declare dso_local i64 @decode_access(%struct.xdr_stream*, i32*, i32*) #1

declare dso_local i32 @decode_getfattr(%struct.xdr_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

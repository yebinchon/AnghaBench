; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_dec_open_noattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_dec_open_noattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.nfs_openres = type { i32, i32, i32, i32, i64, i32 }
%struct.xdr_stream = type { i32 }
%struct.compound_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs_openres*)* @nfs4_xdr_dec_open_noattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_xdr_dec_open_noattr(%struct.rpc_rqst* %0, i32* %1, %struct.nfs_openres* %2) #0 {
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
  br label %60

18:                                               ; preds = %3
  %19 = load %struct.nfs_openres*, %struct.nfs_openres** %6, align 8
  %20 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %19, i32 0, i32 5
  %21 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %22 = call i32 @decode_sequence(%struct.xdr_stream* %7, i32* %20, %struct.rpc_rqst* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %60

26:                                               ; preds = %18
  %27 = call i32 @decode_putfh(%struct.xdr_stream* %7)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %60

31:                                               ; preds = %26
  %32 = load %struct.nfs_openres*, %struct.nfs_openres** %6, align 8
  %33 = call i32 @decode_open(%struct.xdr_stream* %7, %struct.nfs_openres* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %60

37:                                               ; preds = %31
  %38 = load %struct.nfs_openres*, %struct.nfs_openres** %6, align 8
  %39 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.nfs_openres*, %struct.nfs_openres** %6, align 8
  %44 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %43, i32 0, i32 3
  %45 = load %struct.nfs_openres*, %struct.nfs_openres** %6, align 8
  %46 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %45, i32 0, i32 2
  %47 = call i32 @decode_access(%struct.xdr_stream* %7, i32* %44, i32* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %60

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %37
  %53 = load %struct.nfs_openres*, %struct.nfs_openres** %6, align 8
  %54 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nfs_openres*, %struct.nfs_openres** %6, align 8
  %57 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @decode_getfattr(%struct.xdr_stream* %7, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %52, %50, %36, %30, %25, %17
  %61 = load i32, i32* %9, align 4
  ret i32 %61
}

declare dso_local i32 @xdr_init_decode(%struct.xdr_stream*, i32*, i32*) #1

declare dso_local i32 @decode_compound_hdr(%struct.xdr_stream*, %struct.compound_hdr*) #1

declare dso_local i32 @decode_sequence(%struct.xdr_stream*, i32*, %struct.rpc_rqst*) #1

declare dso_local i32 @decode_putfh(%struct.xdr_stream*) #1

declare dso_local i32 @decode_open(%struct.xdr_stream*, %struct.nfs_openres*) #1

declare dso_local i32 @decode_access(%struct.xdr_stream*, i32*, i32*) #1

declare dso_local i32 @decode_getfattr(%struct.xdr_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

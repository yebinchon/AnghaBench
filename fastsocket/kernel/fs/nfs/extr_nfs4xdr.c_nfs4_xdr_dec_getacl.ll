; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_dec_getacl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_dec_getacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.nfs_getaclres = type { i32, i32* }
%struct.xdr_stream = type { i32 }
%struct.compound_hdr = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs_getaclres*)* @nfs4_xdr_dec_getacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_xdr_dec_getacl(%struct.rpc_rqst* %0, i32* %1, %struct.nfs_getaclres* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfs_getaclres*, align 8
  %7 = alloca %struct.xdr_stream, align 4
  %8 = alloca %struct.compound_hdr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nfs_getaclres* %2, %struct.nfs_getaclres** %6, align 8
  %11 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %12 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %11, i32 0, i32 0
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @xdr_init_decode(%struct.xdr_stream* %7, i32* %12, i32* %13)
  %15 = load %struct.nfs_getaclres*, %struct.nfs_getaclres** %6, align 8
  %16 = getelementptr inbounds %struct.nfs_getaclres, %struct.nfs_getaclres* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.nfs_getaclres*, %struct.nfs_getaclres** %6, align 8
  %21 = getelementptr inbounds %struct.nfs_getaclres, %struct.nfs_getaclres* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i8* @page_address(i32* %22)
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = call i32 @xdr_set_scratch_buffer(%struct.xdr_stream* %7, i8* %24, i32 %25)
  br label %27

27:                                               ; preds = %19, %3
  %28 = call i32 @decode_compound_hdr(%struct.xdr_stream* %7, %struct.compound_hdr* %8)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %49

32:                                               ; preds = %27
  %33 = load %struct.nfs_getaclres*, %struct.nfs_getaclres** %6, align 8
  %34 = getelementptr inbounds %struct.nfs_getaclres, %struct.nfs_getaclres* %33, i32 0, i32 0
  %35 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %36 = call i32 @decode_sequence(%struct.xdr_stream* %7, i32* %34, %struct.rpc_rqst* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %49

40:                                               ; preds = %32
  %41 = call i32 @decode_putfh(%struct.xdr_stream* %7)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %49

45:                                               ; preds = %40
  %46 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %47 = load %struct.nfs_getaclres*, %struct.nfs_getaclres** %6, align 8
  %48 = call i32 @decode_getacl(%struct.xdr_stream* %7, %struct.rpc_rqst* %46, %struct.nfs_getaclres* %47)
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %45, %44, %39, %31
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local i32 @xdr_init_decode(%struct.xdr_stream*, i32*, i32*) #1

declare dso_local i8* @page_address(i32*) #1

declare dso_local i32 @xdr_set_scratch_buffer(%struct.xdr_stream*, i8*, i32) #1

declare dso_local i32 @decode_compound_hdr(%struct.xdr_stream*, %struct.compound_hdr*) #1

declare dso_local i32 @decode_sequence(%struct.xdr_stream*, i32*, %struct.rpc_rqst*) #1

declare dso_local i32 @decode_putfh(%struct.xdr_stream*) #1

declare dso_local i32 @decode_getacl(%struct.xdr_stream*, %struct.rpc_rqst*, %struct.nfs_getaclres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

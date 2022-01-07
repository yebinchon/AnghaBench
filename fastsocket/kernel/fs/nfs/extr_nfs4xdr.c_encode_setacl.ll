; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_setacl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_setacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nfs_setaclargs = type { i32, i32, i32 }
%struct.compound_hdr = type { i32, i32 }

@NFS4_STATEID_SIZE = common dso_local global i32 0, align 4
@OP_SETATTR = common dso_local global i32 0, align 4
@zero_stateid = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@FATTR4_WORD0_ACL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@decode_setacl_maxsz = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nfs_setaclargs*, %struct.compound_hdr*)* @encode_setacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_setacl(%struct.xdr_stream* %0, %struct.nfs_setaclargs* %1, %struct.compound_hdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca %struct.nfs_setaclargs*, align 8
  %7 = alloca %struct.compound_hdr*, align 8
  %8 = alloca i8**, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %5, align 8
  store %struct.nfs_setaclargs* %1, %struct.nfs_setaclargs** %6, align 8
  store %struct.compound_hdr* %2, %struct.compound_hdr** %7, align 8
  %9 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %10 = load i32, i32* @NFS4_STATEID_SIZE, align 4
  %11 = add nsw i32 4, %10
  %12 = call i8** @reserve_space(%struct.xdr_stream* %9, i32 %11)
  store i8** %12, i8*** %8, align 8
  %13 = load i32, i32* @OP_SETATTR, align 4
  %14 = call i8* @cpu_to_be32(i32 %13)
  %15 = load i8**, i8*** %8, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i32 1
  store i8** %16, i8*** %8, align 8
  store i8* %14, i8** %15, align 8
  %17 = load i8**, i8*** %8, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @zero_stateid, i32 0, i32 0), align 4
  %19 = load i32, i32* @NFS4_STATEID_SIZE, align 4
  %20 = call i32 @xdr_encode_opaque_fixed(i8** %17, i32 %18, i32 %19)
  %21 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %22 = call i8** @reserve_space(%struct.xdr_stream* %21, i32 8)
  store i8** %22, i8*** %8, align 8
  %23 = call i8* @cpu_to_be32(i32 1)
  %24 = load i8**, i8*** %8, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i32 1
  store i8** %25, i8*** %8, align 8
  store i8* %23, i8** %24, align 8
  %26 = load i32, i32* @FATTR4_WORD0_ACL, align 4
  %27 = call i8* @cpu_to_be32(i32 %26)
  %28 = load i8**, i8*** %8, align 8
  store i8* %27, i8** %28, align 8
  %29 = load %struct.nfs_setaclargs*, %struct.nfs_setaclargs** %6, align 8
  %30 = getelementptr inbounds %struct.nfs_setaclargs, %struct.nfs_setaclargs* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = srem i32 %31, 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %67

37:                                               ; preds = %3
  %38 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %39 = call i8** @reserve_space(%struct.xdr_stream* %38, i32 4)
  store i8** %39, i8*** %8, align 8
  %40 = load %struct.nfs_setaclargs*, %struct.nfs_setaclargs** %6, align 8
  %41 = getelementptr inbounds %struct.nfs_setaclargs, %struct.nfs_setaclargs* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @cpu_to_be32(i32 %42)
  %44 = load i8**, i8*** %8, align 8
  store i8* %43, i8** %44, align 8
  %45 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %46 = load %struct.nfs_setaclargs*, %struct.nfs_setaclargs** %6, align 8
  %47 = getelementptr inbounds %struct.nfs_setaclargs, %struct.nfs_setaclargs* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nfs_setaclargs*, %struct.nfs_setaclargs** %6, align 8
  %50 = getelementptr inbounds %struct.nfs_setaclargs, %struct.nfs_setaclargs* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nfs_setaclargs*, %struct.nfs_setaclargs** %6, align 8
  %53 = getelementptr inbounds %struct.nfs_setaclargs, %struct.nfs_setaclargs* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @xdr_write_pages(%struct.xdr_stream* %45, i32 %48, i32 %51, i32 %54)
  %56 = load %struct.compound_hdr*, %struct.compound_hdr** %7, align 8
  %57 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load i64, i64* @decode_setacl_maxsz, align 8
  %61 = load %struct.compound_hdr*, %struct.compound_hdr** %7, align 8
  %62 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %60
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 4
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %37, %34
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i8** @reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @xdr_encode_opaque_fixed(i8**, i32, i32) #1

declare dso_local i32 @xdr_write_pages(%struct.xdr_stream*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

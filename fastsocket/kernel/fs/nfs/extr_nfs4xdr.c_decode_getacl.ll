; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_decode_getacl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_decode_getacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rpc_rqst = type { i32 }
%struct.nfs_getaclres = type { i32, i64, i32 }

@OP_GETATTR = common dso_local global i32 0, align 4
@FATTR4_WORD0_ACL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NFS4_ACL_TRUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"NFS: acl reply: attrlen %u > page_len %u\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.rpc_rqst*, %struct.nfs_getaclres*)* @decode_getacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_getacl(%struct.xdr_stream* %0, %struct.rpc_rqst* %1, %struct.nfs_getaclres* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca %struct.rpc_rqst*, align 8
  %7 = alloca %struct.nfs_getaclres*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %5, align 8
  store %struct.rpc_rqst* %1, %struct.rpc_rqst** %6, align 8
  store %struct.nfs_getaclres* %2, %struct.nfs_getaclres** %7, align 8
  %13 = bitcast [2 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = load %struct.nfs_getaclres*, %struct.nfs_getaclres** %7, align 8
  %15 = getelementptr inbounds %struct.nfs_getaclres, %struct.nfs_getaclres* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %17 = load i32, i32* @OP_GETATTR, align 4
  %18 = call i32 @decode_op_hdr(%struct.xdr_stream* %16, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %116

21:                                               ; preds = %3
  %22 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %23 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %24 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @xdr_enter_page(%struct.xdr_stream* %22, i64 %27)
  %29 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %30 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %12, align 4
  %37 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %39 = call i32 @decode_attr_bitmap(%struct.xdr_stream* %37, i32* %38)
  store i32 %39, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %21
  br label %116

42:                                               ; preds = %21
  %43 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %44 = call i32 @decode_attr_length(%struct.xdr_stream* %43, i32* %9, i32* %8)
  store i32 %44, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %116

47:                                               ; preds = %42
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @FATTR4_WORD0_ACL, align 4
  %51 = sub i32 %50, 1
  %52 = and i32 %49, %51
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %118

58:                                               ; preds = %47
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @FATTR4_WORD0_ACL, align 4
  %62 = and i32 %60, %61
  %63 = call i64 @likely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %112

65:                                               ; preds = %58
  %66 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %67 = call i64 @xdr_stream_pos(%struct.xdr_stream* %66)
  %68 = load i32, i32* %12, align 4
  %69 = zext i32 %68 to i64
  %70 = sub nsw i64 %67, %69
  %71 = load %struct.nfs_getaclres*, %struct.nfs_getaclres** %7, align 8
  %72 = getelementptr inbounds %struct.nfs_getaclres, %struct.nfs_getaclres* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.nfs_getaclres*, %struct.nfs_getaclres** %7, align 8
  %75 = getelementptr inbounds %struct.nfs_getaclres, %struct.nfs_getaclres* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.nfs_getaclres*, %struct.nfs_getaclres** %7, align 8
  %77 = getelementptr inbounds %struct.nfs_getaclres, %struct.nfs_getaclres* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %80 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = shl i32 %81, 2
  %83 = icmp ugt i32 %78, %82
  br i1 %83, label %99, label %84

84:                                               ; preds = %65
  %85 = load %struct.nfs_getaclres*, %struct.nfs_getaclres** %7, align 8
  %86 = getelementptr inbounds %struct.nfs_getaclres, %struct.nfs_getaclres* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = zext i32 %87 to i64
  %89 = load %struct.nfs_getaclres*, %struct.nfs_getaclres** %7, align 8
  %90 = getelementptr inbounds %struct.nfs_getaclres, %struct.nfs_getaclres* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %88, %91
  %93 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %94 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp sgt i64 %92, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %84, %65
  %100 = load i32, i32* @NFS4_ACL_TRUNC, align 4
  %101 = load %struct.nfs_getaclres*, %struct.nfs_getaclres** %7, align 8
  %102 = getelementptr inbounds %struct.nfs_getaclres, %struct.nfs_getaclres* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %107 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = shl i32 %108, 2
  %110 = call i32 @dprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %105, i32 %109)
  br label %111

111:                                              ; preds = %99, %84
  br label %115

112:                                              ; preds = %58
  %113 = load i32, i32* @EOPNOTSUPP, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %112, %111
  br label %116

116:                                              ; preds = %115, %46, %41, %20
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %116, %55
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @decode_op_hdr(%struct.xdr_stream*, i32) #2

declare dso_local i32 @xdr_enter_page(%struct.xdr_stream*, i64) #2

declare dso_local i32 @decode_attr_bitmap(%struct.xdr_stream*, i32*) #2

declare dso_local i32 @decode_attr_length(%struct.xdr_stream*, i32*, i32*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i64 @likely(i32) #2

declare dso_local i64 @xdr_stream_pos(%struct.xdr_stream*) #2

declare dso_local i32 @dprintk(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

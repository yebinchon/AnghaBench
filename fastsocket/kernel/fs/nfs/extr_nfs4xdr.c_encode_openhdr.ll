; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_openhdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_openhdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_openargs = type { i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@OP_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"open id:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs_openargs*)* @encode_openhdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_openhdr(%struct.xdr_stream* %0, %struct.nfs_openargs* %1) #0 {
  %3 = alloca %struct.xdr_stream*, align 8
  %4 = alloca %struct.nfs_openargs*, align 8
  %5 = alloca i8**, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %3, align 8
  store %struct.nfs_openargs* %1, %struct.nfs_openargs** %4, align 8
  %6 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %7 = call i8** @reserve_space(%struct.xdr_stream* %6, i32 8)
  store i8** %7, i8*** %5, align 8
  %8 = load i32, i32* @OP_OPEN, align 4
  %9 = call i8* @cpu_to_be32(i32 %8)
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i32 1
  store i8** %11, i8*** %5, align 8
  store i8* %9, i8** %10, align 8
  %12 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %13 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %12, i32 0, i32 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @cpu_to_be32(i32 %18)
  %20 = load i8**, i8*** %5, align 8
  store i8* %19, i8** %20, align 8
  %21 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %22 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %23 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @encode_share_access(%struct.xdr_stream* %21, i32 %24)
  %26 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %27 = call i8** @reserve_space(%struct.xdr_stream* %26, i32 32)
  store i8** %27, i8*** %5, align 8
  %28 = load i8**, i8*** %5, align 8
  %29 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %30 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i8** @xdr_encode_hyper(i8** %28, i32 %31)
  store i8** %32, i8*** %5, align 8
  %33 = call i8* @cpu_to_be32(i32 20)
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %35, i8*** %5, align 8
  store i8* %33, i8** %34, align 8
  %36 = load i8**, i8*** %5, align 8
  %37 = call i8** @xdr_encode_opaque_fixed(i8** %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  store i8** %37, i8*** %5, align 8
  %38 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %39 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @cpu_to_be32(i32 %42)
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i32 1
  store i8** %45, i8*** %5, align 8
  store i8* %43, i8** %44, align 8
  %46 = load i8**, i8*** %5, align 8
  %47 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %48 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i8** @xdr_encode_hyper(i8** %46, i32 %49)
  ret void
}

declare dso_local i8** @reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @encode_share_access(%struct.xdr_stream*, i32) #1

declare dso_local i8** @xdr_encode_hyper(i8**, i32) #1

declare dso_local i8** @xdr_encode_opaque_fixed(i8**, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

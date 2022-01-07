; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs4_create_arg = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.compound_hdr = type { i32, i32 }

@OP_CREATE = common dso_local global i32 0, align 4
@decode_create_maxsz = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs4_create_arg*, %struct.compound_hdr*)* @encode_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_create(%struct.xdr_stream* %0, %struct.nfs4_create_arg* %1, %struct.compound_hdr* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs4_create_arg*, align 8
  %6 = alloca %struct.compound_hdr*, align 8
  %7 = alloca i8**, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs4_create_arg* %1, %struct.nfs4_create_arg** %5, align 8
  store %struct.compound_hdr* %2, %struct.compound_hdr** %6, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = call i8** @reserve_space(%struct.xdr_stream* %8, i32 8)
  store i8** %9, i8*** %7, align 8
  %10 = load i32, i32* @OP_CREATE, align 4
  %11 = call i8* @cpu_to_be32(i32 %10)
  %12 = load i8**, i8*** %7, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i32 1
  store i8** %13, i8*** %7, align 8
  store i8* %11, i8** %12, align 8
  %14 = load %struct.nfs4_create_arg*, %struct.nfs4_create_arg** %5, align 8
  %15 = getelementptr inbounds %struct.nfs4_create_arg, %struct.nfs4_create_arg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i8* @cpu_to_be32(i32 %16)
  %18 = load i8**, i8*** %7, align 8
  store i8* %17, i8** %18, align 8
  %19 = load %struct.nfs4_create_arg*, %struct.nfs4_create_arg** %5, align 8
  %20 = getelementptr inbounds %struct.nfs4_create_arg, %struct.nfs4_create_arg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %62 [
    i32 128, label %22
    i32 130, label %44
    i32 129, label %44
  ]

22:                                               ; preds = %3
  %23 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %24 = call i8** @reserve_space(%struct.xdr_stream* %23, i32 4)
  store i8** %24, i8*** %7, align 8
  %25 = load %struct.nfs4_create_arg*, %struct.nfs4_create_arg** %5, align 8
  %26 = getelementptr inbounds %struct.nfs4_create_arg, %struct.nfs4_create_arg* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i8* @cpu_to_be32(i32 %29)
  %31 = load i8**, i8*** %7, align 8
  store i8* %30, i8** %31, align 8
  %32 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %33 = load %struct.nfs4_create_arg*, %struct.nfs4_create_arg** %5, align 8
  %34 = getelementptr inbounds %struct.nfs4_create_arg, %struct.nfs4_create_arg* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nfs4_create_arg*, %struct.nfs4_create_arg** %5, align 8
  %39 = getelementptr inbounds %struct.nfs4_create_arg, %struct.nfs4_create_arg* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @xdr_write_pages(%struct.xdr_stream* %32, i32 %37, i32 0, i32 %42)
  br label %63

44:                                               ; preds = %3, %3
  %45 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %46 = call i8** @reserve_space(%struct.xdr_stream* %45, i32 8)
  store i8** %46, i8*** %7, align 8
  %47 = load %struct.nfs4_create_arg*, %struct.nfs4_create_arg** %5, align 8
  %48 = getelementptr inbounds %struct.nfs4_create_arg, %struct.nfs4_create_arg* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @cpu_to_be32(i32 %51)
  %53 = load i8**, i8*** %7, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i32 1
  store i8** %54, i8*** %7, align 8
  store i8* %52, i8** %53, align 8
  %55 = load %struct.nfs4_create_arg*, %struct.nfs4_create_arg** %5, align 8
  %56 = getelementptr inbounds %struct.nfs4_create_arg, %struct.nfs4_create_arg* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @cpu_to_be32(i32 %59)
  %61 = load i8**, i8*** %7, align 8
  store i8* %60, i8** %61, align 8
  br label %63

62:                                               ; preds = %3
  br label %63

63:                                               ; preds = %62, %44, %22
  %64 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %65 = load %struct.nfs4_create_arg*, %struct.nfs4_create_arg** %5, align 8
  %66 = getelementptr inbounds %struct.nfs4_create_arg, %struct.nfs4_create_arg* %65, i32 0, i32 3
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.nfs4_create_arg*, %struct.nfs4_create_arg** %5, align 8
  %71 = getelementptr inbounds %struct.nfs4_create_arg, %struct.nfs4_create_arg* %70, i32 0, i32 3
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @encode_string(%struct.xdr_stream* %64, i32 %69, i32 %74)
  %76 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %77 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load i64, i64* @decode_create_maxsz, align 8
  %81 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %82 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %80
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 4
  %87 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %88 = load %struct.nfs4_create_arg*, %struct.nfs4_create_arg** %5, align 8
  %89 = getelementptr inbounds %struct.nfs4_create_arg, %struct.nfs4_create_arg* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.nfs4_create_arg*, %struct.nfs4_create_arg** %5, align 8
  %92 = getelementptr inbounds %struct.nfs4_create_arg, %struct.nfs4_create_arg* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @encode_attrs(%struct.xdr_stream* %87, i32 %90, i32 %93)
  ret void
}

declare dso_local i8** @reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @xdr_write_pages(%struct.xdr_stream*, i32, i32, i32) #1

declare dso_local i32 @encode_string(%struct.xdr_stream*, i32, i32) #1

declare dso_local i32 @encode_attrs(%struct.xdr_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

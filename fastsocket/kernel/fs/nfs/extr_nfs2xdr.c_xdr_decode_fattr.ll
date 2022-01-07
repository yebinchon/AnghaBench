; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs2xdr.c_xdr_decode_fattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs2xdr.c_xdr_decode_fattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_fattr = type { i32, i32, i32, i32, i32, i32, i32, i8*, %struct.TYPE_6__, %struct.TYPE_5__, i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i64, i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }

@NFS_ATTR_FATTR_V2 = common dso_local global i32 0, align 4
@NFCHR = common dso_local global i64 0, align 8
@NFS2_FIFO_DEV = common dso_local global i64 0, align 8
@S_IFMT = common dso_local global i32 0, align 4
@S_IFIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.nfs_fattr*)* @xdr_decode_fattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xdr_decode_fattr(i32* %0, %struct.nfs_fattr* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.nfs_fattr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.nfs_fattr* %1, %struct.nfs_fattr** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = getelementptr inbounds i32, i32* %7, i32 1
  store i32* %8, i32** %3, align 8
  %9 = load i32, i32* %7, align 4
  %10 = call i8* @ntohl(i32 %9)
  %11 = ptrtoint i8* %10 to i64
  store i64 %11, i64* %6, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** %3, align 8
  %14 = load i32, i32* %12, align 4
  %15 = call i8* @ntohl(i32 %14)
  %16 = ptrtoint i8* %15 to i32
  %17 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %18 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %3, align 8
  %21 = load i32, i32* %19, align 4
  %22 = call i8* @ntohl(i32 %21)
  %23 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %24 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %23, i32 0, i32 13
  store i8* %22, i8** %24, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %3, align 8
  %27 = load i32, i32* %25, align 4
  %28 = call i8* @ntohl(i32 %27)
  %29 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %30 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %29, i32 0, i32 12
  store i8* %28, i8** %30, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %3, align 8
  %33 = load i32, i32* %31, align 4
  %34 = call i8* @ntohl(i32 %33)
  %35 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %36 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %35, i32 0, i32 11
  store i8* %34, i8** %36, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %3, align 8
  %39 = load i32, i32* %37, align 4
  %40 = call i8* @ntohl(i32 %39)
  %41 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %42 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %41, i32 0, i32 10
  store i8* %40, i8** %42, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %3, align 8
  %45 = load i32, i32* %43, align 4
  %46 = call i8* @ntohl(i32 %45)
  %47 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %48 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %47, i32 0, i32 9
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i8* %46, i8** %50, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %3, align 8
  %53 = load i32, i32* %51, align 4
  %54 = call i8* @ntohl(i32 %53)
  %55 = ptrtoint i8* %54 to i64
  store i64 %55, i64* %5, align 8
  %56 = load i32*, i32** %3, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %3, align 8
  %58 = load i32, i32* %56, align 4
  %59 = call i8* @ntohl(i32 %58)
  %60 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %61 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %60, i32 0, i32 9
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i8* %59, i8** %63, align 8
  %64 = load i32*, i32** %3, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %3, align 8
  %66 = load i32, i32* %64, align 4
  %67 = call i8* @ntohl(i32 %66)
  %68 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %69 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %68, i32 0, i32 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i8* %67, i8** %70, align 8
  %71 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %72 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %71, i32 0, i32 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %3, align 8
  %76 = load i32, i32* %74, align 4
  %77 = call i8* @ntohl(i32 %76)
  %78 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %79 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %78, i32 0, i32 7
  store i8* %77, i8** %79, align 8
  %80 = load i32*, i32** %3, align 8
  %81 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %82 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %81, i32 0, i32 6
  %83 = call i32* @xdr_decode_time(i32* %80, i32* %82)
  store i32* %83, i32** %3, align 8
  %84 = load i32*, i32** %3, align 8
  %85 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %86 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %85, i32 0, i32 5
  %87 = call i32* @xdr_decode_time(i32* %84, i32* %86)
  store i32* %87, i32** %3, align 8
  %88 = load i32*, i32** %3, align 8
  %89 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %90 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %89, i32 0, i32 3
  %91 = call i32* @xdr_decode_time(i32* %88, i32* %90)
  store i32* %91, i32** %3, align 8
  %92 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %93 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %92, i32 0, i32 3
  %94 = call i32 @nfs_timespec_to_change_attr(i32* %93)
  %95 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %96 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @NFS_ATTR_FATTR_V2, align 4
  %98 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %99 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load i64, i64* %5, align 8
  %103 = call i32 @new_decode_dev(i64 %102)
  %104 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %105 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* @NFCHR, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %126

109:                                              ; preds = %2
  %110 = load i64, i64* %5, align 8
  %111 = load i64, i64* @NFS2_FIFO_DEV, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %109
  %114 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %115 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @S_IFMT, align 4
  %118 = xor i32 %117, -1
  %119 = and i32 %116, %118
  %120 = load i32, i32* @S_IFIFO, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %123 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %125 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %124, i32 0, i32 1
  store i32 0, i32* %125, align 4
  br label %126

126:                                              ; preds = %113, %109, %2
  %127 = load i32*, i32** %3, align 8
  ret i32* %127
}

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32* @xdr_decode_time(i32*, i32*) #1

declare dso_local i32 @nfs_timespec_to_change_attr(i32*) #1

declare dso_local i32 @new_decode_dev(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

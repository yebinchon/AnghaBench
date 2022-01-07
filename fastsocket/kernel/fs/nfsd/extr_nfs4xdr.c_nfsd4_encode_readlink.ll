; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_readlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_readlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i32* }
%struct.nfsd4_readlink = type { i32, i32 }

@nfserr_resource = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@nfserr_isdir = common dso_local global i32 0, align 4
@nfserr_inval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundres*, i32, %struct.nfsd4_readlink*)* @nfsd4_encode_readlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_encode_readlink(%struct.nfsd4_compoundres* %0, i32 %1, %struct.nfsd4_readlink* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsd4_compoundres*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfsd4_readlink*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nfsd4_readlink* %2, %struct.nfsd4_readlink** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %4, align 4
  br label %136

15:                                               ; preds = %3
  %16 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %17 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @nfserr_resource, align 4
  store i32 %23, i32* %4, align 4
  br label %136

24:                                               ; preds = %15
  %25 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %26 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %31 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32, i32* %29, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @page_address(i32 %38)
  store i8* %39, i8** %9, align 8
  %40 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %40, i32* %8, align 4
  %41 = call i32 @RESERVE_SPACE(i32 4)
  %42 = load %struct.nfsd4_readlink*, %struct.nfsd4_readlink** %7, align 8
  %43 = getelementptr inbounds %struct.nfsd4_readlink, %struct.nfsd4_readlink* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nfsd4_readlink*, %struct.nfsd4_readlink** %7, align 8
  %46 = getelementptr inbounds %struct.nfsd4_readlink, %struct.nfsd4_readlink* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @nfsd_readlink(i32 %44, i32 %47, i8* %48, i32* %8)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @nfserr_isdir, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %24
  %54 = load i32, i32* @nfserr_inval, align 4
  store i32 %54, i32* %4, align 4
  br label %136

55:                                               ; preds = %24
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %4, align 4
  br label %136

60:                                               ; preds = %55
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @WRITE32(i32 %61)
  %63 = call i32 (...) @ADJUST_ARGS()
  %64 = load i32*, i32** %10, align 8
  %65 = bitcast i32* %64 to i8*
  %66 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %67 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = ptrtoint i8* %65 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = trunc i64 %77 to i32
  %79 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %80 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i32 %78, i32* %85, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %88 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i32 %86, i32* %90, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %93 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %92, i32 0, i32 0
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  store i32* %91, i32** %98, align 8
  %99 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %100 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %99, i32 0, i32 0
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  store i32 0, i32* %105, align 8
  %106 = load i32, i32* %8, align 4
  %107 = and i32 %106, 3
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %135

109:                                              ; preds = %60
  %110 = call i32 @RESERVE_SPACE(i32 4)
  %111 = call i32 @WRITE32(i32 0)
  %112 = load i32, i32* %8, align 4
  %113 = and i32 %112, 3
  %114 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %115 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = sext i32 %113 to i64
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32* %123, i32** %120, align 8
  %124 = load i32, i32* %8, align 4
  %125 = and i32 %124, 3
  %126 = sub nsw i32 4, %125
  %127 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %128 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %127, i32 0, i32 0
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  store i32 %126, i32* %133, align 8
  %134 = call i32 (...) @ADJUST_ARGS()
  br label %135

135:                                              ; preds = %109, %60
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %135, %58, %53, %22, %13
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i8* @page_address(i32) #1

declare dso_local i32 @RESERVE_SPACE(i32) #1

declare dso_local i32 @nfsd_readlink(i32, i32, i8*, i32*) #1

declare dso_local i32 @WRITE32(i32) #1

declare dso_local i32 @ADJUST_ARGS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

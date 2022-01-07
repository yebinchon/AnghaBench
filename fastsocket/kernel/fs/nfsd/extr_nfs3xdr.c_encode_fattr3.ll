; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_encode_fattr3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_encode_fattr3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32 }
%struct.kstat = type { i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i64 }

@nfs3_ftypes = common dso_local global i32* null, align 8
@S_IFMT = common dso_local global i32 0, align 4
@NFS3_MAXPATHLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.svc_rqst*, i32*, %struct.svc_fh*, %struct.kstat*)* @encode_fattr3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @encode_fattr3(%struct.svc_rqst* %0, i32* %1, %struct.svc_fh* %2, %struct.kstat* %3) #0 {
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.svc_fh*, align 8
  %8 = alloca %struct.kstat*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.svc_fh* %2, %struct.svc_fh** %7, align 8
  store %struct.kstat* %3, %struct.kstat** %8, align 8
  %9 = load i32*, i32** @nfs3_ftypes, align 8
  %10 = load %struct.kstat*, %struct.kstat** %8, align 8
  %11 = getelementptr inbounds %struct.kstat, %struct.kstat* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @S_IFMT, align 4
  %14 = and i32 %12, %13
  %15 = ashr i32 %14, 12
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %9, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @htonl(i32 %18)
  %20 = ptrtoint i8* %19 to i32
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %6, align 8
  store i32 %20, i32* %21, align 4
  %23 = load %struct.kstat*, %struct.kstat** %8, align 8
  %24 = getelementptr inbounds %struct.kstat, %struct.kstat* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @htonl(i32 %25)
  %27 = ptrtoint i8* %26 to i32
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  %30 = load %struct.kstat*, %struct.kstat** %8, align 8
  %31 = getelementptr inbounds %struct.kstat, %struct.kstat* %30, i32 0, i32 10
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i8* @htonl(i32 %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %6, align 8
  store i32 %35, i32* %36, align 4
  %38 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %39 = load %struct.kstat*, %struct.kstat** %8, align 8
  %40 = getelementptr inbounds %struct.kstat, %struct.kstat* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @nfsd_ruid(%struct.svc_rqst* %38, i32 %41)
  %43 = trunc i64 %42 to i32
  %44 = call i8* @htonl(i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %6, align 8
  store i32 %45, i32* %46, align 4
  %48 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %49 = load %struct.kstat*, %struct.kstat** %8, align 8
  %50 = getelementptr inbounds %struct.kstat, %struct.kstat* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @nfsd_rgid(%struct.svc_rqst* %48, i32 %51)
  %53 = trunc i64 %52 to i32
  %54 = call i8* @htonl(i32 %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %6, align 8
  store i32 %55, i32* %56, align 4
  %58 = load %struct.kstat*, %struct.kstat** %8, align 8
  %59 = getelementptr inbounds %struct.kstat, %struct.kstat* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @S_ISLNK(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %4
  %64 = load %struct.kstat*, %struct.kstat** %8, align 8
  %65 = getelementptr inbounds %struct.kstat, %struct.kstat* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @NFS3_MAXPATHLEN, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load i32*, i32** %6, align 8
  %71 = load i64, i64* @NFS3_MAXPATHLEN, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32* @xdr_encode_hyper(i32* %70, i32 %72)
  store i32* %73, i32** %6, align 8
  br label %81

74:                                               ; preds = %63, %4
  %75 = load i32*, i32** %6, align 8
  %76 = load %struct.kstat*, %struct.kstat** %8, align 8
  %77 = getelementptr inbounds %struct.kstat, %struct.kstat* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32* @xdr_encode_hyper(i32* %75, i32 %79)
  store i32* %80, i32** %6, align 8
  br label %81

81:                                               ; preds = %74, %69
  %82 = load i32*, i32** %6, align 8
  %83 = load %struct.kstat*, %struct.kstat** %8, align 8
  %84 = getelementptr inbounds %struct.kstat, %struct.kstat* %83, i32 0, i32 7
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = shl i32 %86, 9
  %88 = call i32* @xdr_encode_hyper(i32* %82, i32 %87)
  store i32* %88, i32** %6, align 8
  %89 = load %struct.kstat*, %struct.kstat** %8, align 8
  %90 = getelementptr inbounds %struct.kstat, %struct.kstat* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @MAJOR(i32 %91)
  %93 = trunc i64 %92 to i32
  %94 = call i8* @htonl(i32 %93)
  %95 = ptrtoint i8* %94 to i32
  %96 = load i32*, i32** %6, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %6, align 8
  store i32 %95, i32* %96, align 4
  %98 = load %struct.kstat*, %struct.kstat** %8, align 8
  %99 = getelementptr inbounds %struct.kstat, %struct.kstat* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @MINOR(i32 %100)
  %102 = trunc i64 %101 to i32
  %103 = call i8* @htonl(i32 %102)
  %104 = ptrtoint i8* %103 to i32
  %105 = load i32*, i32** %6, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %6, align 8
  store i32 %104, i32* %105, align 4
  %107 = load i32*, i32** %6, align 8
  %108 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %109 = call i32* @encode_fsid(i32* %107, %struct.svc_fh* %108)
  store i32* %109, i32** %6, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = load %struct.kstat*, %struct.kstat** %8, align 8
  %112 = getelementptr inbounds %struct.kstat, %struct.kstat* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32* @xdr_encode_hyper(i32* %110, i32 %113)
  store i32* %114, i32** %6, align 8
  %115 = load i32*, i32** %6, align 8
  %116 = load %struct.kstat*, %struct.kstat** %8, align 8
  %117 = getelementptr inbounds %struct.kstat, %struct.kstat* %116, i32 0, i32 5
  %118 = call i32* @encode_time3(i32* %115, i32* %117)
  store i32* %118, i32** %6, align 8
  %119 = load i32*, i32** %6, align 8
  %120 = load %struct.kstat*, %struct.kstat** %8, align 8
  %121 = getelementptr inbounds %struct.kstat, %struct.kstat* %120, i32 0, i32 4
  %122 = call i32* @encode_time3(i32* %119, i32* %121)
  store i32* %122, i32** %6, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = load %struct.kstat*, %struct.kstat** %8, align 8
  %125 = getelementptr inbounds %struct.kstat, %struct.kstat* %124, i32 0, i32 3
  %126 = call i32* @encode_time3(i32* %123, i32* %125)
  store i32* %126, i32** %6, align 8
  %127 = load i32*, i32** %6, align 8
  ret i32* %127
}

declare dso_local i8* @htonl(i32) #1

declare dso_local i64 @nfsd_ruid(%struct.svc_rqst*, i32) #1

declare dso_local i64 @nfsd_rgid(%struct.svc_rqst*, i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i64 @MAJOR(i32) #1

declare dso_local i64 @MINOR(i32) #1

declare dso_local i32* @encode_fsid(i32*, %struct.svc_fh*) #1

declare dso_local i32* @encode_time3(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

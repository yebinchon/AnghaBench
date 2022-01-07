; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_mknod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd3_mknodargs = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.nfsd3_diropres = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"nfsd: MKNOD(3)    %s %.*s\0A\00", align 1
@NFS3_FHSIZE = common dso_local global i32 0, align 4
@NF3BAD = common dso_local global i64 0, align 8
@nfserr_inval = common dso_local global i32 0, align 4
@NF3CHR = common dso_local global i64 0, align 8
@NF3BLK = common dso_local global i64 0, align 8
@NF3SOCK = common dso_local global i64 0, align 8
@NF3FIFO = common dso_local global i64 0, align 8
@nfs3_ftypes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd3_mknodargs*, %struct.nfsd3_diropres*)* @nfsd3_proc_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd3_proc_mknod(%struct.svc_rqst* %0, %struct.nfsd3_mknodargs* %1, %struct.nfsd3_diropres* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd3_mknodargs*, align 8
  %7 = alloca %struct.nfsd3_diropres*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd3_mknodargs* %1, %struct.nfsd3_mknodargs** %6, align 8
  store %struct.nfsd3_diropres* %2, %struct.nfsd3_diropres** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %12 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %11, i32 0, i32 6
  %13 = call i32 @SVCFH_fmt(i32* %12)
  %14 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %15 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %18 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 %19)
  %21 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %7, align 8
  %22 = getelementptr inbounds %struct.nfsd3_diropres, %struct.nfsd3_diropres* %21, i32 0, i32 0
  %23 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %24 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %23, i32 0, i32 6
  %25 = call i32 @fh_copy(i32* %22, i32* %24)
  %26 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %7, align 8
  %27 = getelementptr inbounds %struct.nfsd3_diropres, %struct.nfsd3_diropres* %26, i32 0, i32 1
  %28 = load i32, i32* @NFS3_FHSIZE, align 4
  %29 = call i32 @fh_init(i32* %27, i32 %28)
  %30 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %31 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %3
  %35 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %36 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NF3BAD, align 8
  %39 = icmp uge i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %3
  %41 = load i32, i32* @nfserr_inval, align 4
  %42 = call i32 @RETURN_STATUS(i32 %41)
  br label %43

43:                                               ; preds = %40, %34
  %44 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %45 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @NF3CHR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %51 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NF3BLK, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %80

55:                                               ; preds = %49, %43
  %56 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %57 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %60 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @MKDEV(i64 %58, i64 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i64 @MAJOR(i32 %63)
  %65 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %66 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %76, label %69

69:                                               ; preds = %55
  %70 = load i32, i32* %10, align 4
  %71 = call i64 @MINOR(i32 %70)
  %72 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %73 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %69, %55
  %77 = load i32, i32* @nfserr_inval, align 4
  %78 = call i32 @RETURN_STATUS(i32 %77)
  br label %79

79:                                               ; preds = %76, %69
  br label %96

80:                                               ; preds = %49
  %81 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %82 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @NF3SOCK, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %88 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @NF3FIFO, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* @nfserr_inval, align 4
  %94 = call i32 @RETURN_STATUS(i32 %93)
  br label %95

95:                                               ; preds = %92, %86, %80
  br label %96

96:                                               ; preds = %95, %79
  %97 = load i32*, i32** @nfs3_ftypes, align 8
  %98 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %99 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %9, align 4
  %103 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %104 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %7, align 8
  %105 = getelementptr inbounds %struct.nfsd3_diropres, %struct.nfsd3_diropres* %104, i32 0, i32 0
  %106 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %107 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %110 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %6, align 8
  %113 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %112, i32 0, i32 3
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %7, align 8
  %117 = getelementptr inbounds %struct.nfsd3_diropres, %struct.nfsd3_diropres* %116, i32 0, i32 1
  %118 = call i32 @nfsd_create(%struct.svc_rqst* %103, i32* %105, i32 %108, i32 %111, i32* %113, i32 %114, i32 %115, i32* %117)
  store i32 %118, i32* %8, align 4
  %119 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %7, align 8
  %120 = getelementptr inbounds %struct.nfsd3_diropres, %struct.nfsd3_diropres* %119, i32 0, i32 0
  %121 = call i32 @fh_unlock(i32* %120)
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @RETURN_STATUS(i32 %122)
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @fh_copy(i32*, i32*) #1

declare dso_local i32 @fh_init(i32*, i32) #1

declare dso_local i32 @RETURN_STATUS(i32) #1

declare dso_local i32 @MKDEV(i64, i64) #1

declare dso_local i64 @MAJOR(i32) #1

declare dso_local i64 @MINOR(i32) #1

declare dso_local i32 @nfsd_create(%struct.svc_rqst*, i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @fh_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

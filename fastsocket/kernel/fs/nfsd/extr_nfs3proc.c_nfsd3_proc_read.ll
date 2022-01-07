; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd3_readargs = type { i64, i64, i32, i32 }
%struct.nfsd3_readres = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"nfsd: READ(3) %s %lu bytes at %lu\0A\00", align 1
@NFS3_POST_OP_ATTR_WORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd3_readargs*, %struct.nfsd3_readres*)* @nfsd3_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd3_proc_read(%struct.svc_rqst* %0, %struct.nfsd3_readargs* %1, %struct.nfsd3_readres* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd3_readargs*, align 8
  %7 = alloca %struct.nfsd3_readres*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd3_readargs* %1, %struct.nfsd3_readargs** %6, align 8
  store %struct.nfsd3_readres* %2, %struct.nfsd3_readres** %7, align 8
  %11 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %12 = call i64 @svc_max_payload(%struct.svc_rqst* %11)
  store i64 %12, i64* %9, align 8
  %13 = load %struct.nfsd3_readargs*, %struct.nfsd3_readargs** %6, align 8
  %14 = getelementptr inbounds %struct.nfsd3_readargs, %struct.nfsd3_readargs* %13, i32 0, i32 3
  %15 = call i32 @SVCFH_fmt(i32* %14)
  %16 = load %struct.nfsd3_readargs*, %struct.nfsd3_readargs** %6, align 8
  %17 = getelementptr inbounds %struct.nfsd3_readargs, %struct.nfsd3_readargs* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.nfsd3_readargs*, %struct.nfsd3_readargs** %6, align 8
  %20 = getelementptr inbounds %struct.nfsd3_readargs, %struct.nfsd3_readargs* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %18, i64 %21)
  %23 = load %struct.nfsd3_readargs*, %struct.nfsd3_readargs** %6, align 8
  %24 = getelementptr inbounds %struct.nfsd3_readargs, %struct.nfsd3_readargs* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %7, align 8
  %27 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %7, align 8
  %30 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %7, align 8
  %36 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %3
  %38 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %39 = load i32, i32* @NFS3_POST_OP_ATTR_WORDS, align 4
  %40 = add nsw i32 1, %39
  %41 = add nsw i32 %40, 3
  %42 = shl i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %7, align 8
  %45 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = add nsw i64 %47, 4
  %49 = call i32 @svc_reserve_auth(%struct.svc_rqst* %38, i64 %48)
  %50 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %7, align 8
  %51 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %50, i32 0, i32 2
  %52 = load %struct.nfsd3_readargs*, %struct.nfsd3_readargs** %6, align 8
  %53 = getelementptr inbounds %struct.nfsd3_readargs, %struct.nfsd3_readargs* %52, i32 0, i32 3
  %54 = call i32 @fh_copy(%struct.TYPE_5__* %51, i32* %53)
  %55 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %56 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %7, align 8
  %57 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %56, i32 0, i32 2
  %58 = load %struct.nfsd3_readargs*, %struct.nfsd3_readargs** %6, align 8
  %59 = getelementptr inbounds %struct.nfsd3_readargs, %struct.nfsd3_readargs* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %62 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.nfsd3_readargs*, %struct.nfsd3_readargs** %6, align 8
  %65 = getelementptr inbounds %struct.nfsd3_readargs, %struct.nfsd3_readargs* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %7, align 8
  %68 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %67, i32 0, i32 0
  %69 = call i64 @nfsd_read(%struct.svc_rqst* %55, %struct.TYPE_5__* %57, i64 %60, i32 %63, i32 %66, i64* %68)
  store i64 %69, i64* %8, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %37
  %73 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %7, align 8
  %74 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.inode*, %struct.inode** %77, align 8
  store %struct.inode* %78, %struct.inode** %10, align 8
  %79 = load %struct.nfsd3_readargs*, %struct.nfsd3_readargs** %6, align 8
  %80 = getelementptr inbounds %struct.nfsd3_readargs, %struct.nfsd3_readargs* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %7, align 8
  %83 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = load %struct.inode*, %struct.inode** %10, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp sge i64 %85, %88
  %90 = zext i1 %89 to i32
  %91 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %7, align 8
  %92 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %72, %37
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @RETURN_STATUS(i64 %94)
  %96 = load i64, i64* %4, align 8
  ret i64 %96
}

declare dso_local i64 @svc_max_payload(%struct.svc_rqst*) #1

declare dso_local i32 @dprintk(i8*, i32, i64, i64) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @svc_reserve_auth(%struct.svc_rqst*, i64) #1

declare dso_local i32 @fh_copy(%struct.TYPE_5__*, i32*) #1

declare dso_local i64 @nfsd_read(%struct.svc_rqst*, %struct.TYPE_5__*, i64, i32, i32, i64*) #1

declare dso_local i32 @RETURN_STATUS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

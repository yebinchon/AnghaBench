; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsproc.c_nfsd_proc_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsproc.c_nfsd_proc_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd_symlinkargs = type { %struct.svc_fh, i32, i32, i32, i32, i32 }
%struct.svc_fh = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"nfsd: SYMLINK  %s %.*s -> %.*s\0A\00", align 1
@NFS_FHSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd_symlinkargs*, i8*)* @nfsd_proc_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_proc_symlink(%struct.svc_rqst* %0, %struct.nfsd_symlinkargs* %1, i8* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nfsd_symlinkargs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.svc_fh, align 4
  %8 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nfsd_symlinkargs* %1, %struct.nfsd_symlinkargs** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %5, align 8
  %10 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %9, i32 0, i32 0
  %11 = call i32 @SVCFH_fmt(%struct.svc_fh* %10)
  %12 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %5, align 8
  %13 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %5, align 8
  %16 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %5, align 8
  %19 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %5, align 8
  %22 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %17, i32 %20, i32 %23)
  %25 = load i32, i32* @NFS_FHSIZE, align 4
  %26 = call i32 @fh_init(%struct.svc_fh* %7, i32 %25)
  %27 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %28 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %5, align 8
  %29 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %28, i32 0, i32 0
  %30 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %5, align 8
  %31 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %5, align 8
  %34 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %5, align 8
  %37 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %5, align 8
  %40 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %5, align 8
  %43 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %42, i32 0, i32 1
  %44 = call i32 @nfsd_symlink(%struct.svc_rqst* %27, %struct.svc_fh* %29, i32 %32, i32 %35, i32 %38, i32 %41, %struct.svc_fh* %7, i32* %43)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %5, align 8
  %46 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %45, i32 0, i32 0
  %47 = call i32 @fh_put(%struct.svc_fh* %46)
  %48 = call i32 @fh_put(%struct.svc_fh* %7)
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SVCFH_fmt(%struct.svc_fh*) #1

declare dso_local i32 @fh_init(%struct.svc_fh*, i32) #1

declare dso_local i32 @nfsd_symlink(%struct.svc_rqst*, %struct.svc_fh*, i32, i32, i32, i32, %struct.svc_fh*, i32*) #1

declare dso_local i32 @fh_put(%struct.svc_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

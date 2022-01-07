; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_export = type { i8* }
%struct.svc_fh = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@NFS4_FHSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"nfsd: fs_locations failed;%s is not contained in %s\0A\00", align 1
@nfserr_notsupp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.svc_rqst*, %struct.svc_export*, i32*)* @nfsd4_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nfsd4_path(%struct.svc_rqst* %0, %struct.svc_export* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.svc_export*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.svc_fh, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.svc_export* %1, %struct.svc_export** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* null, i8** %9, align 8
  %12 = load i32, i32* @NFS4_FHSIZE, align 4
  %13 = call i32 @fh_init(%struct.svc_fh* %8, i32 %12)
  %14 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %15 = call i32 @exp_pseudoroot(%struct.svc_rqst* %14, %struct.svc_fh* %8)
  %16 = load i32*, i32** %7, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %49

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %8, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %10, align 8
  %26 = load %struct.svc_export*, %struct.svc_export** %6, align 8
  %27 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = call i64 @strlen(i8* %29)
  store i64 %30, i64* %11, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i64 @strncmp(i8* %31, i8* %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %21
  %37 = load i8*, i8** %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @dprintk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %37, i8* %38)
  %40 = load i32, i32* @nfserr_notsupp, align 4
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  store i8* null, i8** %9, align 8
  br label %46

42:                                               ; preds = %21
  %43 = load i64, i64* %11, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 %43
  store i8* %45, i8** %9, align 8
  br label %46

46:                                               ; preds = %42, %36
  %47 = call i32 @fh_put(%struct.svc_fh* %8)
  %48 = load i8*, i8** %9, align 8
  store i8* %48, i8** %4, align 8
  br label %49

49:                                               ; preds = %46, %20
  %50 = load i8*, i8** %4, align 8
  ret i8* %50
}

declare dso_local i32 @fh_init(%struct.svc_fh*, i32) #1

declare dso_local i32 @exp_pseudoroot(%struct.svc_rqst*, %struct.svc_fh*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @dprintk(i8*, i8*, i8*) #1

declare dso_local i32 @fh_put(%struct.svc_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_getattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { i32, i32, i32 }
%struct.nfsd4_getattr = type { i32, %struct.svc_fh* }
%struct.svc_fh = type { i32, i32 }

@COMPOUND_ERR_SLACK_SPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundres*, i32, %struct.nfsd4_getattr*)* @nfsd4_encode_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_encode_getattr(%struct.nfsd4_compoundres* %0, i32 %1, %struct.nfsd4_getattr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsd4_compoundres*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfsd4_getattr*, align 8
  %8 = alloca %struct.svc_fh*, align 8
  %9 = alloca i32, align 4
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nfsd4_getattr* %2, %struct.nfsd4_getattr** %7, align 8
  %10 = load %struct.nfsd4_getattr*, %struct.nfsd4_getattr** %7, align 8
  %11 = getelementptr inbounds %struct.nfsd4_getattr, %struct.nfsd4_getattr* %10, i32 0, i32 1
  %12 = load %struct.svc_fh*, %struct.svc_fh** %11, align 8
  store %struct.svc_fh* %12, %struct.svc_fh** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %4, align 4
  br label %55

17:                                               ; preds = %3
  %18 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %19 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %22 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  %25 = load i32, i32* @COMPOUND_ERR_SLACK_SPACE, align 4
  %26 = ashr i32 %25, 2
  %27 = sub nsw i32 %24, %26
  store i32 %27, i32* %9, align 4
  %28 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %29 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %30 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %33 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %36 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nfsd4_getattr*, %struct.nfsd4_getattr** %7, align 8
  %39 = getelementptr inbounds %struct.nfsd4_getattr, %struct.nfsd4_getattr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %42 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @nfsd4_encode_fattr(%struct.svc_fh* %28, i32 %31, i32 %34, i32 %37, i32* %9, i32 %40, i32 %43, i32 0)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %17
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %50 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47, %17
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %15
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @nfsd4_encode_fattr(%struct.svc_fh*, i32, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

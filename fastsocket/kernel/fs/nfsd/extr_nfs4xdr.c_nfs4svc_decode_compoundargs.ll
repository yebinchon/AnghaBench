; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfs4svc_decode_compoundargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfs4svc_decode_compoundargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.nfsd4_compoundargs = type { %struct.svc_rqst*, i32, i32, i32*, i32*, i32, i32, i64, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4svc_decode_compoundargs(%struct.svc_rqst* %0, i64* %1, %struct.nfsd4_compoundargs* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.nfsd4_compoundargs*, align 8
  %7 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.nfsd4_compoundargs* %2, %struct.nfsd4_compoundargs** %6, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %6, align 8
  %10 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %9, i32 0, i32 8
  store i64* %8, i64** %10, align 8
  %11 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %12 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %19 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %17, %24
  %26 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %6, align 8
  %27 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %26, i32 0, i32 7
  store i64 %25, i64* %27, align 8
  %28 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %29 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %6, align 8
  %33 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %35 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %6, align 8
  %39 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %6, align 8
  %41 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %40, i32 0, i32 4
  store i32* null, i32** %41, align 8
  %42 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %6, align 8
  %43 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %42, i32 0, i32 3
  store i32* null, i32** %43, align 8
  %44 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %6, align 8
  %45 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %6, align 8
  %48 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %50 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %6, align 8
  %51 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %50, i32 0, i32 0
  store %struct.svc_rqst* %49, %struct.svc_rqst** %51, align 8
  %52 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %6, align 8
  %53 = call i64 @nfsd4_decode_compound(%struct.nfsd4_compoundargs* %52)
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %3
  %57 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %6, align 8
  %58 = call i32 @nfsd4_release_compoundargs(%struct.nfsd4_compoundargs* %57)
  br label %59

59:                                               ; preds = %56, %3
  %60 = load i64, i64* %7, align 8
  %61 = icmp ne i64 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  ret i32 %63
}

declare dso_local i64 @nfsd4_decode_compound(%struct.nfsd4_compoundargs*) #1

declare dso_local i32 @nfsd4_release_compoundargs(%struct.nfsd4_compoundargs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_setclientid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_setclientid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { i32 }
%struct.nfsd4_setclientid = type { i32, i32 }

@nfserr_clid_inuse = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfsd4_compoundres*, i64, %struct.nfsd4_setclientid*)* @nfsd4_encode_setclientid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_encode_setclientid(%struct.nfsd4_compoundres* %0, i64 %1, %struct.nfsd4_setclientid* %2) #0 {
  %4 = alloca %struct.nfsd4_compoundres*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nfsd4_setclientid*, align 8
  %7 = alloca i64*, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.nfsd4_setclientid* %2, %struct.nfsd4_setclientid** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = call i32 @RESERVE_SPACE(i32 12)
  %12 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %6, align 8
  %13 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %12, i32 0, i32 1
  %14 = call i32 @WRITEMEM(i32* %13, i32 8)
  %15 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %6, align 8
  %16 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %15, i32 0, i32 0
  %17 = call i32 @WRITEMEM(i32* %16, i32 4)
  %18 = call i32 (...) @ADJUST_ARGS()
  br label %29

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @nfserr_clid_inuse, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = call i32 @RESERVE_SPACE(i32 8)
  %25 = call i32 @WRITE32(i32 0)
  %26 = call i32 @WRITE32(i32 0)
  %27 = call i32 (...) @ADJUST_ARGS()
  br label %28

28:                                               ; preds = %23, %19
  br label %29

29:                                               ; preds = %28, %10
  %30 = load i64, i64* %5, align 8
  ret i64 %30
}

declare dso_local i32 @RESERVE_SPACE(i32) #1

declare dso_local i32 @WRITEMEM(i32*, i32) #1

declare dso_local i32 @ADJUST_ARGS(...) #1

declare dso_local i32 @WRITE32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

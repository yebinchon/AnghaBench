; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { i32 }
%struct.nfsd4_setattr = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfsd4_compoundres*, i64, %struct.nfsd4_setattr*)* @nfsd4_encode_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_encode_setattr(%struct.nfsd4_compoundres* %0, i64 %1, %struct.nfsd4_setattr* %2) #0 {
  %4 = alloca %struct.nfsd4_compoundres*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nfsd4_setattr*, align 8
  %7 = alloca i64*, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.nfsd4_setattr* %2, %struct.nfsd4_setattr** %6, align 8
  %8 = call i32 @RESERVE_SPACE(i32 12)
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = call i32 @WRITE32(i32 2)
  %13 = call i32 @WRITE32(i32 0)
  %14 = call i32 @WRITE32(i32 0)
  br label %29

15:                                               ; preds = %3
  %16 = call i32 @WRITE32(i32 2)
  %17 = load %struct.nfsd4_setattr*, %struct.nfsd4_setattr** %6, align 8
  %18 = getelementptr inbounds %struct.nfsd4_setattr, %struct.nfsd4_setattr* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @WRITE32(i32 %21)
  %23 = load %struct.nfsd4_setattr*, %struct.nfsd4_setattr** %6, align 8
  %24 = getelementptr inbounds %struct.nfsd4_setattr, %struct.nfsd4_setattr* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @WRITE32(i32 %27)
  br label %29

29:                                               ; preds = %15, %11
  %30 = call i32 (...) @ADJUST_ARGS()
  %31 = load i64, i64* %5, align 8
  ret i64 %31
}

declare dso_local i32 @RESERVE_SPACE(i32) #1

declare dso_local i32 @WRITE32(i32) #1

declare dso_local i32 @ADJUST_ARGS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

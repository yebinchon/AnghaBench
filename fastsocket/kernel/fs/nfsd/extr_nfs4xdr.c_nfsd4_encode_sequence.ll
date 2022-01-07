; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_sequence.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.nfsd4_sequence = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NFS4_MAX_SESSIONID_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd4_encode_sequence(%struct.nfsd4_compoundres* %0, i32 %1, %struct.nfsd4_sequence* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsd4_compoundres*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfsd4_sequence*, align 8
  %8 = alloca i32*, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nfsd4_sequence* %2, %struct.nfsd4_sequence** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %4, align 4
  br label %45

13:                                               ; preds = %3
  %14 = load i64, i64* @NFS4_MAX_SESSIONID_LEN, align 8
  %15 = add nsw i64 %14, 20
  %16 = call i32 @RESERVE_SPACE(i64 %15)
  %17 = load %struct.nfsd4_sequence*, %struct.nfsd4_sequence** %7, align 8
  %18 = getelementptr inbounds %struct.nfsd4_sequence, %struct.nfsd4_sequence* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* @NFS4_MAX_SESSIONID_LEN, align 8
  %22 = call i32 @WRITEMEM(i32 %20, i64 %21)
  %23 = load %struct.nfsd4_sequence*, %struct.nfsd4_sequence** %7, align 8
  %24 = getelementptr inbounds %struct.nfsd4_sequence, %struct.nfsd4_sequence* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @WRITE32(i32 %25)
  %27 = load %struct.nfsd4_sequence*, %struct.nfsd4_sequence** %7, align 8
  %28 = getelementptr inbounds %struct.nfsd4_sequence, %struct.nfsd4_sequence* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @WRITE32(i32 %29)
  %31 = load %struct.nfsd4_sequence*, %struct.nfsd4_sequence** %7, align 8
  %32 = getelementptr inbounds %struct.nfsd4_sequence, %struct.nfsd4_sequence* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @WRITE32(i32 %33)
  %35 = load %struct.nfsd4_sequence*, %struct.nfsd4_sequence** %7, align 8
  %36 = getelementptr inbounds %struct.nfsd4_sequence, %struct.nfsd4_sequence* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @WRITE32(i32 %37)
  %39 = call i32 @WRITE32(i32 0)
  %40 = call i32 (...) @ADJUST_ARGS()
  %41 = load i32*, i32** %8, align 8
  %42 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %43 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32* %41, i32** %44, align 8
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %13, %11
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @RESERVE_SPACE(i64) #1

declare dso_local i32 @WRITEMEM(i32, i64) #1

declare dso_local i32 @WRITE32(i32) #1

declare dso_local i32 @ADJUST_ARGS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

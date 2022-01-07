; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_release_lockowner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_release_lockowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundargs = type { i64 }
%struct.nfsd4_release_lockowner = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@DECODE_HEAD = common dso_local global i32 0, align 4
@nfserr_inval = common dso_local global i32 0, align 4
@DECODE_TAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundargs*, %struct.nfsd4_release_lockowner*)* @nfsd4_decode_release_lockowner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_decode_release_lockowner(%struct.nfsd4_compoundargs* %0, %struct.nfsd4_release_lockowner* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsd4_compoundargs*, align 8
  %5 = alloca %struct.nfsd4_release_lockowner*, align 8
  store %struct.nfsd4_compoundargs* %0, %struct.nfsd4_compoundargs** %4, align 8
  store %struct.nfsd4_release_lockowner* %1, %struct.nfsd4_release_lockowner** %5, align 8
  %6 = load i32, i32* @DECODE_HEAD, align 4
  %7 = call i32 @READ_BUF(i32 12)
  %8 = load %struct.nfsd4_release_lockowner*, %struct.nfsd4_release_lockowner** %5, align 8
  %9 = getelementptr inbounds %struct.nfsd4_release_lockowner, %struct.nfsd4_release_lockowner* %8, i32 0, i32 0
  %10 = call i32 @COPYMEM(i32* %9, i32 4)
  %11 = load %struct.nfsd4_release_lockowner*, %struct.nfsd4_release_lockowner** %5, align 8
  %12 = getelementptr inbounds %struct.nfsd4_release_lockowner, %struct.nfsd4_release_lockowner* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @READ32(i32 %14)
  %16 = load %struct.nfsd4_release_lockowner*, %struct.nfsd4_release_lockowner** %5, align 8
  %17 = getelementptr inbounds %struct.nfsd4_release_lockowner, %struct.nfsd4_release_lockowner* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @READ_BUF(i32 %19)
  %21 = load %struct.nfsd4_release_lockowner*, %struct.nfsd4_release_lockowner** %5, align 8
  %22 = getelementptr inbounds %struct.nfsd4_release_lockowner, %struct.nfsd4_release_lockowner* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nfsd4_release_lockowner*, %struct.nfsd4_release_lockowner** %5, align 8
  %26 = getelementptr inbounds %struct.nfsd4_release_lockowner, %struct.nfsd4_release_lockowner* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @READMEM(i32 %24, i32 %28)
  %30 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %31 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load %struct.nfsd4_release_lockowner*, %struct.nfsd4_release_lockowner** %5, align 8
  %36 = getelementptr inbounds %struct.nfsd4_release_lockowner, %struct.nfsd4_release_lockowner* %35, i32 0, i32 0
  %37 = call i32 @zero_clientid(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @nfserr_inval, align 4
  store i32 %40, i32* %3, align 4
  br label %43

41:                                               ; preds = %34, %2
  %42 = load i32, i32* @DECODE_TAIL, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @READ_BUF(i32) #1

declare dso_local i32 @COPYMEM(i32*, i32) #1

declare dso_local i32 @READ32(i32) #1

declare dso_local i32 @READMEM(i32, i32) #1

declare dso_local i32 @zero_clientid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

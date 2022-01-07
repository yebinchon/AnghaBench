; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_release_compoundargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_release_compoundargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundargs = type { i64, i64, %struct.tmpbuf*, %struct.tmpbuf* }
%struct.tmpbuf = type { i32, i32 (i32)*, %struct.tmpbuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsd4_release_compoundargs(%struct.nfsd4_compoundargs* %0) #0 {
  %2 = alloca %struct.nfsd4_compoundargs*, align 8
  %3 = alloca %struct.tmpbuf*, align 8
  store %struct.nfsd4_compoundargs* %0, %struct.nfsd4_compoundargs** %2, align 8
  %4 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %2, align 8
  %5 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %2, align 8
  %8 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %6, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %2, align 8
  %13 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.tmpbuf*
  %16 = call i32 @kfree(%struct.tmpbuf* %15)
  %17 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %2, align 8
  %18 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %2, align 8
  %21 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %11, %1
  %23 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %2, align 8
  %24 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %23, i32 0, i32 3
  %25 = load %struct.tmpbuf*, %struct.tmpbuf** %24, align 8
  %26 = call i32 @kfree(%struct.tmpbuf* %25)
  %27 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %2, align 8
  %28 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %27, i32 0, i32 3
  store %struct.tmpbuf* null, %struct.tmpbuf** %28, align 8
  br label %29

29:                                               ; preds = %34, %22
  %30 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %2, align 8
  %31 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %30, i32 0, i32 2
  %32 = load %struct.tmpbuf*, %struct.tmpbuf** %31, align 8
  %33 = icmp ne %struct.tmpbuf* %32, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %2, align 8
  %36 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %35, i32 0, i32 2
  %37 = load %struct.tmpbuf*, %struct.tmpbuf** %36, align 8
  store %struct.tmpbuf* %37, %struct.tmpbuf** %3, align 8
  %38 = load %struct.tmpbuf*, %struct.tmpbuf** %3, align 8
  %39 = getelementptr inbounds %struct.tmpbuf, %struct.tmpbuf* %38, i32 0, i32 2
  %40 = load %struct.tmpbuf*, %struct.tmpbuf** %39, align 8
  %41 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %2, align 8
  %42 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %41, i32 0, i32 2
  store %struct.tmpbuf* %40, %struct.tmpbuf** %42, align 8
  %43 = load %struct.tmpbuf*, %struct.tmpbuf** %3, align 8
  %44 = getelementptr inbounds %struct.tmpbuf, %struct.tmpbuf* %43, i32 0, i32 1
  %45 = load i32 (i32)*, i32 (i32)** %44, align 8
  %46 = load %struct.tmpbuf*, %struct.tmpbuf** %3, align 8
  %47 = getelementptr inbounds %struct.tmpbuf, %struct.tmpbuf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 %45(i32 %48)
  %50 = load %struct.tmpbuf*, %struct.tmpbuf** %3, align 8
  %51 = call i32 @kfree(%struct.tmpbuf* %50)
  br label %29

52:                                               ; preds = %29
  ret void
}

declare dso_local i32 @kfree(%struct.tmpbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

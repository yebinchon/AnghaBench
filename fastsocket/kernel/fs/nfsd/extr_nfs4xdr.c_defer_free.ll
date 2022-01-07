; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_defer_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_defer_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundargs = type { %struct.tmpbuf* }
%struct.tmpbuf = type { void (i8*)*, %struct.tmpbuf*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundargs*, void (i8*)*, i8*)* @defer_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @defer_free(%struct.nfsd4_compoundargs* %0, void (i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsd4_compoundargs*, align 8
  %6 = alloca void (i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tmpbuf*, align 8
  store %struct.nfsd4_compoundargs* %0, %struct.nfsd4_compoundargs** %5, align 8
  store void (i8*)* %1, void (i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.tmpbuf* @kmalloc(i32 24, i32 %9)
  store %struct.tmpbuf* %10, %struct.tmpbuf** %8, align 8
  %11 = load %struct.tmpbuf*, %struct.tmpbuf** %8, align 8
  %12 = icmp ne %struct.tmpbuf* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %31

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.tmpbuf*, %struct.tmpbuf** %8, align 8
  %19 = getelementptr inbounds %struct.tmpbuf, %struct.tmpbuf* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load void (i8*)*, void (i8*)** %6, align 8
  %21 = load %struct.tmpbuf*, %struct.tmpbuf** %8, align 8
  %22 = getelementptr inbounds %struct.tmpbuf, %struct.tmpbuf* %21, i32 0, i32 0
  store void (i8*)* %20, void (i8*)** %22, align 8
  %23 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %5, align 8
  %24 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %23, i32 0, i32 0
  %25 = load %struct.tmpbuf*, %struct.tmpbuf** %24, align 8
  %26 = load %struct.tmpbuf*, %struct.tmpbuf** %8, align 8
  %27 = getelementptr inbounds %struct.tmpbuf, %struct.tmpbuf* %26, i32 0, i32 1
  store %struct.tmpbuf* %25, %struct.tmpbuf** %27, align 8
  %28 = load %struct.tmpbuf*, %struct.tmpbuf** %8, align 8
  %29 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %5, align 8
  %30 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %29, i32 0, i32 0
  store %struct.tmpbuf* %28, %struct.tmpbuf** %30, align 8
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %16, %13
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.tmpbuf* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

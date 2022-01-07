; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_savemem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_savemem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundargs = type { i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.nfsd4_compoundargs*, i32*, i32)* @savemem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @savemem(%struct.nfsd4_compoundargs* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nfsd4_compoundargs*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.nfsd4_compoundargs* %0, %struct.nfsd4_compoundargs** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32*, i32** %6, align 8
  %9 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %5, align 8
  %10 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %8, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32* @kmalloc(i32 %14, i32 %15)
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store i8* null, i8** %4, align 8
  br label %48

20:                                               ; preds = %13
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %5, align 8
  %23 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @memcpy(i32* %21, i32* %24, i32 %25)
  br label %37

27:                                               ; preds = %3
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %5, align 8
  %30 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %5, align 8
  %36 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %27, %20
  %38 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %5, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i64 @defer_free(%struct.nfsd4_compoundargs* %38, i32 (i32*)* @kfree, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @kfree(i32* %43)
  store i8* null, i8** %4, align 8
  br label %48

45:                                               ; preds = %37
  %46 = load i32*, i32** %6, align 8
  %47 = bitcast i32* %46 to i8*
  store i8* %47, i8** %4, align 8
  br label %48

48:                                               ; preds = %45, %42, %19
  %49 = load i8*, i8** %4, align 8
  ret i8* %49
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @defer_free(%struct.nfsd4_compoundargs*, i32 (i32*)*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

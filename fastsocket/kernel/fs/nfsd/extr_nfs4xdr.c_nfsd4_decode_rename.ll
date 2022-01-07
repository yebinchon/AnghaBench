; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundargs = type { i32 }
%struct.nfsd4_rename = type { i32, i32, i32, i32 }

@DECODE_HEAD = common dso_local global i32 0, align 4
@nfserr_noent = common dso_local global i32 0, align 4
@status = common dso_local global i32 0, align 4
@nfserr_inval = common dso_local global i32 0, align 4
@DECODE_TAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundargs*, %struct.nfsd4_rename*)* @nfsd4_decode_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_decode_rename(%struct.nfsd4_compoundargs* %0, %struct.nfsd4_rename* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsd4_compoundargs*, align 8
  %5 = alloca %struct.nfsd4_rename*, align 8
  store %struct.nfsd4_compoundargs* %0, %struct.nfsd4_compoundargs** %4, align 8
  store %struct.nfsd4_rename* %1, %struct.nfsd4_rename** %5, align 8
  %6 = load i32, i32* @DECODE_HEAD, align 4
  %7 = call i32 @READ_BUF(i32 4)
  %8 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %5, align 8
  %9 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @READ32(i32 %10)
  %12 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %5, align 8
  %13 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 4
  %16 = call i32 @READ_BUF(i32 %15)
  %17 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %5, align 8
  %18 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %5, align 8
  %21 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @SAVEMEM(i32 %19, i32 %22)
  %24 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %5, align 8
  %25 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @READ32(i32 %26)
  %28 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %5, align 8
  %29 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @READ_BUF(i32 %30)
  %32 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %5, align 8
  %33 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %5, align 8
  %36 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @SAVEMEM(i32 %34, i32 %37)
  %39 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %5, align 8
  %40 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %5, align 8
  %43 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @nfserr_noent, align 4
  %46 = call i32 @check_filename(i32 %41, i32 %44, i32 %45)
  store i32 %46, i32* @status, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %2
  %49 = load i32, i32* @status, align 4
  store i32 %49, i32* %3, align 4
  br label %64

50:                                               ; preds = %2
  %51 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %5, align 8
  %52 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %5, align 8
  %55 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @nfserr_inval, align 4
  %58 = call i32 @check_filename(i32 %53, i32 %56, i32 %57)
  store i32 %58, i32* @status, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* @status, align 4
  store i32 %61, i32* %3, align 4
  br label %64

62:                                               ; preds = %50
  %63 = load i32, i32* @DECODE_TAIL, align 4
  br label %64

64:                                               ; preds = %62, %60, %48
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @READ_BUF(i32) #1

declare dso_local i32 @READ32(i32) #1

declare dso_local i32 @SAVEMEM(i32, i32) #1

declare dso_local i32 @check_filename(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

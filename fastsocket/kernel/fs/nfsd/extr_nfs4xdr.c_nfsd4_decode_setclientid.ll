; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_setclientid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_setclientid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundargs = type { i32 }
%struct.nfsd4_setclientid = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DECODE_HEAD = common dso_local global i32 0, align 4
@DECODE_TAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundargs*, %struct.nfsd4_setclientid*)* @nfsd4_decode_setclientid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_decode_setclientid(%struct.nfsd4_compoundargs* %0, %struct.nfsd4_setclientid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsd4_compoundargs*, align 8
  %5 = alloca %struct.nfsd4_setclientid*, align 8
  store %struct.nfsd4_compoundargs* %0, %struct.nfsd4_compoundargs** %4, align 8
  store %struct.nfsd4_setclientid* %1, %struct.nfsd4_setclientid** %5, align 8
  %6 = load i32, i32* @DECODE_HEAD, align 4
  %7 = call i32 @READ_BUF(i32 12)
  %8 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %9 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %8, i32 0, i32 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @COPYMEM(i32 %11, i32 8)
  %13 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %14 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @READ32(i32 %15)
  %17 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %18 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 8
  %21 = call i32 @READ_BUF(i32 %20)
  %22 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %23 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %26 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SAVEMEM(i32 %24, i32 %27)
  %29 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %30 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @READ32(i32 %31)
  %33 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %34 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @READ32(i32 %35)
  %37 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %38 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 4
  %41 = call i32 @READ_BUF(i32 %40)
  %42 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %43 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %46 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @SAVEMEM(i32 %44, i32 %47)
  %49 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %50 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @READ32(i32 %51)
  %53 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %54 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 4
  %57 = call i32 @READ_BUF(i32 %56)
  %58 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %59 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %62 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @SAVEMEM(i32 %60, i32 %63)
  %65 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %66 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @READ32(i32 %67)
  %69 = load i32, i32* @DECODE_TAIL, align 4
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @READ_BUF(i32) #1

declare dso_local i32 @COPYMEM(i32, i32) #1

declare dso_local i32 @READ32(i32) #1

declare dso_local i32 @SAVEMEM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

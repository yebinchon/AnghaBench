; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_exchange_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_exchange_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { i32 }
%struct.nfsd4_exchange_id = type { i8, i32, i32, i64 }
%struct.TYPE_2__ = type { i8* }

@SP4_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundres*, i32, %struct.nfsd4_exchange_id*)* @nfsd4_encode_exchange_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_encode_exchange_id(%struct.nfsd4_compoundres* %0, i32 %1, %struct.nfsd4_exchange_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsd4_compoundres*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfsd4_exchange_id*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nfsd4_exchange_id* %2, %struct.nfsd4_exchange_id** %7, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %4, align 4
  br label %77

18:                                               ; preds = %3
  %19 = call %struct.TYPE_2__* (...) @utsname()
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @strlen(i8* %22)
  store i32 %23, i32* %11, align 4
  %24 = call %struct.TYPE_2__* (...) @utsname()
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @strlen(i8* %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @XDR_QUADLEN(i32 %29)
  %31 = mul nsw i32 %30, 4
  %32 = add nsw i32 32, %31
  %33 = add nsw i32 %32, 4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @XDR_QUADLEN(i32 %34)
  %36 = mul nsw i32 %35, 4
  %37 = add nsw i32 %33, %36
  %38 = add nsw i32 %37, 4
  %39 = call i32 @RESERVE_SPACE(i32 %38)
  %40 = load %struct.nfsd4_exchange_id*, %struct.nfsd4_exchange_id** %7, align 8
  %41 = getelementptr inbounds %struct.nfsd4_exchange_id, %struct.nfsd4_exchange_id* %40, i32 0, i32 0
  %42 = call i32 @WRITEMEM(i8* %41, i32 8)
  %43 = load %struct.nfsd4_exchange_id*, %struct.nfsd4_exchange_id** %7, align 8
  %44 = getelementptr inbounds %struct.nfsd4_exchange_id, %struct.nfsd4_exchange_id* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @WRITE32(i32 %45)
  %47 = load %struct.nfsd4_exchange_id*, %struct.nfsd4_exchange_id** %7, align 8
  %48 = getelementptr inbounds %struct.nfsd4_exchange_id, %struct.nfsd4_exchange_id* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @WRITE32(i32 %49)
  %51 = load %struct.nfsd4_exchange_id*, %struct.nfsd4_exchange_id** %7, align 8
  %52 = getelementptr inbounds %struct.nfsd4_exchange_id, %struct.nfsd4_exchange_id* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SP4_NONE, align 8
  %55 = icmp ne i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @BUG_ON(i32 %56)
  %58 = load %struct.nfsd4_exchange_id*, %struct.nfsd4_exchange_id** %7, align 8
  %59 = getelementptr inbounds %struct.nfsd4_exchange_id, %struct.nfsd4_exchange_id* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @WRITE32(i32 %61)
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @WRITE64(i32 %63)
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @WRITE32(i32 %65)
  %67 = load i8*, i8** %9, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @WRITEMEM(i8* %67, i32 %68)
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @WRITE32(i32 %70)
  %72 = load i8*, i8** %10, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @WRITEMEM(i8* %72, i32 %73)
  %75 = call i32 @WRITE32(i32 0)
  %76 = call i32 (...) @ADJUST_ARGS()
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %18, %16
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.TYPE_2__* @utsname(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @RESERVE_SPACE(i32) #1

declare dso_local i32 @XDR_QUADLEN(i32) #1

declare dso_local i32 @WRITEMEM(i8*, i32) #1

declare dso_local i32 @WRITE32(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @WRITE64(i32) #1

declare dso_local i32 @ADJUST_ARGS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

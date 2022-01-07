; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { i32 }
%struct.nfsd4_open = type { i32, i32*, i32, i32, i32, i32, i32, i32 }

@ENCODE_SEQID_OP_HEAD = common dso_local global i32 0, align 4
@NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE = common dso_local global i32 0, align 4
@NFS4_LIMIT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfsd4_compoundres*, i64, %struct.nfsd4_open*)* @nfsd4_encode_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_encode_open(%struct.nfsd4_compoundres* %0, i64 %1, %struct.nfsd4_open* %2) #0 {
  %4 = alloca %struct.nfsd4_compoundres*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nfsd4_open*, align 8
  %7 = alloca i64*, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.nfsd4_open* %2, %struct.nfsd4_open** %6, align 8
  %8 = load i32, i32* @ENCODE_SEQID_OP_HEAD, align 4
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %83

12:                                               ; preds = %3
  %13 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %4, align 8
  %14 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %15 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %14, i32 0, i32 7
  %16 = call i32 @nfsd4_encode_stateid(%struct.nfsd4_compoundres* %13, i32* %15)
  %17 = call i32 @RESERVE_SPACE(i32 40)
  %18 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %19 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %18, i32 0, i32 6
  %20 = call i32 @write_cinfo(i64** %7, i32* %19)
  %21 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %22 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @WRITE32(i32 %23)
  %25 = call i32 @WRITE32(i32 2)
  %26 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %27 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @WRITE32(i32 %30)
  %32 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %33 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @WRITE32(i32 %36)
  %38 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %39 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @WRITE32(i32 %40)
  %42 = call i32 (...) @ADJUST_ARGS()
  %43 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %44 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %80 [
    i32 130, label %46
    i32 129, label %47
    i32 128, label %63
  ]

46:                                               ; preds = %12
  br label %82

47:                                               ; preds = %12
  %48 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %4, align 8
  %49 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %50 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %49, i32 0, i32 5
  %51 = call i32 @nfsd4_encode_stateid(%struct.nfsd4_compoundres* %48, i32* %50)
  %52 = call i32 @RESERVE_SPACE(i32 20)
  %53 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %54 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @WRITE32(i32 %55)
  %57 = load i32, i32* @NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE, align 4
  %58 = call i32 @WRITE32(i32 %57)
  %59 = call i32 @WRITE32(i32 0)
  %60 = call i32 @WRITE32(i32 0)
  %61 = call i32 @WRITE32(i32 0)
  %62 = call i32 (...) @ADJUST_ARGS()
  br label %82

63:                                               ; preds = %12
  %64 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %4, align 8
  %65 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %66 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %65, i32 0, i32 5
  %67 = call i32 @nfsd4_encode_stateid(%struct.nfsd4_compoundres* %64, i32* %66)
  %68 = call i32 @RESERVE_SPACE(i32 32)
  %69 = call i32 @WRITE32(i32 0)
  %70 = load i32, i32* @NFS4_LIMIT_SIZE, align 4
  %71 = call i32 @WRITE32(i32 %70)
  %72 = call i32 @WRITE32(i32 -1)
  %73 = call i32 @WRITE32(i32 -1)
  %74 = load i32, i32* @NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE, align 4
  %75 = call i32 @WRITE32(i32 %74)
  %76 = call i32 @WRITE32(i32 0)
  %77 = call i32 @WRITE32(i32 0)
  %78 = call i32 @WRITE32(i32 0)
  %79 = call i32 (...) @ADJUST_ARGS()
  br label %82

80:                                               ; preds = %12
  %81 = call i32 (...) @BUG()
  br label %82

82:                                               ; preds = %80, %63, %47, %46
  br label %83

83:                                               ; preds = %82, %11
  %84 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %85 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @ENCODE_SEQID_OP_TAIL(i32 %86)
  %88 = load i64, i64* %5, align 8
  ret i64 %88
}

declare dso_local i32 @nfsd4_encode_stateid(%struct.nfsd4_compoundres*, i32*) #1

declare dso_local i32 @RESERVE_SPACE(i32) #1

declare dso_local i32 @write_cinfo(i64**, i32*) #1

declare dso_local i32 @WRITE32(i32) #1

declare dso_local i32 @ADJUST_ARGS(...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ENCODE_SEQID_OP_TAIL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

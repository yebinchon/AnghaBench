; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_open_downgrade.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_open_downgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { i32 }
%struct.nfsd4_open_downgrade = type { i32, i32 }

@ENCODE_SEQID_OP_HEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundres*, i32, %struct.nfsd4_open_downgrade*)* @nfsd4_encode_open_downgrade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_encode_open_downgrade(%struct.nfsd4_compoundres* %0, i32 %1, %struct.nfsd4_open_downgrade* %2) #0 {
  %4 = alloca %struct.nfsd4_compoundres*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfsd4_open_downgrade*, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nfsd4_open_downgrade* %2, %struct.nfsd4_open_downgrade** %6, align 8
  %7 = load i32, i32* @ENCODE_SEQID_OP_HEAD, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %4, align 8
  %12 = load %struct.nfsd4_open_downgrade*, %struct.nfsd4_open_downgrade** %6, align 8
  %13 = getelementptr inbounds %struct.nfsd4_open_downgrade, %struct.nfsd4_open_downgrade* %12, i32 0, i32 1
  %14 = call i32 @nfsd4_encode_stateid(%struct.nfsd4_compoundres* %11, i32* %13)
  br label %15

15:                                               ; preds = %10, %3
  %16 = load %struct.nfsd4_open_downgrade*, %struct.nfsd4_open_downgrade** %6, align 8
  %17 = getelementptr inbounds %struct.nfsd4_open_downgrade, %struct.nfsd4_open_downgrade* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ENCODE_SEQID_OP_TAIL(i32 %18)
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

declare dso_local i32 @nfsd4_encode_stateid(%struct.nfsd4_compoundres*, i32*) #1

declare dso_local i32 @ENCODE_SEQID_OP_TAIL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

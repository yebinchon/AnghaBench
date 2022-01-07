; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_open_confirm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_open_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundargs = type { i32 }
%struct.nfsd4_open_confirm = type { i32, i32, i32* }

@DECODE_HEAD = common dso_local global i32 0, align 4
@status = common dso_local global i64 0, align 8
@DECODE_TAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfsd4_compoundargs*, %struct.nfsd4_open_confirm*)* @nfsd4_decode_open_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_decode_open_confirm(%struct.nfsd4_compoundargs* %0, %struct.nfsd4_open_confirm* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.nfsd4_compoundargs*, align 8
  %5 = alloca %struct.nfsd4_open_confirm*, align 8
  store %struct.nfsd4_compoundargs* %0, %struct.nfsd4_compoundargs** %4, align 8
  store %struct.nfsd4_open_confirm* %1, %struct.nfsd4_open_confirm** %5, align 8
  %6 = load i32, i32* @DECODE_HEAD, align 4
  %7 = load %struct.nfsd4_open_confirm*, %struct.nfsd4_open_confirm** %5, align 8
  %8 = getelementptr inbounds %struct.nfsd4_open_confirm, %struct.nfsd4_open_confirm* %7, i32 0, i32 2
  store i32* null, i32** %8, align 8
  %9 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %10 = load %struct.nfsd4_open_confirm*, %struct.nfsd4_open_confirm** %5, align 8
  %11 = getelementptr inbounds %struct.nfsd4_open_confirm, %struct.nfsd4_open_confirm* %10, i32 0, i32 1
  %12 = call i64 @nfsd4_decode_stateid(%struct.nfsd4_compoundargs* %9, i32* %11)
  store i64 %12, i64* @status, align 8
  %13 = load i64, i64* @status, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* @status, align 8
  store i64 %16, i64* %3, align 8
  br label %24

17:                                               ; preds = %2
  %18 = call i32 @READ_BUF(i32 4)
  %19 = load %struct.nfsd4_open_confirm*, %struct.nfsd4_open_confirm** %5, align 8
  %20 = getelementptr inbounds %struct.nfsd4_open_confirm, %struct.nfsd4_open_confirm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @READ32(i32 %21)
  %23 = load i32, i32* @DECODE_TAIL, align 4
  br label %24

24:                                               ; preds = %17, %15
  %25 = load i64, i64* %3, align 8
  ret i64 %25
}

declare dso_local i64 @nfsd4_decode_stateid(%struct.nfsd4_compoundargs*, i32*) #1

declare dso_local i32 @READ_BUF(i32) #1

declare dso_local i32 @READ32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

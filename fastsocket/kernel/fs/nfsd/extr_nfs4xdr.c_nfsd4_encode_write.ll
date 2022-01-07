; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { i32 }
%struct.nfsd4_write = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundres*, i32, %struct.nfsd4_write*)* @nfsd4_encode_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_encode_write(%struct.nfsd4_compoundres* %0, i32 %1, %struct.nfsd4_write* %2) #0 {
  %4 = alloca %struct.nfsd4_compoundres*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfsd4_write*, align 8
  %7 = alloca i32*, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nfsd4_write* %2, %struct.nfsd4_write** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %3
  %11 = call i32 @RESERVE_SPACE(i32 16)
  %12 = load %struct.nfsd4_write*, %struct.nfsd4_write** %6, align 8
  %13 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @WRITE32(i32 %14)
  %16 = load %struct.nfsd4_write*, %struct.nfsd4_write** %6, align 8
  %17 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @WRITE32(i32 %18)
  %20 = load %struct.nfsd4_write*, %struct.nfsd4_write** %6, align 8
  %21 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @WRITEMEM(i32 %23, i32 8)
  %25 = call i32 (...) @ADJUST_ARGS()
  br label %26

26:                                               ; preds = %10, %3
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @RESERVE_SPACE(i32) #1

declare dso_local i32 @WRITE32(i32) #1

declare dso_local i32 @WRITEMEM(i32, i32) #1

declare dso_local i32 @ADJUST_ARGS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

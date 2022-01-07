; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_replay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_replay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { i32 }
%struct.nfsd4_op = type { i32, %struct.nfs4_replay* }
%struct.nfs4_replay = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsd4_encode_replay(%struct.nfsd4_compoundres* %0, %struct.nfsd4_op* %1) #0 {
  %3 = alloca %struct.nfsd4_compoundres*, align 8
  %4 = alloca %struct.nfsd4_op*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfs4_replay*, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %3, align 8
  store %struct.nfsd4_op* %1, %struct.nfsd4_op** %4, align 8
  %7 = load %struct.nfsd4_op*, %struct.nfsd4_op** %4, align 8
  %8 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %7, i32 0, i32 1
  %9 = load %struct.nfs4_replay*, %struct.nfs4_replay** %8, align 8
  store %struct.nfs4_replay* %9, %struct.nfs4_replay** %6, align 8
  %10 = load %struct.nfs4_replay*, %struct.nfs4_replay** %6, align 8
  %11 = icmp ne %struct.nfs4_replay* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = call i32 @RESERVE_SPACE(i32 8)
  %16 = load %struct.nfsd4_op*, %struct.nfsd4_op** %4, align 8
  %17 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @WRITE32(i32 %18)
  %20 = load %struct.nfs4_replay*, %struct.nfs4_replay** %6, align 8
  %21 = getelementptr inbounds %struct.nfs4_replay, %struct.nfs4_replay* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  %25 = call i32 (...) @ADJUST_ARGS()
  %26 = load %struct.nfs4_replay*, %struct.nfs4_replay** %6, align 8
  %27 = getelementptr inbounds %struct.nfs4_replay, %struct.nfs4_replay* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @RESERVE_SPACE(i32 %28)
  %30 = load %struct.nfs4_replay*, %struct.nfs4_replay** %6, align 8
  %31 = getelementptr inbounds %struct.nfs4_replay, %struct.nfs4_replay* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nfs4_replay*, %struct.nfs4_replay** %6, align 8
  %34 = getelementptr inbounds %struct.nfs4_replay, %struct.nfs4_replay* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @WRITEMEM(i32 %32, i32 %35)
  %37 = call i32 (...) @ADJUST_ARGS()
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @RESERVE_SPACE(i32) #1

declare dso_local i32 @WRITE32(i32) #1

declare dso_local i32 @ADJUST_ARGS(...) #1

declare dso_local i32 @WRITEMEM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

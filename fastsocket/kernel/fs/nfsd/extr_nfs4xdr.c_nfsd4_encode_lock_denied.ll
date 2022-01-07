; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_lock_denied.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_lock_denied.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { i32 }
%struct.nfsd4_lock_denied = type { i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }

@nfs4_free_stateowner = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsd4_compoundres*, %struct.nfsd4_lock_denied*)* @nfsd4_encode_lock_denied to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsd4_encode_lock_denied(%struct.nfsd4_compoundres* %0, %struct.nfsd4_lock_denied* %1) #0 {
  %3 = alloca %struct.nfsd4_compoundres*, align 8
  %4 = alloca %struct.nfsd4_lock_denied*, align 8
  %5 = alloca i32*, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %3, align 8
  store %struct.nfsd4_lock_denied* %1, %struct.nfsd4_lock_denied** %4, align 8
  %6 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %7 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %12 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %10
  %19 = phi i32 [ %16, %10 ], [ 0, %17 ]
  %20 = call i64 @XDR_LEN(i32 %19)
  %21 = add nsw i64 32, %20
  %22 = call i32 @RESERVE_SPACE(i64 %21)
  %23 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %24 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @WRITE64(i32 %25)
  %27 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %28 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @WRITE64(i32 %29)
  %31 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %32 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @WRITE32(i32 %33)
  %35 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %36 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = icmp ne %struct.TYPE_4__* %37, null
  br i1 %38, label %39, label %69

39:                                               ; preds = %18
  %40 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %41 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %40, i32 0, i32 2
  %42 = call i32 @WRITEMEM(i32* %41, i32 8)
  %43 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %44 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @WRITE32(i32 %48)
  %50 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %51 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %57 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @WRITEMEM(i32* %55, i32 %61)
  %63 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %64 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* @nfs4_free_stateowner, align 4
  %68 = call i32 @kref_put(i32* %66, i32 %67)
  br label %72

69:                                               ; preds = %18
  %70 = call i32 @WRITE64(i32 0)
  %71 = call i32 @WRITE32(i32 0)
  br label %72

72:                                               ; preds = %69, %39
  %73 = call i32 (...) @ADJUST_ARGS()
  ret void
}

declare dso_local i32 @RESERVE_SPACE(i64) #1

declare dso_local i64 @XDR_LEN(i32) #1

declare dso_local i32 @WRITE64(i32) #1

declare dso_local i32 @WRITE32(i32) #1

declare dso_local i32 @WRITEMEM(i32*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @ADJUST_ARGS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_create_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_create_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { i32 }
%struct.nfsd4_create_session = type { %struct.TYPE_6__, %struct.TYPE_5__, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@NFS4_MAX_SESSIONID_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundres*, i32, %struct.nfsd4_create_session*)* @nfsd4_encode_create_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_encode_create_session(%struct.nfsd4_compoundres* %0, i32 %1, %struct.nfsd4_create_session* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsd4_compoundres*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfsd4_create_session*, align 8
  %8 = alloca i32*, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nfsd4_create_session* %2, %struct.nfsd4_create_session** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %4, align 4
  br label %124

13:                                               ; preds = %3
  %14 = call i32 @RESERVE_SPACE(i32 24)
  %15 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %16 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @NFS4_MAX_SESSIONID_LEN, align 4
  %20 = call i32 @WRITEMEM(i32 %18, i32 %19)
  %21 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %22 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @WRITE32(i64 %23)
  %25 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %26 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @WRITE32(i64 %27)
  %29 = call i32 (...) @ADJUST_ARGS()
  %30 = call i32 @RESERVE_SPACE(i32 28)
  %31 = call i32 @WRITE32(i64 0)
  %32 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %33 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @WRITE32(i64 %35)
  %37 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %38 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @WRITE32(i64 %40)
  %42 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %43 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @WRITE32(i64 %45)
  %47 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %48 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @WRITE32(i64 %50)
  %52 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %53 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @WRITE32(i64 %55)
  %57 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %58 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @WRITE32(i64 %60)
  %62 = call i32 (...) @ADJUST_ARGS()
  %63 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %64 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %13
  %69 = call i32 @RESERVE_SPACE(i32 4)
  %70 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %71 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @WRITE32(i64 %73)
  %75 = call i32 (...) @ADJUST_ARGS()
  br label %76

76:                                               ; preds = %68, %13
  %77 = call i32 @RESERVE_SPACE(i32 28)
  %78 = call i32 @WRITE32(i64 0)
  %79 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %80 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @WRITE32(i64 %82)
  %84 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %85 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @WRITE32(i64 %87)
  %89 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %90 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @WRITE32(i64 %92)
  %94 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %95 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @WRITE32(i64 %97)
  %99 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %100 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @WRITE32(i64 %102)
  %104 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %105 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @WRITE32(i64 %107)
  %109 = call i32 (...) @ADJUST_ARGS()
  %110 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %111 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %76
  %116 = call i32 @RESERVE_SPACE(i32 4)
  %117 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %118 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @WRITE32(i64 %120)
  %122 = call i32 (...) @ADJUST_ARGS()
  br label %123

123:                                              ; preds = %115, %76
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %123, %11
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @RESERVE_SPACE(i32) #1

declare dso_local i32 @WRITEMEM(i32, i32) #1

declare dso_local i32 @WRITE32(i64) #1

declare dso_local i32 @ADJUST_ARGS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_openargs = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.compound_hdr = type { i32, i32 }

@decode_open_maxsz = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs_openargs*, %struct.compound_hdr*)* @encode_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_open(%struct.xdr_stream* %0, %struct.nfs_openargs* %1, %struct.compound_hdr* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs_openargs*, align 8
  %6 = alloca %struct.compound_hdr*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs_openargs* %1, %struct.nfs_openargs** %5, align 8
  store %struct.compound_hdr* %2, %struct.compound_hdr** %6, align 8
  %7 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %8 = load %struct.nfs_openargs*, %struct.nfs_openargs** %5, align 8
  %9 = call i32 @encode_openhdr(%struct.xdr_stream* %7, %struct.nfs_openargs* %8)
  %10 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %11 = load %struct.nfs_openargs*, %struct.nfs_openargs** %5, align 8
  %12 = call i32 @encode_opentype(%struct.xdr_stream* %10, %struct.nfs_openargs* %11)
  %13 = load %struct.nfs_openargs*, %struct.nfs_openargs** %5, align 8
  %14 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %47 [
    i32 129, label %16
    i32 128, label %22
    i32 132, label %29
    i32 130, label %38
    i32 131, label %41
  ]

16:                                               ; preds = %3
  %17 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %18 = load %struct.nfs_openargs*, %struct.nfs_openargs** %5, align 8
  %19 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @encode_claim_null(%struct.xdr_stream* %17, i32 %20)
  br label %49

22:                                               ; preds = %3
  %23 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %24 = load %struct.nfs_openargs*, %struct.nfs_openargs** %5, align 8
  %25 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @encode_claim_previous(%struct.xdr_stream* %23, i32 %27)
  br label %49

29:                                               ; preds = %3
  %30 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %31 = load %struct.nfs_openargs*, %struct.nfs_openargs** %5, align 8
  %32 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nfs_openargs*, %struct.nfs_openargs** %5, align 8
  %35 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @encode_claim_delegate_cur(%struct.xdr_stream* %30, i32 %33, i32* %36)
  br label %49

38:                                               ; preds = %3
  %39 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %40 = call i32 @encode_claim_fh(%struct.xdr_stream* %39)
  br label %49

41:                                               ; preds = %3
  %42 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %43 = load %struct.nfs_openargs*, %struct.nfs_openargs** %5, align 8
  %44 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @encode_claim_delegate_cur_fh(%struct.xdr_stream* %42, i32* %45)
  br label %49

47:                                               ; preds = %3
  %48 = call i32 (...) @BUG()
  br label %49

49:                                               ; preds = %47, %41, %38, %29, %22, %16
  %50 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %51 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load i64, i64* @decode_open_maxsz, align 8
  %55 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %56 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %54
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 4
  ret void
}

declare dso_local i32 @encode_openhdr(%struct.xdr_stream*, %struct.nfs_openargs*) #1

declare dso_local i32 @encode_opentype(%struct.xdr_stream*, %struct.nfs_openargs*) #1

declare dso_local i32 @encode_claim_null(%struct.xdr_stream*, i32) #1

declare dso_local i32 @encode_claim_previous(%struct.xdr_stream*, i32) #1

declare dso_local i32 @encode_claim_delegate_cur(%struct.xdr_stream*, i32, i32*) #1

declare dso_local i32 @encode_claim_fh(%struct.xdr_stream*) #1

declare dso_local i32 @encode_claim_delegate_cur_fh(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

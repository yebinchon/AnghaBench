; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4filelayout.c_select_bucket_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4filelayout.c_select_bucket_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_filelayout_segment = type { i64, i32 }

@STRIPE_SPARSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_filelayout_segment*, i32)* @select_bucket_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_bucket_index(%struct.nfs4_filelayout_segment* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs4_filelayout_segment*, align 8
  %5 = alloca i32, align 4
  store %struct.nfs4_filelayout_segment* %0, %struct.nfs4_filelayout_segment** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.nfs4_filelayout_segment*, %struct.nfs4_filelayout_segment** %4, align 8
  %7 = getelementptr inbounds %struct.nfs4_filelayout_segment, %struct.nfs4_filelayout_segment* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @STRIPE_SPARSE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.nfs4_filelayout_segment*, %struct.nfs4_filelayout_segment** %4, align 8
  %13 = getelementptr inbounds %struct.nfs4_filelayout_segment, %struct.nfs4_filelayout_segment* %12, i32 0, i32 1
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @nfs4_fl_calc_ds_index(i32* %13, i32 %14)
  store i32 %15, i32* %3, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %16, %11
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @nfs4_fl_calc_ds_index(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

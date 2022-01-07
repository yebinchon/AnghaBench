; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ssnmap.c_sctp_ssnmap_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ssnmap.c_sctp_ssnmap_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ssnmap = type { %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MAX_KMALLOC_SIZE = common dso_local global i32 0, align 4
@ssnmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_ssnmap_free(%struct.sctp_ssnmap* %0) #0 {
  %2 = alloca %struct.sctp_ssnmap*, align 8
  %3 = alloca i32, align 4
  store %struct.sctp_ssnmap* %0, %struct.sctp_ssnmap** %2, align 8
  %4 = load %struct.sctp_ssnmap*, %struct.sctp_ssnmap** %2, align 8
  %5 = icmp ne %struct.sctp_ssnmap* %4, null
  br i1 %5, label %6, label %36

6:                                                ; preds = %1
  %7 = load %struct.sctp_ssnmap*, %struct.sctp_ssnmap** %2, align 8
  %8 = getelementptr inbounds %struct.sctp_ssnmap, %struct.sctp_ssnmap* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %6
  %12 = load %struct.sctp_ssnmap*, %struct.sctp_ssnmap** %2, align 8
  %13 = getelementptr inbounds %struct.sctp_ssnmap, %struct.sctp_ssnmap* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sctp_ssnmap*, %struct.sctp_ssnmap** %2, align 8
  %17 = getelementptr inbounds %struct.sctp_ssnmap, %struct.sctp_ssnmap* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @sctp_ssnmap_size(i32 %15, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @MAX_KMALLOC_SIZE, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %11
  %25 = load %struct.sctp_ssnmap*, %struct.sctp_ssnmap** %2, align 8
  %26 = call i32 @kfree(%struct.sctp_ssnmap* %25)
  br label %33

27:                                               ; preds = %11
  %28 = load %struct.sctp_ssnmap*, %struct.sctp_ssnmap** %2, align 8
  %29 = ptrtoint %struct.sctp_ssnmap* %28 to i64
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @get_order(i32 %30)
  %32 = call i32 @free_pages(i64 %29, i32 %31)
  br label %33

33:                                               ; preds = %27, %24
  %34 = load i32, i32* @ssnmap, align 4
  %35 = call i32 @SCTP_DBG_OBJCNT_DEC(i32 %34)
  br label %36

36:                                               ; preds = %33, %6, %1
  ret void
}

declare dso_local i32 @sctp_ssnmap_size(i32, i32) #1

declare dso_local i32 @kfree(%struct.sctp_ssnmap*) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @SCTP_DBG_OBJCNT_DEC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

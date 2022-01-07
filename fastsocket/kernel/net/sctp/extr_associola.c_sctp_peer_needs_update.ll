; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_associola.c_sctp_peer_needs_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_associola.c_sctp_peer_needs_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32, i32, %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@__u32 = common dso_local global i32 0, align 4
@sctp_rwnd_upd_shift = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_association*)* @sctp_peer_needs_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_peer_needs_update(%struct.sctp_association* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sctp_association*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %3, align 8
  %4 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %5 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %39 [
    i32 131, label %7
    i32 130, label %7
    i32 129, label %7
    i32 128, label %7
  ]

7:                                                ; preds = %1, %1, %1, %1
  %8 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %9 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %12 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %10, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %7
  %16 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %17 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %20 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  %23 = load i32, i32* @__u32, align 4
  %24 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %25 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @sctp_rwnd_upd_shift, align 4
  %31 = ashr i32 %29, %30
  %32 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %33 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @max_t(i32 %23, i32 %31, i32 %34)
  %36 = icmp sge i64 %22, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %41

38:                                               ; preds = %15, %7
  br label %40

39:                                               ; preds = %1
  br label %40

40:                                               ; preds = %39, %38
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @max_t(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

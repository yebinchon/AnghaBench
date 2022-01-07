; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_outqueue.c_sctp_sack_update_unack_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_outqueue.c_sctp_sack_update_unack_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32, i32, i32 }
%struct.sctp_sackhdr = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_association*, %struct.sctp_sackhdr*)* @sctp_sack_update_unack_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_sack_update_unack_data(%struct.sctp_association* %0, %struct.sctp_sackhdr* %1) #0 {
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %struct.sctp_sackhdr*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %3, align 8
  store %struct.sctp_sackhdr* %1, %struct.sctp_sackhdr** %4, align 8
  %8 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %9 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %12 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %10, %13
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %6, align 4
  %16 = load %struct.sctp_sackhdr*, %struct.sctp_sackhdr** %4, align 8
  %17 = getelementptr inbounds %struct.sctp_sackhdr, %struct.sctp_sackhdr* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %5, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %47, %2
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.sctp_sackhdr*, %struct.sctp_sackhdr** %4, align 8
  %22 = getelementptr inbounds %struct.sctp_sackhdr, %struct.sctp_sackhdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ntohs(i32 %23)
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %19
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ntohs(i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ntohs(i32 %41)
  %43 = sub nsw i32 %34, %42
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %26
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %19

50:                                               ; preds = %19
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %53 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  ret void
}

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_death_by_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_death_by_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }

@IPS_DYING_BIT = common dso_local global i32 0, align 4
@IPCT_DESTROY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @death_by_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @death_by_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.nf_conn*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to i8*
  %6 = bitcast i8* %5 to %struct.nf_conn*
  store %struct.nf_conn* %6, %struct.nf_conn** %3, align 8
  %7 = load i32, i32* @IPS_DYING_BIT, align 4
  %8 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %9 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %8, i32 0, i32 0
  %10 = call i32 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @IPCT_DESTROY, align 4
  %14 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %15 = call i64 @nf_conntrack_event(i32 %13, %struct.nf_conn* %14)
  %16 = icmp slt i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %22 = call i32 @nf_ct_delete_from_lists(%struct.nf_conn* %21)
  %23 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %24 = call i32 @nf_ct_insert_dying_list(%struct.nf_conn* %23)
  br label %34

25:                                               ; preds = %12, %1
  %26 = load i32, i32* @IPS_DYING_BIT, align 4
  %27 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %28 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %27, i32 0, i32 0
  %29 = call i32 @set_bit(i32 %26, i32* %28)
  %30 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %31 = call i32 @nf_ct_delete_from_lists(%struct.nf_conn* %30)
  %32 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %33 = call i32 @nf_ct_put(%struct.nf_conn* %32)
  br label %34

34:                                               ; preds = %25, %20
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @nf_conntrack_event(i32, %struct.nf_conn*) #1

declare dso_local i32 @nf_ct_delete_from_lists(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_insert_dying_list(%struct.nf_conn*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nf_ct_put(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

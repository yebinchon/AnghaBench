; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_nf_ct_iterate_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_nf_ct_iterate_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nf_conn = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_ct_iterate_cleanup(%struct.net* %0, i32 (%struct.nf_conn*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca i32 (%struct.nf_conn*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nf_conn*, align 8
  %8 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store i32 (%struct.nf_conn*, i8*)* %1, i32 (%struct.nf_conn*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %24, %3
  %10 = load %struct.net*, %struct.net** %4, align 8
  %11 = load i32 (%struct.nf_conn*, i8*)*, i32 (%struct.nf_conn*, i8*)** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.nf_conn* @get_next_corpse(%struct.net* %10, i32 (%struct.nf_conn*, i8*)* %11, i8* %12, i32* %8)
  store %struct.nf_conn* %13, %struct.nf_conn** %7, align 8
  %14 = icmp ne %struct.nf_conn* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %17 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %16, i32 0, i32 0
  %18 = call i64 @del_timer(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %22 = ptrtoint %struct.nf_conn* %21 to i64
  %23 = call i32 @death_by_timeout(i64 %22)
  br label %24

24:                                               ; preds = %20, %15
  %25 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %26 = call i32 @nf_ct_put(%struct.nf_conn* %25)
  br label %9

27:                                               ; preds = %9
  ret void
}

declare dso_local %struct.nf_conn* @get_next_corpse(%struct.net*, i32 (%struct.nf_conn*, i8*)*, i8*, i32*) #1

declare dso_local i64 @del_timer(i32*) #1

declare dso_local i32 @death_by_timeout(i64) #1

declare dso_local i32 @nf_ct_put(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

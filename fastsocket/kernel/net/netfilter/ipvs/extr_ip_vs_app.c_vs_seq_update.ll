; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_app.c_vs_seq_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_app.c_vs_seq_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i32, i32 }
%struct.ip_vs_seq = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_conn*, %struct.ip_vs_seq*, i32, i32, i32)* @vs_seq_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vs_seq_update(%struct.ip_vs_conn* %0, %struct.ip_vs_seq* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ip_vs_conn*, align 8
  %7 = alloca %struct.ip_vs_seq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %6, align 8
  store %struct.ip_vs_seq* %1, %struct.ip_vs_seq** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %12 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %11, i32 0, i32 1
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %15 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.ip_vs_seq*, %struct.ip_vs_seq** %7, align 8
  %23 = getelementptr inbounds %struct.ip_vs_seq, %struct.ip_vs_seq* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @after(i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %20, %5
  %28 = load %struct.ip_vs_seq*, %struct.ip_vs_seq** %7, align 8
  %29 = getelementptr inbounds %struct.ip_vs_seq, %struct.ip_vs_seq* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ip_vs_seq*, %struct.ip_vs_seq** %7, align 8
  %32 = getelementptr inbounds %struct.ip_vs_seq, %struct.ip_vs_seq* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.ip_vs_seq*, %struct.ip_vs_seq** %7, align 8
  %35 = getelementptr inbounds %struct.ip_vs_seq, %struct.ip_vs_seq* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.ip_vs_seq*, %struct.ip_vs_seq** %7, align 8
  %40 = getelementptr inbounds %struct.ip_vs_seq, %struct.ip_vs_seq* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %43 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %27, %20
  %47 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %48 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %47, i32 0, i32 1
  %49 = call i32 @spin_unlock(i32* %48)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @after(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

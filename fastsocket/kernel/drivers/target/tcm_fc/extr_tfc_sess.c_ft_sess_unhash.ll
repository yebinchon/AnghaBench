; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/tcm_fc/extr_tfc_sess.c_ft_sess_unhash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/tcm_fc/extr_tfc_sess.c_ft_sess_unhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ft_sess = type { i32, i64, i32, %struct.ft_tport* }
%struct.ft_tport = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ft_sess*)* @ft_sess_unhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ft_sess_unhash(%struct.ft_sess* %0) #0 {
  %2 = alloca %struct.ft_sess*, align 8
  %3 = alloca %struct.ft_tport*, align 8
  store %struct.ft_sess* %0, %struct.ft_sess** %2, align 8
  %4 = load %struct.ft_sess*, %struct.ft_sess** %2, align 8
  %5 = getelementptr inbounds %struct.ft_sess, %struct.ft_sess* %4, i32 0, i32 3
  %6 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  store %struct.ft_tport* %6, %struct.ft_tport** %3, align 8
  %7 = load %struct.ft_sess*, %struct.ft_sess** %2, align 8
  %8 = getelementptr inbounds %struct.ft_sess, %struct.ft_sess* %7, i32 0, i32 2
  %9 = call i32 @hlist_del_rcu(i32* %8)
  %10 = load %struct.ft_tport*, %struct.ft_tport** %3, align 8
  %11 = getelementptr inbounds %struct.ft_tport, %struct.ft_tport* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.ft_tport*, %struct.ft_tport** %3, align 8
  %18 = getelementptr inbounds %struct.ft_tport, %struct.ft_tport* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.ft_sess*, %struct.ft_sess** %2, align 8
  %22 = getelementptr inbounds %struct.ft_sess, %struct.ft_sess* %21, i32 0, i32 0
  store i32 -1, i32* %22, align 8
  %23 = load %struct.ft_sess*, %struct.ft_sess** %2, align 8
  %24 = getelementptr inbounds %struct.ft_sess, %struct.ft_sess* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  ret void
}

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

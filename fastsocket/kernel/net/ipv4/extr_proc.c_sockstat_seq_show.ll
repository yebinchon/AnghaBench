; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_proc.c_sockstat_seq_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_proc.c_sockstat_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.seq_file = type { %struct.net* }
%struct.net = type { i32 }

@tcp_orphan_count = common dso_local global i32 0, align 4
@tcp_sockets_allocated = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"TCP: inuse %d orphan %d tw %d alloc %d mem %d\0A\00", align 1
@tcp_prot = common dso_local global i32 0, align 4
@tcp_death_row = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@tcp_memory_allocated = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"UDP: inuse %d mem %d\0A\00", align 1
@udp_prot = common dso_local global i32 0, align 4
@udp_memory_allocated = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"UDPLITE: inuse %d\0A\00", align 1
@udplite_prot = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"RAW: inuse %d\0A\00", align 1
@raw_prot = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"FRAG: inuse %d memory %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @sockstat_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sockstat_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.net*, %struct.net** %9, align 8
  store %struct.net* %10, %struct.net** %5, align 8
  %11 = call i32 (...) @local_bh_disable()
  %12 = call i32 @percpu_counter_sum_positive(i32* @tcp_orphan_count)
  store i32 %12, i32* %6, align 4
  %13 = call i32 @percpu_counter_sum_positive(i32* @tcp_sockets_allocated)
  store i32 %13, i32* %7, align 4
  %14 = call i32 (...) @local_bh_enable()
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = call i32 @socket_seq_show(%struct.seq_file* %15)
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = load %struct.net*, %struct.net** %5, align 8
  %19 = call i32 @sock_prot_inuse_get(%struct.net* %18, i32* @tcp_prot)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcp_death_row, i32 0, i32 0), align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @atomic_read(i32* @tcp_memory_allocated)
  %24 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = load %struct.net*, %struct.net** %5, align 8
  %27 = call i32 @sock_prot_inuse_get(%struct.net* %26, i32* @udp_prot)
  %28 = call i32 @atomic_read(i32* @udp_memory_allocated)
  %29 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = load %struct.net*, %struct.net** %5, align 8
  %32 = call i32 @sock_prot_inuse_get(%struct.net* %31, i32* @udplite_prot)
  %33 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %35 = load %struct.net*, %struct.net** %5, align 8
  %36 = call i32 @sock_prot_inuse_get(%struct.net* %35, i32* @raw_prot)
  %37 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %39 = load %struct.net*, %struct.net** %5, align 8
  %40 = call i32 @ip_frag_nqueues(%struct.net* %39)
  %41 = load %struct.net*, %struct.net** %5, align 8
  %42 = call i32 @ip_frag_mem(%struct.net* %41)
  %43 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %40, i32 %42)
  ret i32 0
}

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @percpu_counter_sum_positive(i32*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @socket_seq_show(%struct.seq_file*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @sock_prot_inuse_get(%struct.net*, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ip_frag_nqueues(%struct.net*) #1

declare dso_local i32 @ip_frag_mem(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

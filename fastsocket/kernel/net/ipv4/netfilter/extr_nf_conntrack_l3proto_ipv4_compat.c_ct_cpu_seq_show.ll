; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_conntrack_l3proto_ipv4_compat.c_ct_cpu_seq_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_conntrack_l3proto_ipv4_compat.c_ct_cpu_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ip_conntrack_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [151 x i8] c"entries  searched found new invalid ignore delete delete_list insert insert_failed drop early_drop icmp_error  expect_new expect_create expect_delete\0A\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"%08x  %08x %08x %08x %08x %08x %08x %08x %08x %08x %08x %08x %08x  %08x %08x %08x \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @ct_cpu_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_cpu_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ip_conntrack_stat*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %10 = call %struct.net* @seq_file_net(%struct.seq_file* %9)
  store %struct.net* %10, %struct.net** %6, align 8
  %11 = load %struct.net*, %struct.net** %6, align 8
  %12 = getelementptr inbounds %struct.net, %struct.net* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @atomic_read(i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.ip_conntrack_stat*
  store %struct.ip_conntrack_stat* %16, %struct.ip_conntrack_stat** %8, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %19 = icmp eq i8* %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %72

23:                                               ; preds = %2
  %24 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.ip_conntrack_stat*, %struct.ip_conntrack_stat** %8, align 8
  %27 = getelementptr inbounds %struct.ip_conntrack_stat, %struct.ip_conntrack_stat* %26, i32 0, i32 14
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ip_conntrack_stat*, %struct.ip_conntrack_stat** %8, align 8
  %30 = getelementptr inbounds %struct.ip_conntrack_stat, %struct.ip_conntrack_stat* %29, i32 0, i32 13
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ip_conntrack_stat*, %struct.ip_conntrack_stat** %8, align 8
  %33 = getelementptr inbounds %struct.ip_conntrack_stat, %struct.ip_conntrack_stat* %32, i32 0, i32 12
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ip_conntrack_stat*, %struct.ip_conntrack_stat** %8, align 8
  %36 = getelementptr inbounds %struct.ip_conntrack_stat, %struct.ip_conntrack_stat* %35, i32 0, i32 11
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ip_conntrack_stat*, %struct.ip_conntrack_stat** %8, align 8
  %39 = getelementptr inbounds %struct.ip_conntrack_stat, %struct.ip_conntrack_stat* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ip_conntrack_stat*, %struct.ip_conntrack_stat** %8, align 8
  %42 = getelementptr inbounds %struct.ip_conntrack_stat, %struct.ip_conntrack_stat* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ip_conntrack_stat*, %struct.ip_conntrack_stat** %8, align 8
  %45 = getelementptr inbounds %struct.ip_conntrack_stat, %struct.ip_conntrack_stat* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ip_conntrack_stat*, %struct.ip_conntrack_stat** %8, align 8
  %48 = getelementptr inbounds %struct.ip_conntrack_stat, %struct.ip_conntrack_stat* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ip_conntrack_stat*, %struct.ip_conntrack_stat** %8, align 8
  %51 = getelementptr inbounds %struct.ip_conntrack_stat, %struct.ip_conntrack_stat* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ip_conntrack_stat*, %struct.ip_conntrack_stat** %8, align 8
  %54 = getelementptr inbounds %struct.ip_conntrack_stat, %struct.ip_conntrack_stat* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ip_conntrack_stat*, %struct.ip_conntrack_stat** %8, align 8
  %57 = getelementptr inbounds %struct.ip_conntrack_stat, %struct.ip_conntrack_stat* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ip_conntrack_stat*, %struct.ip_conntrack_stat** %8, align 8
  %60 = getelementptr inbounds %struct.ip_conntrack_stat, %struct.ip_conntrack_stat* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ip_conntrack_stat*, %struct.ip_conntrack_stat** %8, align 8
  %63 = getelementptr inbounds %struct.ip_conntrack_stat, %struct.ip_conntrack_stat* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ip_conntrack_stat*, %struct.ip_conntrack_stat** %8, align 8
  %66 = getelementptr inbounds %struct.ip_conntrack_stat, %struct.ip_conntrack_stat* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ip_conntrack_stat*, %struct.ip_conntrack_stat** %8, align 8
  %69 = getelementptr inbounds %struct.ip_conntrack_stat, %struct.ip_conntrack_stat* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %28, i32 %31, i32 %34, i32 %37, i32 %40, i32 %43, i32 %46, i32 %49, i32 %52, i32 %55, i32 %58, i32 %61, i32 %64, i32 %67, i32 %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %23, %20
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.net* @seq_file_net(%struct.seq_file*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

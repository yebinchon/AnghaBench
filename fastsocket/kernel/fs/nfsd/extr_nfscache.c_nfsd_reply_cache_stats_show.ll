; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfscache.c_nfsd_reply_cache_stats_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfscache.c_nfsd_reply_cache_stats_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.seq_file = type { i32 }

@cache_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"max entries:           %u\0A\00", align 1
@max_drc_entries = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"num entries:           %u\0A\00", align 1
@num_drc_entries = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"hash buckets:          %u\0A\00", align 1
@maskbits = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"mem usage:             %u\0A\00", align 1
@drc_mem_usage = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"cache hits:            %u\0A\00", align 1
@nfsdstats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"cache misses:          %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"not cached:            %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"payload misses:        %u\0A\00", align 1
@payload_misses = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"longest chain len:     %u\0A\00", align 1
@longest_chain = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"cachesize at longest:  %u\0A\00", align 1
@longest_chain_cachesize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @nfsd_reply_cache_stats_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_reply_cache_stats_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = call i32 @spin_lock(i32* @cache_lock)
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = load i32, i32* @max_drc_entries, align 4
  %8 = call i32 @seq_printf(%struct.seq_file* %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = load i32, i32* @num_drc_entries, align 4
  %11 = call i32 @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = load i32, i32* @maskbits, align 4
  %14 = shl i32 1, %13
  %15 = call i32 @seq_printf(%struct.seq_file* %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = load i32, i32* @drc_mem_usage, align 4
  %18 = call i32 @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %17)
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsdstats, i32 0, i32 0), align 4
  %21 = call i32 @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %20)
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsdstats, i32 0, i32 1), align 4
  %24 = call i32 @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %23)
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsdstats, i32 0, i32 2), align 4
  %27 = call i32 @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %26)
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = load i32, i32* @payload_misses, align 4
  %30 = call i32 @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %29)
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = load i32, i32* @longest_chain, align 4
  %33 = call i32 @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %32)
  %34 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %35 = load i32, i32* @longest_chain_cachesize, align 4
  %36 = call i32 @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %35)
  %37 = call i32 @spin_unlock(i32* @cache_lock)
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

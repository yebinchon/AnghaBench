; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_recv.c_rds_iw_recv_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_recv.c_rds_iw_recv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysinfo = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@RDS_FRAG_SIZE = common dso_local global i32 0, align 4
@rds_iw_sysctl_max_recv_allocation = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"rds_iw_incoming\00", align 1
@rds_iw_incoming_slab = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"rds_iw_frag\00", align 1
@rds_iw_frag_slab = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_iw_recv_init() #0 {
  %1 = alloca %struct.sysinfo, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @ENOMEM, align 4
  %4 = sub nsw i32 0, %3
  store i32 %4, i32* %2, align 4
  %5 = call i32 @si_meminfo(%struct.sysinfo* %1)
  %6 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %1, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sdiv i32 %7, 3
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = mul nsw i32 %8, %9
  %11 = load i32, i32* @RDS_FRAG_SIZE, align 4
  %12 = sdiv i32 %10, %11
  store i32 %12, i32* @rds_iw_sysctl_max_recv_allocation, align 4
  %13 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 4, i32 0, i32 0, i32* null)
  store i8* %13, i8** @rds_iw_incoming_slab, align 8
  %14 = load i8*, i8** @rds_iw_incoming_slab, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %0
  br label %26

17:                                               ; preds = %0
  %18 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 0, i32 0, i32* null)
  store i8* %18, i8** @rds_iw_frag_slab, align 8
  %19 = load i8*, i8** @rds_iw_frag_slab, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** @rds_iw_incoming_slab, align 8
  %23 = call i32 @kmem_cache_destroy(i8* %22)
  br label %25

24:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %21
  br label %26

26:                                               ; preds = %25, %16
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @si_meminfo(%struct.sysinfo*) #1

declare dso_local i8* @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @kmem_cache_destroy(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

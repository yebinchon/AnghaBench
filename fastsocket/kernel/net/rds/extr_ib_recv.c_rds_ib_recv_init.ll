; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_recv.c_rds_ib_recv_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_recv.c_rds_ib_recv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysinfo = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@RDS_FRAG_SIZE = common dso_local global i32 0, align 4
@rds_ib_sysctl_max_recv_allocation = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"rds_ib_incoming\00", align 1
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@rds_ib_incoming_slab = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"rds_ib_frag\00", align 1
@rds_ib_frag_slab = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_ib_recv_init() #0 {
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
  store i32 %12, i32* @rds_ib_sysctl_max_recv_allocation, align 4
  %13 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %14 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 4, i32 0, i32 %13, i32* null)
  store i8* %14, i8** @rds_ib_incoming_slab, align 8
  %15 = load i8*, i8** @rds_ib_incoming_slab, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %0
  br label %28

18:                                               ; preds = %0
  %19 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %20 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 0, i32 %19, i32* null)
  store i8* %20, i8** @rds_ib_frag_slab, align 8
  %21 = load i8*, i8** @rds_ib_frag_slab, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** @rds_ib_incoming_slab, align 8
  %25 = call i32 @kmem_cache_destroy(i8* %24)
  br label %27

26:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %23
  br label %28

28:                                               ; preds = %27, %17
  %29 = load i32, i32* %2, align 4
  ret i32 %29
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

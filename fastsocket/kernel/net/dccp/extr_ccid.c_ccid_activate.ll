; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ccid.c_ccid_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ccid.c_ccid_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccid_operations = type { i32*, i32, i32, i32*, i32, i32, i32, i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ccid%u_hc_rx_sock\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ccid%u_hc_tx_sock\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"CCID: Activated CCID %d (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccid_operations*)* @ccid_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccid_activate(%struct.ccid_operations* %0) #0 {
  %2 = alloca %struct.ccid_operations*, align 8
  %3 = alloca i32, align 4
  store %struct.ccid_operations* %0, %struct.ccid_operations** %2, align 8
  %4 = load i32, i32* @ENOBUFS, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.ccid_operations*, %struct.ccid_operations** %2, align 8
  %7 = getelementptr inbounds %struct.ccid_operations, %struct.ccid_operations* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ccid_operations*, %struct.ccid_operations** %2, align 8
  %10 = getelementptr inbounds %struct.ccid_operations, %struct.ccid_operations* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.ccid_operations*, %struct.ccid_operations** %2, align 8
  %13 = getelementptr inbounds %struct.ccid_operations, %struct.ccid_operations* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @ccid_kmem_cache_create(i32 %8, i32 %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.ccid_operations*, %struct.ccid_operations** %2, align 8
  %18 = getelementptr inbounds %struct.ccid_operations, %struct.ccid_operations* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  %19 = load %struct.ccid_operations*, %struct.ccid_operations** %2, align 8
  %20 = getelementptr inbounds %struct.ccid_operations, %struct.ccid_operations* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %51

24:                                               ; preds = %1
  %25 = load %struct.ccid_operations*, %struct.ccid_operations** %2, align 8
  %26 = getelementptr inbounds %struct.ccid_operations, %struct.ccid_operations* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ccid_operations*, %struct.ccid_operations** %2, align 8
  %29 = getelementptr inbounds %struct.ccid_operations, %struct.ccid_operations* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ccid_operations*, %struct.ccid_operations** %2, align 8
  %32 = getelementptr inbounds %struct.ccid_operations, %struct.ccid_operations* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @ccid_kmem_cache_create(i32 %27, i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.ccid_operations*, %struct.ccid_operations** %2, align 8
  %37 = getelementptr inbounds %struct.ccid_operations, %struct.ccid_operations* %36, i32 0, i32 3
  store i32* %35, i32** %37, align 8
  %38 = load %struct.ccid_operations*, %struct.ccid_operations** %2, align 8
  %39 = getelementptr inbounds %struct.ccid_operations, %struct.ccid_operations* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %24
  br label %53

43:                                               ; preds = %24
  %44 = load %struct.ccid_operations*, %struct.ccid_operations** %2, align 8
  %45 = getelementptr inbounds %struct.ccid_operations, %struct.ccid_operations* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ccid_operations*, %struct.ccid_operations** %2, align 8
  %48 = getelementptr inbounds %struct.ccid_operations, %struct.ccid_operations* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %53, %43, %23
  %52 = load i32, i32* %3, align 4
  ret i32 %52

53:                                               ; preds = %42
  %54 = load %struct.ccid_operations*, %struct.ccid_operations** %2, align 8
  %55 = getelementptr inbounds %struct.ccid_operations, %struct.ccid_operations* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @ccid_kmem_cache_destroy(i32* %56)
  %58 = load %struct.ccid_operations*, %struct.ccid_operations** %2, align 8
  %59 = getelementptr inbounds %struct.ccid_operations, %struct.ccid_operations* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  br label %51
}

declare dso_local i8* @ccid_kmem_cache_create(i32, i32, i8*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @ccid_kmem_cache_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

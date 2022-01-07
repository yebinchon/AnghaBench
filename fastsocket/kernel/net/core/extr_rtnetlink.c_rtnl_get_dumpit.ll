; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_rtnl_get_dumpit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_rtnl_get_dumpit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtnl_link = type { i32* }

@RTNL_FAMILY_MAX = common dso_local global i32 0, align 4
@rtnl_msg_handlers = common dso_local global %struct.rtnl_link** null, align 8
@PF_UNSPEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @rtnl_get_dumpit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rtnl_get_dumpit(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtnl_link*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @RTNL_FAMILY_MAX, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.rtnl_link**, %struct.rtnl_link*** @rtnl_msg_handlers, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.rtnl_link*, %struct.rtnl_link** %10, i64 %12
  %14 = load %struct.rtnl_link*, %struct.rtnl_link** %13, align 8
  store %struct.rtnl_link* %14, %struct.rtnl_link** %5, align 8
  br label %16

15:                                               ; preds = %2
  store %struct.rtnl_link* null, %struct.rtnl_link** %5, align 8
  br label %16

16:                                               ; preds = %15, %9
  %17 = load %struct.rtnl_link*, %struct.rtnl_link** %5, align 8
  %18 = icmp eq %struct.rtnl_link* %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %16
  %20 = load %struct.rtnl_link*, %struct.rtnl_link** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.rtnl_link, %struct.rtnl_link* %20, i64 %22
  %24 = getelementptr inbounds %struct.rtnl_link, %struct.rtnl_link* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %19, %16
  %28 = load %struct.rtnl_link**, %struct.rtnl_link*** @rtnl_msg_handlers, align 8
  %29 = load i64, i64* @PF_UNSPEC, align 8
  %30 = getelementptr inbounds %struct.rtnl_link*, %struct.rtnl_link** %28, i64 %29
  %31 = load %struct.rtnl_link*, %struct.rtnl_link** %30, align 8
  store %struct.rtnl_link* %31, %struct.rtnl_link** %5, align 8
  br label %32

32:                                               ; preds = %27, %19
  %33 = load %struct.rtnl_link*, %struct.rtnl_link** %5, align 8
  %34 = icmp ne %struct.rtnl_link* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.rtnl_link*, %struct.rtnl_link** %5, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.rtnl_link, %struct.rtnl_link* %36, i64 %38
  %40 = getelementptr inbounds %struct.rtnl_link, %struct.rtnl_link* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  br label %43

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %35
  %44 = phi i32* [ %41, %35 ], [ null, %42 ]
  ret i32* %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

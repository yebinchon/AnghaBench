; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_flowlabel.c_mem_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_flowlabel.c_mem_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ipv6_pinfo = type { %struct.ipv6_fl_socklist* }
%struct.ipv6_fl_socklist = type { %struct.ipv6_fl_socklist* }

@FL_MAX_SIZE = common dso_local global i32 0, align 4
@fl_size = common dso_local global i32 0, align 4
@FL_MAX_PER_SOCK = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @mem_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_check(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.ipv6_pinfo*, align 8
  %5 = alloca %struct.ipv6_fl_socklist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %8)
  store %struct.ipv6_pinfo* %9, %struct.ipv6_pinfo** %4, align 8
  %10 = load i32, i32* @FL_MAX_SIZE, align 4
  %11 = call i32 @atomic_read(i32* @fl_size)
  %12 = sub nsw i32 %10, %11
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @FL_MAX_SIZE, align 4
  %15 = load i32, i32* @FL_MAX_PER_SOCK, align 4
  %16 = sub nsw i32 %14, %15
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

19:                                               ; preds = %1
  %20 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %4, align 8
  %21 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %20, i32 0, i32 0
  %22 = load %struct.ipv6_fl_socklist*, %struct.ipv6_fl_socklist** %21, align 8
  store %struct.ipv6_fl_socklist* %22, %struct.ipv6_fl_socklist** %5, align 8
  br label %23

23:                                               ; preds = %29, %19
  %24 = load %struct.ipv6_fl_socklist*, %struct.ipv6_fl_socklist** %5, align 8
  %25 = icmp ne %struct.ipv6_fl_socklist* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %26
  %30 = load %struct.ipv6_fl_socklist*, %struct.ipv6_fl_socklist** %5, align 8
  %31 = getelementptr inbounds %struct.ipv6_fl_socklist, %struct.ipv6_fl_socklist* %30, i32 0, i32 0
  %32 = load %struct.ipv6_fl_socklist*, %struct.ipv6_fl_socklist** %31, align 8
  store %struct.ipv6_fl_socklist* %32, %struct.ipv6_fl_socklist** %5, align 8
  br label %23

33:                                               ; preds = %23
  %34 = load i32, i32* %6, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @FL_MAX_PER_SOCK, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %53, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @FL_MAX_SIZE, align 4
  %46 = sdiv i32 %45, 2
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %43, %40
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @FL_MAX_SIZE, align 4
  %51 = sdiv i32 %50, 4
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %48, %43, %36
  %54 = load i32, i32* @CAP_NET_ADMIN, align 4
  %55 = call i32 @capable(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53, %33
  %58 = load i32, i32* @ENOBUFS, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %61

60:                                               ; preds = %53, %48
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %57, %18
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

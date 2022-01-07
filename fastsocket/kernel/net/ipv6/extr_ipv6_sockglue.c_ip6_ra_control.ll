; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ipv6_sockglue.c_ip6_ra_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ipv6_sockglue.c_ip6_ra_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_ra_chain = type { i32, %struct.ip6_ra_chain*, %struct.sock* }
%struct.sock = type { i64 }
%struct.TYPE_2__ = type { i64 }

@SOCK_RAW = common dso_local global i64 0, align 8
@IPPROTO_RAW = common dso_local global i64 0, align 8
@ENOPROTOOPT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ip6_ra_lock = common dso_local global i32 0, align 4
@ip6_ra_chain = common dso_local global %struct.ip6_ra_chain* null, align 8
@EADDRINUSE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_ra_control(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip6_ra_chain*, align 8
  %7 = alloca %struct.ip6_ra_chain*, align 8
  %8 = alloca %struct.ip6_ra_chain**, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SOCK_RAW, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = call %struct.TYPE_2__* @inet_sk(%struct.sock* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IPPROTO_RAW, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %14, %2
  %22 = load i32, i32* @ENOPROTOOPT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %89

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.ip6_ra_chain* @kmalloc(i32 24, i32 %28)
  br label %31

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi %struct.ip6_ra_chain* [ %29, %27 ], [ null, %30 ]
  store %struct.ip6_ra_chain* %32, %struct.ip6_ra_chain** %7, align 8
  %33 = call i32 @write_lock_bh(i32* @ip6_ra_lock)
  store %struct.ip6_ra_chain** @ip6_ra_chain, %struct.ip6_ra_chain*** %8, align 8
  br label %34

34:                                               ; preds = %64, %31
  %35 = load %struct.ip6_ra_chain**, %struct.ip6_ra_chain*** %8, align 8
  %36 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %35, align 8
  store %struct.ip6_ra_chain* %36, %struct.ip6_ra_chain** %6, align 8
  %37 = icmp ne %struct.ip6_ra_chain* %36, null
  br i1 %37, label %38, label %67

38:                                               ; preds = %34
  %39 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %6, align 8
  %40 = getelementptr inbounds %struct.ip6_ra_chain, %struct.ip6_ra_chain* %39, i32 0, i32 2
  %41 = load %struct.sock*, %struct.sock** %40, align 8
  %42 = load %struct.sock*, %struct.sock** %4, align 8
  %43 = icmp eq %struct.sock* %41, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = call i32 @write_unlock_bh(i32* @ip6_ra_lock)
  %49 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %7, align 8
  %50 = call i32 @kfree(%struct.ip6_ra_chain* %49)
  %51 = load i32, i32* @EADDRINUSE, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %89

53:                                               ; preds = %44
  %54 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %6, align 8
  %55 = getelementptr inbounds %struct.ip6_ra_chain, %struct.ip6_ra_chain* %54, i32 0, i32 1
  %56 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %55, align 8
  %57 = load %struct.ip6_ra_chain**, %struct.ip6_ra_chain*** %8, align 8
  store %struct.ip6_ra_chain* %56, %struct.ip6_ra_chain** %57, align 8
  %58 = call i32 @write_unlock_bh(i32* @ip6_ra_lock)
  %59 = load %struct.sock*, %struct.sock** %4, align 8
  %60 = call i32 @sock_put(%struct.sock* %59)
  %61 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %6, align 8
  %62 = call i32 @kfree(%struct.ip6_ra_chain* %61)
  store i32 0, i32* %3, align 4
  br label %89

63:                                               ; preds = %38
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %6, align 8
  %66 = getelementptr inbounds %struct.ip6_ra_chain, %struct.ip6_ra_chain* %65, i32 0, i32 1
  store %struct.ip6_ra_chain** %66, %struct.ip6_ra_chain*** %8, align 8
  br label %34

67:                                               ; preds = %34
  %68 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %7, align 8
  %69 = icmp eq %struct.ip6_ra_chain* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = call i32 @write_unlock_bh(i32* @ip6_ra_lock)
  %72 = load i32, i32* @ENOBUFS, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %89

74:                                               ; preds = %67
  %75 = load %struct.sock*, %struct.sock** %4, align 8
  %76 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %7, align 8
  %77 = getelementptr inbounds %struct.ip6_ra_chain, %struct.ip6_ra_chain* %76, i32 0, i32 2
  store %struct.sock* %75, %struct.sock** %77, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %7, align 8
  %80 = getelementptr inbounds %struct.ip6_ra_chain, %struct.ip6_ra_chain* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %6, align 8
  %82 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %7, align 8
  %83 = getelementptr inbounds %struct.ip6_ra_chain, %struct.ip6_ra_chain* %82, i32 0, i32 1
  store %struct.ip6_ra_chain* %81, %struct.ip6_ra_chain** %83, align 8
  %84 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %7, align 8
  %85 = load %struct.ip6_ra_chain**, %struct.ip6_ra_chain*** %8, align 8
  store %struct.ip6_ra_chain* %84, %struct.ip6_ra_chain** %85, align 8
  %86 = load %struct.sock*, %struct.sock** %4, align 8
  %87 = call i32 @sock_hold(%struct.sock* %86)
  %88 = call i32 @write_unlock_bh(i32* @ip6_ra_lock)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %74, %70, %53, %47, %21
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.TYPE_2__* @inet_sk(%struct.sock*) #1

declare dso_local %struct.ip6_ra_chain* @kmalloc(i32, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @kfree(%struct.ip6_ra_chain*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

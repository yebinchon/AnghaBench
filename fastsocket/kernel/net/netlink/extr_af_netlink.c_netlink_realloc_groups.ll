; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_realloc_groups.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_realloc_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.sock = type { i64 }
%struct.netlink_sock = type { i32, i32 }

@nl_table = common dso_local global %struct.TYPE_2__* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @netlink_realloc_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlink_realloc_groups(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.netlink_sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.netlink_sock* @nlk_sk(%struct.sock* %7)
  store %struct.netlink_sock* %8, %struct.netlink_sock** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = call i32 (...) @netlink_table_grab()
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %11 = load %struct.sock*, %struct.sock** %2, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %18 = load %struct.sock*, %struct.sock** %2, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %72

28:                                               ; preds = %1
  %29 = load %struct.netlink_sock*, %struct.netlink_sock** %3, align 8
  %30 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp uge i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %72

35:                                               ; preds = %28
  %36 = load %struct.netlink_sock*, %struct.netlink_sock** %3, align 8
  %37 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @NLGRPSZ(i32 %39)
  %41 = load i32, i32* @GFP_ATOMIC, align 4
  %42 = call i64* @krealloc(i32 %38, i32 %40, i32 %41)
  store i64* %42, i64** %5, align 8
  %43 = load i64*, i64** %5, align 8
  %44 = icmp eq i64* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %72

48:                                               ; preds = %35
  %49 = load i64*, i64** %5, align 8
  %50 = bitcast i64* %49 to i8*
  %51 = load %struct.netlink_sock*, %struct.netlink_sock** %3, align 8
  %52 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @NLGRPSZ(i32 %53)
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %50, i64 %55
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @NLGRPSZ(i32 %57)
  %59 = load %struct.netlink_sock*, %struct.netlink_sock** %3, align 8
  %60 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @NLGRPSZ(i32 %61)
  %63 = sub nsw i32 %58, %62
  %64 = call i32 @memset(i8* %56, i32 0, i32 %63)
  %65 = load i64*, i64** %5, align 8
  %66 = ptrtoint i64* %65 to i32
  %67 = load %struct.netlink_sock*, %struct.netlink_sock** %3, align 8
  %68 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.netlink_sock*, %struct.netlink_sock** %3, align 8
  %71 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %48, %45, %34, %25
  %73 = call i32 (...) @netlink_table_ungrab()
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local %struct.netlink_sock* @nlk_sk(%struct.sock*) #1

declare dso_local i32 @netlink_table_grab(...) #1

declare dso_local i64* @krealloc(i32, i32, i32) #1

declare dso_local i32 @NLGRPSZ(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @netlink_table_ungrab(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

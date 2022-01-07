; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_netdev_boot_setup_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_netdev_boot_setup_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdev_boot_setup = type { i8*, i32 }
%struct.ifmap = type { i32 }

@dev_boot_setup = common dso_local global %struct.netdev_boot_setup* null, align 8
@NETDEV_BOOT_SETUP_MAX = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ifmap*)* @netdev_boot_setup_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_boot_setup_add(i8* %0, %struct.ifmap* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ifmap*, align 8
  %5 = alloca %struct.netdev_boot_setup*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.ifmap* %1, %struct.ifmap** %4, align 8
  %7 = load %struct.netdev_boot_setup*, %struct.netdev_boot_setup** @dev_boot_setup, align 8
  store %struct.netdev_boot_setup* %7, %struct.netdev_boot_setup** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %59, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @NETDEV_BOOT_SETUP_MAX, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %62

12:                                               ; preds = %8
  %13 = load %struct.netdev_boot_setup*, %struct.netdev_boot_setup** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.netdev_boot_setup, %struct.netdev_boot_setup* %13, i64 %15
  %17 = getelementptr inbounds %struct.netdev_boot_setup, %struct.netdev_boot_setup* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %12
  %24 = load %struct.netdev_boot_setup*, %struct.netdev_boot_setup** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.netdev_boot_setup, %struct.netdev_boot_setup* %24, i64 %26
  %28 = getelementptr inbounds %struct.netdev_boot_setup, %struct.netdev_boot_setup* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 32
  br i1 %33, label %34, label %58

34:                                               ; preds = %23, %12
  %35 = load %struct.netdev_boot_setup*, %struct.netdev_boot_setup** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.netdev_boot_setup, %struct.netdev_boot_setup* %35, i64 %37
  %39 = getelementptr inbounds %struct.netdev_boot_setup, %struct.netdev_boot_setup* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @memset(i8* %40, i32 0, i32 8)
  %42 = load %struct.netdev_boot_setup*, %struct.netdev_boot_setup** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.netdev_boot_setup, %struct.netdev_boot_setup* %42, i64 %44
  %46 = getelementptr inbounds %struct.netdev_boot_setup, %struct.netdev_boot_setup* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = load i32, i32* @IFNAMSIZ, align 4
  %50 = call i32 @strlcpy(i8* %47, i8* %48, i32 %49)
  %51 = load %struct.netdev_boot_setup*, %struct.netdev_boot_setup** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.netdev_boot_setup, %struct.netdev_boot_setup* %51, i64 %53
  %55 = getelementptr inbounds %struct.netdev_boot_setup, %struct.netdev_boot_setup* %54, i32 0, i32 1
  %56 = load %struct.ifmap*, %struct.ifmap** %4, align 8
  %57 = call i32 @memcpy(i32* %55, %struct.ifmap* %56, i32 4)
  br label %62

58:                                               ; preds = %23
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %8

62:                                               ; preds = %34, %8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @NETDEV_BOOT_SETUP_MAX, align 4
  %65 = icmp sge i32 %63, %64
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 0, i32 1
  ret i32 %67
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ifmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

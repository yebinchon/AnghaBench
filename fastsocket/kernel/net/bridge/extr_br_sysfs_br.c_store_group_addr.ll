; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_sysfs_br.c_store_group_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_sysfs_br.c_store_group_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.net_bridge = type { i32*, i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"%hhx:%hhx:%hhx:%hhx:%hhx:%hhx\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_group_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_group_addr(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.net_bridge*, align 8
  %11 = alloca [6 x i32], align 16
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.net_bridge* @to_bridge(%struct.device* %13)
  store %struct.net_bridge* %14, %struct.net_bridge** %10, align 8
  %15 = load i32, i32* @CAP_NET_ADMIN, align 4
  %16 = call i32 @capable(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* @EPERM, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %5, align 8
  br label %82

21:                                               ; preds = %4
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 1
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 2
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 3
  %27 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 4
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 5
  %29 = call i32 @sscanf(i8* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* %23, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28)
  %30 = icmp ne i32 %29, 6
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load i64, i64* @EINVAL, align 8
  %33 = sub i64 0, %32
  store i64 %33, i64* %5, align 8
  br label %82

34:                                               ; preds = %21
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %36 = call i32 @is_link_local_ether_addr(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* @EINVAL, align 8
  %40 = sub i64 0, %39
  store i64 %40, i64* %5, align 8
  br label %82

41:                                               ; preds = %34
  %42 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 5
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 5
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 5
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %56

53:                                               ; preds = %49, %45, %41
  %54 = load i64, i64* @EINVAL, align 8
  %55 = sub i64 0, %54
  store i64 %55, i64* %5, align 8
  br label %82

56:                                               ; preds = %49
  %57 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  %58 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %57, i32 0, i32 1
  %59 = call i32 @spin_lock_bh(i32* %58)
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %74, %56
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %61, 6
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  %69 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %67, i32* %73, align 4
  br label %74

74:                                               ; preds = %63
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %60

77:                                               ; preds = %60
  %78 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  %79 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %78, i32 0, i32 1
  %80 = call i32 @spin_unlock_bh(i32* %79)
  %81 = load i64, i64* %9, align 8
  store i64 %81, i64* %5, align 8
  br label %82

82:                                               ; preds = %77, %53, %38, %31, %18
  %83 = load i64, i64* %5, align 8
  ret i64 %83
}

declare dso_local %struct.net_bridge* @to_bridge(%struct.device*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @is_link_local_ether_addr(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

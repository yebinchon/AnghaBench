; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_inode.c_pohmelfs_root_handshake.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_inode.c_pohmelfs_root_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pohmelfs_sb = type { i32, i32, i32 }
%struct.netfs_trans = type { i32 }
%struct.netfs_cmd = type { i64, i64, i64, i64, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NETFS_CAPABILITIES = common dso_local global i32 0, align 4
@POHMELFS_ROOT_CAPABILITIES = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pohmelfs_sb*)* @pohmelfs_root_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pohmelfs_root_handshake(%struct.pohmelfs_sb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pohmelfs_sb*, align 8
  %4 = alloca %struct.netfs_trans*, align 8
  %5 = alloca %struct.netfs_cmd*, align 8
  %6 = alloca i32, align 4
  store %struct.pohmelfs_sb* %0, %struct.pohmelfs_sb** %3, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %10 = call %struct.netfs_trans* @netfs_trans_alloc(%struct.pohmelfs_sb* %9, i32 0, i32 0, i32 0)
  store %struct.netfs_trans* %10, %struct.netfs_trans** %4, align 8
  %11 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %12 = icmp ne %struct.netfs_trans* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %76

14:                                               ; preds = %1
  %15 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %16 = call %struct.netfs_cmd* @netfs_trans_current(%struct.netfs_trans* %15)
  store %struct.netfs_cmd* %16, %struct.netfs_cmd** %5, align 8
  %17 = load i32, i32* @NETFS_CAPABILITIES, align 4
  %18 = load %struct.netfs_cmd*, %struct.netfs_cmd** %5, align 8
  %19 = getelementptr inbounds %struct.netfs_cmd, %struct.netfs_cmd* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @POHMELFS_ROOT_CAPABILITIES, align 4
  %21 = load %struct.netfs_cmd*, %struct.netfs_cmd** %5, align 8
  %22 = getelementptr inbounds %struct.netfs_cmd, %struct.netfs_cmd* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.netfs_cmd*, %struct.netfs_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.netfs_cmd, %struct.netfs_cmd* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.netfs_cmd*, %struct.netfs_cmd** %5, align 8
  %26 = getelementptr inbounds %struct.netfs_cmd, %struct.netfs_cmd* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.netfs_cmd*, %struct.netfs_cmd** %5, align 8
  %28 = getelementptr inbounds %struct.netfs_cmd, %struct.netfs_cmd* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.netfs_cmd*, %struct.netfs_cmd** %5, align 8
  %30 = getelementptr inbounds %struct.netfs_cmd, %struct.netfs_cmd* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.netfs_cmd*, %struct.netfs_cmd** %5, align 8
  %32 = call i32 @netfs_convert_cmd(%struct.netfs_cmd* %31)
  %33 = load %struct.netfs_cmd*, %struct.netfs_cmd** %5, align 8
  %34 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %35 = call i32 @netfs_trans_update(%struct.netfs_cmd* %33, %struct.netfs_trans* %34, i32 0)
  %36 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %37 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %38 = call i32 @netfs_trans_finish(%struct.netfs_trans* %36, %struct.pohmelfs_sb* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %14
  br label %76

42:                                               ; preds = %14
  %43 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %44 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 4
  %45 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %46 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %49 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, -1
  %52 = zext i1 %51 to i32
  %53 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %54 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @wait_event_interruptible_timeout(i32 %47, i32 %52, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %42
  %60 = load i32, i32* @ETIMEDOUT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %71

62:                                               ; preds = %42
  %63 = load i32, i32* %6, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %67 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %65, %62
  br label %71

71:                                               ; preds = %70, %59
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %76

75:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %78

76:                                               ; preds = %74, %41, %13
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %75
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.netfs_trans* @netfs_trans_alloc(%struct.pohmelfs_sb*, i32, i32, i32) #1

declare dso_local %struct.netfs_cmd* @netfs_trans_current(%struct.netfs_trans*) #1

declare dso_local i32 @netfs_convert_cmd(%struct.netfs_cmd*) #1

declare dso_local i32 @netfs_trans_update(%struct.netfs_cmd*, %struct.netfs_trans*, i32) #1

declare dso_local i32 @netfs_trans_finish(%struct.netfs_trans*, %struct.pohmelfs_sb*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

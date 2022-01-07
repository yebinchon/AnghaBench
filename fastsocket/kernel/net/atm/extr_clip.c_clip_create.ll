; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_clip.c_clip_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_clip.c_clip_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.clip_priv = type { i32, %struct.net_device*, i32 }

@clip_devs = common dso_local global %struct.net_device* null, align 8
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@clip_setup = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"atm%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"registered (net:%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @clip_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clip_create(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.clip_priv*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  %10 = load %struct.net_device*, %struct.net_device** @clip_devs, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  br label %11

11:                                               ; preds = %25, %9
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.clip_priv* @PRIV(%struct.net_device* %15)
  %17 = getelementptr inbounds %struct.clip_priv, %struct.clip_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* @EEXIST, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %96

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call %struct.clip_priv* @PRIV(%struct.net_device* %26)
  %28 = getelementptr inbounds %struct.clip_priv, %struct.clip_priv* %27, i32 0, i32 1
  %29 = load %struct.net_device*, %struct.net_device** %28, align 8
  store %struct.net_device* %29, %struct.net_device** %4, align 8
  br label %11

30:                                               ; preds = %11
  br label %56

31:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  %32 = load %struct.net_device*, %struct.net_device** @clip_devs, align 8
  store %struct.net_device* %32, %struct.net_device** %4, align 8
  br label %33

33:                                               ; preds = %50, %31
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = icmp ne %struct.net_device* %34, null
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = call %struct.clip_priv* @PRIV(%struct.net_device* %37)
  %39 = getelementptr inbounds %struct.clip_priv, %struct.clip_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = call %struct.clip_priv* @PRIV(%struct.net_device* %44)
  %46 = getelementptr inbounds %struct.clip_priv, %struct.clip_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %43, %36
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = call %struct.clip_priv* @PRIV(%struct.net_device* %51)
  %53 = getelementptr inbounds %struct.clip_priv, %struct.clip_priv* %52, i32 0, i32 1
  %54 = load %struct.net_device*, %struct.net_device** %53, align 8
  store %struct.net_device* %54, %struct.net_device** %4, align 8
  br label %33

55:                                               ; preds = %33
  br label %56

56:                                               ; preds = %55, %30
  %57 = load i32, i32* @clip_setup, align 4
  %58 = call %struct.net_device* @alloc_netdev(i32 24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %57)
  store %struct.net_device* %58, %struct.net_device** %4, align 8
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = icmp ne %struct.net_device* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %96

64:                                               ; preds = %56
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = call %struct.clip_priv* @PRIV(%struct.net_device* %65)
  store %struct.clip_priv* %66, %struct.clip_priv** %5, align 8
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @sprintf(i32 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load %struct.clip_priv*, %struct.clip_priv** %5, align 8
  %73 = getelementptr inbounds %struct.clip_priv, %struct.clip_priv* %72, i32 0, i32 2
  %74 = call i32 @spin_lock_init(i32* %73)
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.clip_priv*, %struct.clip_priv** %5, align 8
  %77 = getelementptr inbounds %struct.clip_priv, %struct.clip_priv* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.net_device*, %struct.net_device** %4, align 8
  %79 = call i32 @register_netdev(%struct.net_device* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %64
  %83 = load %struct.net_device*, %struct.net_device** %4, align 8
  %84 = call i32 @free_netdev(%struct.net_device* %83)
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %96

86:                                               ; preds = %64
  %87 = load %struct.net_device*, %struct.net_device** @clip_devs, align 8
  %88 = load %struct.clip_priv*, %struct.clip_priv** %5, align 8
  %89 = getelementptr inbounds %struct.clip_priv, %struct.clip_priv* %88, i32 0, i32 1
  store %struct.net_device* %87, %struct.net_device** %89, align 8
  %90 = load %struct.net_device*, %struct.net_device** %4, align 8
  store %struct.net_device* %90, %struct.net_device** @clip_devs, align 8
  %91 = load %struct.net_device*, %struct.net_device** %4, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %3, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %86, %82, %61, %21
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.clip_priv* @PRIV(%struct.net_device*) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

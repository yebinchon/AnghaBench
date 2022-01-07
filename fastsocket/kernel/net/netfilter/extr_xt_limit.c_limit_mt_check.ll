; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_limit.c_limit_mt_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_limit.c_limit_mt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.xt_rateinfo* }
%struct.xt_rateinfo = type { i32, i32, i64, i64, %struct.xt_limit_priv* }
%struct.xt_limit_priv = type { i64, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Overflow in xt_limit, try lower: %u/%u\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @limit_mt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @limit_mt_check(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.xt_rateinfo*, align 8
  %5 = alloca %struct.xt_limit_priv*, align 8
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %6 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %6, i32 0, i32 0
  %8 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %7, align 8
  store %struct.xt_rateinfo* %8, %struct.xt_rateinfo** %4, align 8
  %9 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %4, align 8
  %10 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %1
  %14 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %4, align 8
  %15 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %4, align 8
  %18 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %16, %19
  %21 = call i64 @user2credits(i32 %20)
  %22 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %4, align 8
  %23 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @user2credits(i32 %24)
  %26 = icmp slt i64 %21, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %13, %1
  %28 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %4, align 8
  %29 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %4, align 8
  %32 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33)
  store i32 0, i32* %2, align 4
  br label %80

35:                                               ; preds = %13
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.xt_limit_priv* @kmalloc(i32 16, i32 %36)
  store %struct.xt_limit_priv* %37, %struct.xt_limit_priv** %5, align 8
  %38 = load %struct.xt_limit_priv*, %struct.xt_limit_priv** %5, align 8
  %39 = icmp eq %struct.xt_limit_priv* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %80

41:                                               ; preds = %35
  %42 = load %struct.xt_limit_priv*, %struct.xt_limit_priv** %5, align 8
  %43 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %4, align 8
  %44 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %43, i32 0, i32 4
  store %struct.xt_limit_priv* %42, %struct.xt_limit_priv** %44, align 8
  %45 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %4, align 8
  %46 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %79

49:                                               ; preds = %41
  %50 = load i32, i32* @jiffies, align 4
  %51 = load %struct.xt_limit_priv*, %struct.xt_limit_priv** %5, align 8
  %52 = getelementptr inbounds %struct.xt_limit_priv, %struct.xt_limit_priv* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %4, align 8
  %54 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %4, align 8
  %57 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %55, %58
  %60 = call i64 @user2credits(i32 %59)
  %61 = load %struct.xt_limit_priv*, %struct.xt_limit_priv** %5, align 8
  %62 = getelementptr inbounds %struct.xt_limit_priv, %struct.xt_limit_priv* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %4, align 8
  %64 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %4, align 8
  %67 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %65, %68
  %70 = call i64 @user2credits(i32 %69)
  %71 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %4, align 8
  %72 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %71, i32 0, i32 3
  store i64 %70, i64* %72, align 8
  %73 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %4, align 8
  %74 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @user2credits(i32 %75)
  %77 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %4, align 8
  %78 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %49, %41
  store i32 1, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %40, %27
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @user2credits(i32) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local %struct.xt_limit_priv* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

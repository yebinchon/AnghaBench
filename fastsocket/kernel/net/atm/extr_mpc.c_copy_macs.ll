; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_copy_macs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_copy_macs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpoa_client = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"mpoa: (%s) copy_macs: out of mem\0A\00", align 1
@MPS_AND_MPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.mpoa_client*, i32*, i32*, i32, i32)* @copy_macs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @copy_macs(%struct.mpoa_client* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mpoa_client*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mpoa_client* %0, %struct.mpoa_client** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load i32, i32* %10, align 4
  br label %18

17:                                               ; preds = %5
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 1, %17 ]
  store i32 %19, i32* %12, align 4
  %20 = load %struct.mpoa_client*, %struct.mpoa_client** %7, align 8
  %21 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %57

25:                                               ; preds = %18
  %26 = load %struct.mpoa_client*, %struct.mpoa_client** %7, align 8
  %27 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.mpoa_client*, %struct.mpoa_client** %7, align 8
  %32 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @kfree(i32* %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.mpoa_client*, %struct.mpoa_client** %7, align 8
  %37 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @ETH_ALEN, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32* @kmalloc(i32 %40, i32 %41)
  %43 = load %struct.mpoa_client*, %struct.mpoa_client** %7, align 8
  %44 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = load %struct.mpoa_client*, %struct.mpoa_client** %7, align 8
  %46 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %35
  %50 = load %struct.mpoa_client*, %struct.mpoa_client** %7, align 8
  %51 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %54)
  store i32* null, i32** %6, align 8
  br label %95

56:                                               ; preds = %35
  br label %57

57:                                               ; preds = %56, %18
  %58 = load %struct.mpoa_client*, %struct.mpoa_client** %7, align 8
  %59 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* @ETH_ALEN, align 4
  %63 = call i32 @memcpy(i32* %60, i32* %61, i32 %62)
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 20
  store i32* %65, i32** %9, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @MPS_AND_MPC, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %57
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 20
  store i32* %71, i32** %9, align 8
  br label %72

72:                                               ; preds = %69, %57
  %73 = load i32, i32* %10, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load %struct.mpoa_client*, %struct.mpoa_client** %7, align 8
  %77 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @ETH_ALEN, align 4
  %82 = mul nsw i32 %80, %81
  %83 = call i32 @memcpy(i32* %78, i32* %79, i32 %82)
  br label %84

84:                                               ; preds = %75, %72
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @ETH_ALEN, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32*, i32** %9, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32* %90, i32** %9, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load %struct.mpoa_client*, %struct.mpoa_client** %7, align 8
  %93 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i32*, i32** %9, align 8
  store i32* %94, i32** %6, align 8
  br label %95

95:                                               ; preds = %84, %49
  %96 = load i32*, i32** %6, align 8
  ret i32* %96
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

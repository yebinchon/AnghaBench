; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_ppp.c_irnet_prepare_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_ppp.c_irnet_prepare_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.sk_buff = type { i8* }

@PPP_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"(ap=0x%p, skb=0x%p)\0A\00", align 1
@PPP_LCP = common dso_local global i32 0, align 4
@SC_COMP_PROT = common dso_local global i32 0, align 4
@SC_COMP_AC = common dso_local global i32 0, align 4
@PPP_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Reallocating skb\0A\00", align 1
@PPP_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Could not realloc skb\0A\00", align 1
@PPP_ALLSTATIONS = common dso_local global i8 0, align 1
@PPP_UI = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.TYPE_4__*, %struct.sk_buff*)* @irnet_prepare_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @irnet_prepare_skb(%struct.TYPE_4__* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @PPP_TRACE, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i32 @DENTER(i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %11, %struct.sk_buff* %12)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl i32 %20, 8
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = add nsw i32 %21, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @PPP_LCP, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %2
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp sle i32 1, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp sle i32 %40, 7
  br label %42

42:                                               ; preds = %36, %30, %2
  %43 = phi i1 [ false, %30 ], [ false, %2 ], [ %41, %36 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %7, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %42
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SC_COMP_PROT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call i32 @skb_pull(%struct.sk_buff* %61, i32 1)
  br label %63

63:                                               ; preds = %60, %57, %50, %42
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SC_COMP_AC, align 4
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br label %73

73:                                               ; preds = %70, %63
  %74 = phi i1 [ true, %63 ], [ %72, %70 ]
  %75 = zext i1 %74 to i32
  %76 = mul nsw i32 2, %75
  store i32 %76, i32* %8, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = call i64 @skb_headroom(%struct.sk_buff* %77)
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = icmp slt i64 %78, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %73
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = call i64 @skb_shared(%struct.sk_buff* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %86, %73
  %91 = load i32, i32* @PPP_INFO, align 4
  %92 = call i32 @DEBUG(i32 %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  %100 = call %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff* %93, i64 %99)
  store %struct.sk_buff* %100, %struct.sk_buff** %9, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %102 = call i32 @dev_kfree_skb(%struct.sk_buff* %101)
  %103 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %104 = icmp eq %struct.sk_buff* %103, null
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* @PPP_ERROR, align 4
  %107 = call i32 @DABORT(i32 %105, i32* null, i32 %106, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %108 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %108, %struct.sk_buff** %4, align 8
  br label %109

109:                                              ; preds = %90, %86
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %109
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %114 = call i32 @skb_push(%struct.sk_buff* %113, i32 2)
  %115 = load i8, i8* @PPP_ALLSTATIONS, align 1
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  store i8 %115, i8* %119, align 1
  %120 = load i8, i8* @PPP_UI, align 1
  %121 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %122 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  store i8 %120, i8* %124, align 1
  br label %125

125:                                              ; preds = %112, %109
  %126 = load i32, i32* @PPP_TRACE, align 4
  %127 = call i32 @DEXIT(i32 %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %128 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %128
}

declare dso_local i32 @DENTER(i32, i8*, %struct.TYPE_4__*, %struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i64 @skb_shared(%struct.sk_buff*) #1

declare dso_local i32 @DEBUG(i32, i8*) #1

declare dso_local %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff*, i64) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @DABORT(i32, i32*, i32, i8*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @DEXIT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

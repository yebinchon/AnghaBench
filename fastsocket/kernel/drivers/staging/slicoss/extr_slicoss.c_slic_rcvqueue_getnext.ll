; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_rcvqueue_getnext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_rcvqueue_getnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sk_buff*, i64 }
%struct.adapter = type { %struct.TYPE_2__*, %struct.slic_rcvqueue }
%struct.TYPE_2__ = type { i32 }
%struct.slic_rcvqueue = type { i64, i64, %struct.sk_buff* }
%struct.slic_rcvbuf = type { i32 }

@IRHDDR_SVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"RcvQ Empty!! rcvq[%p] count[%x]\0A\00", align 1
@SLIC_RCVQ_FILLTHRESH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.adapter*)* @slic_rcvqueue_getnext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @slic_rcvqueue_getnext(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.slic_rcvqueue*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.slic_rcvbuf*, align 8
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 1
  store %struct.slic_rcvqueue* %8, %struct.slic_rcvqueue** %3, align 8
  %9 = load %struct.slic_rcvqueue*, %struct.slic_rcvqueue** %3, align 8
  %10 = getelementptr inbounds %struct.slic_rcvqueue, %struct.slic_rcvqueue* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %45

13:                                               ; preds = %1
  %14 = load %struct.slic_rcvqueue*, %struct.slic_rcvqueue** %3, align 8
  %15 = getelementptr inbounds %struct.slic_rcvqueue, %struct.slic_rcvqueue* %14, i32 0, i32 2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %16, %struct.sk_buff** %4, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.slic_rcvbuf*
  store %struct.slic_rcvbuf* %20, %struct.slic_rcvbuf** %5, align 8
  %21 = load %struct.slic_rcvbuf*, %struct.slic_rcvbuf** %5, align 8
  %22 = call i32 @ASSERT(%struct.slic_rcvbuf* %21)
  %23 = load %struct.slic_rcvbuf*, %struct.slic_rcvbuf** %5, align 8
  %24 = getelementptr inbounds %struct.slic_rcvbuf, %struct.slic_rcvbuf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IRHDDR_SVALID, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %13
  %30 = load %struct.slic_rcvqueue*, %struct.slic_rcvqueue** %3, align 8
  %31 = getelementptr inbounds %struct.slic_rcvqueue, %struct.slic_rcvqueue* %30, i32 0, i32 2
  %32 = load %struct.sk_buff*, %struct.sk_buff** %31, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load %struct.sk_buff*, %struct.sk_buff** %33, align 8
  %35 = load %struct.slic_rcvqueue*, %struct.slic_rcvqueue** %3, align 8
  %36 = getelementptr inbounds %struct.slic_rcvqueue, %struct.slic_rcvqueue* %35, i32 0, i32 2
  store %struct.sk_buff* %34, %struct.sk_buff** %36, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %38, align 8
  %39 = load %struct.slic_rcvqueue*, %struct.slic_rcvqueue** %3, align 8
  %40 = getelementptr inbounds %struct.slic_rcvqueue, %struct.slic_rcvqueue* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* %40, align 8
  br label %44

43:                                               ; preds = %13
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %44

44:                                               ; preds = %43, %29
  br label %55

45:                                               ; preds = %1
  %46 = load %struct.adapter*, %struct.adapter** %2, align 8
  %47 = getelementptr inbounds %struct.adapter, %struct.adapter* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.slic_rcvqueue*, %struct.slic_rcvqueue** %3, align 8
  %51 = load %struct.slic_rcvqueue*, %struct.slic_rcvqueue** %3, align 8
  %52 = getelementptr inbounds %struct.slic_rcvqueue, %struct.slic_rcvqueue* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.slic_rcvqueue* %50, i64 %53)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %55

55:                                               ; preds = %45, %44
  br label %56

56:                                               ; preds = %68, %55
  %57 = load %struct.slic_rcvqueue*, %struct.slic_rcvqueue** %3, align 8
  %58 = getelementptr inbounds %struct.slic_rcvqueue, %struct.slic_rcvqueue* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SLIC_RCVQ_FILLTHRESH, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.adapter*, %struct.adapter** %2, align 8
  %64 = call i32 @slic_rcvqueue_fill(%struct.adapter* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  br label %69

68:                                               ; preds = %62
  br label %56

69:                                               ; preds = %67, %56
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = icmp ne %struct.sk_buff* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.slic_rcvqueue*, %struct.slic_rcvqueue** %3, align 8
  %74 = getelementptr inbounds %struct.slic_rcvqueue, %struct.slic_rcvqueue* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %72, %69
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %76
}

declare dso_local i32 @ASSERT(%struct.slic_rcvbuf*) #1

declare dso_local i32 @dev_err(i32*, i8*, %struct.slic_rcvqueue*, i64) #1

declare dso_local i32 @slic_rcvqueue_fill(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

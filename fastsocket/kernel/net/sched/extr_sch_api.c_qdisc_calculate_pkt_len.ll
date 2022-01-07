; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_qdisc_calculate_pkt_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_qdisc_calculate_pkt_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.qdisc_size_table = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qdisc_calculate_pkt_len(%struct.sk_buff* %0, %struct.qdisc_size_table* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.qdisc_size_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.qdisc_size_table* %1, %struct.qdisc_size_table** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.qdisc_size_table*, %struct.qdisc_size_table** %4, align 8
  %11 = getelementptr inbounds %struct.qdisc_size_table, %struct.qdisc_size_table* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %9, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.qdisc_size_table*, %struct.qdisc_size_table** %4, align 8
  %16 = getelementptr inbounds %struct.qdisc_size_table, %struct.qdisc_size_table* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %101

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.qdisc_size_table*, %struct.qdisc_size_table** %4, align 8
  %28 = getelementptr inbounds %struct.qdisc_size_table, %struct.qdisc_size_table* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %26, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %25
  %39 = load %struct.qdisc_size_table*, %struct.qdisc_size_table** %4, align 8
  %40 = getelementptr inbounds %struct.qdisc_size_table, %struct.qdisc_size_table* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = ashr i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.qdisc_size_table*, %struct.qdisc_size_table** %4, align 8
  %47 = getelementptr inbounds %struct.qdisc_size_table, %struct.qdisc_size_table* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %45, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @likely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %38
  %55 = load %struct.qdisc_size_table*, %struct.qdisc_size_table** %4, align 8
  %56 = getelementptr inbounds %struct.qdisc_size_table, %struct.qdisc_size_table* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %5, align 4
  br label %94

62:                                               ; preds = %38
  %63 = load %struct.qdisc_size_table*, %struct.qdisc_size_table** %4, align 8
  %64 = getelementptr inbounds %struct.qdisc_size_table, %struct.qdisc_size_table* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.qdisc_size_table*, %struct.qdisc_size_table** %4, align 8
  %67 = getelementptr inbounds %struct.qdisc_size_table, %struct.qdisc_size_table* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %65, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.qdisc_size_table*, %struct.qdisc_size_table** %4, align 8
  %76 = getelementptr inbounds %struct.qdisc_size_table, %struct.qdisc_size_table* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sdiv i32 %74, %78
  %80 = mul nsw i32 %73, %79
  %81 = load %struct.qdisc_size_table*, %struct.qdisc_size_table** %4, align 8
  %82 = getelementptr inbounds %struct.qdisc_size_table, %struct.qdisc_size_table* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.qdisc_size_table*, %struct.qdisc_size_table** %4, align 8
  %86 = getelementptr inbounds %struct.qdisc_size_table, %struct.qdisc_size_table* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = srem i32 %84, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %83, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %80, %92
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %62, %54
  %95 = load %struct.qdisc_size_table*, %struct.qdisc_size_table** %4, align 8
  %96 = getelementptr inbounds %struct.qdisc_size_table, %struct.qdisc_size_table* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = shl i32 %99, %98
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %94, %24
  %102 = load i32, i32* %5, align 4
  %103 = icmp slt i32 %102, 1
  %104 = zext i1 %103 to i32
  %105 = call i64 @unlikely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  store i32 1, i32* %5, align 4
  br label %108

108:                                              ; preds = %107, %101
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %111 = call %struct.TYPE_4__* @qdisc_skb_cb(%struct.sk_buff* %110)
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 4
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.TYPE_4__* @qdisc_skb_cb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

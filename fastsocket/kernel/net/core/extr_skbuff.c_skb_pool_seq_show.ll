; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c_skb_pool_seq_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c_skb_pool_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.skb_pool = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"%u\09%-15u%-15u%-15lu%-15lu%-15u%-15u%-15lu%-15lu\0A\00", align 1
@cpu_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @skb_pool_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skb_pool_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.skb_pool*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.skb_pool*
  store %struct.skb_pool* %7, %struct.skb_pool** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = load i32, i32* @cpu_id, align 4
  %10 = load %struct.skb_pool*, %struct.skb_pool** %5, align 8
  %11 = getelementptr inbounds %struct.skb_pool, %struct.skb_pool* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.skb_pool*, %struct.skb_pool** %5, align 8
  %15 = getelementptr inbounds %struct.skb_pool, %struct.skb_pool* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.skb_pool*, %struct.skb_pool** %5, align 8
  %19 = getelementptr inbounds %struct.skb_pool, %struct.skb_pool* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.skb_pool*, %struct.skb_pool** %5, align 8
  %22 = getelementptr inbounds %struct.skb_pool, %struct.skb_pool* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.skb_pool*, %struct.skb_pool** %5, align 8
  %25 = getelementptr inbounds %struct.skb_pool, %struct.skb_pool* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.skb_pool*, %struct.skb_pool** %5, align 8
  %29 = getelementptr inbounds %struct.skb_pool, %struct.skb_pool* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.skb_pool*, %struct.skb_pool** %5, align 8
  %33 = getelementptr inbounds %struct.skb_pool, %struct.skb_pool* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.skb_pool*, %struct.skb_pool** %5, align 8
  %36 = getelementptr inbounds %struct.skb_pool, %struct.skb_pool* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @seq_printf(%struct.seq_file* %8, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %13, i32 %17, i32 %20, i32 %23, i32 %27, i32 %31, i32 %34, i32 %37)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

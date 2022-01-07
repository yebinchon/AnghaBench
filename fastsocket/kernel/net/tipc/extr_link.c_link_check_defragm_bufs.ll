; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_check_defragm_bufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_check_defragm_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { %struct.sk_buff* }
%struct.sk_buff = type { %struct.sk_buff* }

@.str = private unnamed_addr constant [36 x i8] c" Discarding incomplete long buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"LONG:\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"curr:\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Pending long buffers:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link*)* @link_check_defragm_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_check_defragm_bufs(%struct.link* %0) #0 {
  %2 = alloca %struct.link*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.link* %0, %struct.link** %2, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  %7 = load %struct.link*, %struct.link** %2, align 8
  %8 = getelementptr inbounds %struct.link, %struct.link* %7, i32 0, i32 0
  %9 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %9, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %65

13:                                               ; preds = %1
  %14 = load %struct.link*, %struct.link** %2, align 8
  %15 = call i32 @link_working_working(%struct.link* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %65

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %63, %18
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %22, label %65

22:                                               ; preds = %19
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call i32 @get_timer_cnt(%struct.sk_buff* %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  store %struct.sk_buff* %27, %struct.sk_buff** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call i32 @incr_timer_cnt(%struct.sk_buff* %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %33, %struct.sk_buff** %3, align 8
  br label %63

34:                                               ; preds = %22
  %35 = call i32 @dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call i32 @buf_msg(%struct.sk_buff* %36)
  %38 = call i32 @msg_dbg(i32 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.link*, %struct.link** %2, align 8
  %40 = call i32 @dbg_print_link(%struct.link* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %41 = call i32 @dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %42 = load %struct.link*, %struct.link** %2, align 8
  %43 = getelementptr inbounds %struct.link, %struct.link* %42, i32 0, i32 0
  %44 = load %struct.sk_buff*, %struct.sk_buff** %43, align 8
  %45 = call i32 @dbg_print_buf_chain(%struct.sk_buff* %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %34
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load %struct.sk_buff*, %struct.sk_buff** %50, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  store %struct.sk_buff* %51, %struct.sk_buff** %53, align 8
  br label %60

54:                                               ; preds = %34
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load %struct.sk_buff*, %struct.sk_buff** %56, align 8
  %58 = load %struct.link*, %struct.link** %2, align 8
  %59 = getelementptr inbounds %struct.link, %struct.link* %58, i32 0, i32 0
  store %struct.sk_buff* %57, %struct.sk_buff** %59, align 8
  br label %60

60:                                               ; preds = %54, %48
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = call i32 @buf_discard(%struct.sk_buff* %61)
  br label %63

63:                                               ; preds = %60, %30
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %64, %struct.sk_buff** %5, align 8
  br label %19

65:                                               ; preds = %12, %17, %19
  ret void
}

declare dso_local i32 @link_working_working(%struct.link*) #1

declare dso_local i32 @get_timer_cnt(%struct.sk_buff*) #1

declare dso_local i32 @incr_timer_cnt(%struct.sk_buff*) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @msg_dbg(i32, i8*) #1

declare dso_local i32 @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @dbg_print_link(%struct.link*, i8*) #1

declare dso_local i32 @dbg_print_buf_chain(%struct.sk_buff*) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

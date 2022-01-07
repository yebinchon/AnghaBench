; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_defer_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_defer_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sk_buff* }
%struct.tipc_msg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_link_defer_pkt(%struct.sk_buff** %0, %struct.sk_buff** %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff**, align 8
  %6 = alloca %struct.sk_buff**, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tipc_msg*, align 8
  store %struct.sk_buff** %0, %struct.sk_buff*** %5, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  %12 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %13, %struct.sk_buff** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %14)
  %16 = call i32 @msg_seqno(%struct.tipc_msg* %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %18, align 8
  %19 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %21 = icmp eq %struct.sk_buff* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  store %struct.sk_buff* %23, %struct.sk_buff** %24, align 8
  %25 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  store %struct.sk_buff* %23, %struct.sk_buff** %25, align 8
  store i32 1, i32* %4, align 4
  br label %81

26:                                               ; preds = %3
  %27 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  %29 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %28)
  %30 = call i32 @msg_seqno(%struct.tipc_msg* %29)
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @less(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %36, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  store %struct.sk_buff* %35, %struct.sk_buff** %38, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  store %struct.sk_buff* %39, %struct.sk_buff** %40, align 8
  store i32 1, i32* %4, align 4
  br label %81

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %75, %41
  %43 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %44 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %43)
  store %struct.tipc_msg* %44, %struct.tipc_msg** %11, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %47 = call i32 @msg_seqno(%struct.tipc_msg* %46)
  %48 = call i64 @less(i32 %45, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %42
  %51 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  store %struct.sk_buff* %51, %struct.sk_buff** %53, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = icmp ne %struct.sk_buff* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  store %struct.sk_buff* %57, %struct.sk_buff** %59, align 8
  br label %63

60:                                               ; preds = %50
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  store %struct.sk_buff* %61, %struct.sk_buff** %62, align 8
  br label %63

63:                                               ; preds = %60, %56
  store i32 1, i32* %4, align 4
  br label %81

64:                                               ; preds = %42
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %67 = call i32 @msg_seqno(%struct.tipc_msg* %66)
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %78

70:                                               ; preds = %64
  %71 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %71, %struct.sk_buff** %8, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load %struct.sk_buff*, %struct.sk_buff** %73, align 8
  store %struct.sk_buff* %74, %struct.sk_buff** %9, align 8
  br label %75

75:                                               ; preds = %70
  %76 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %77 = icmp ne %struct.sk_buff* %76, null
  br i1 %77, label %42, label %78

78:                                               ; preds = %75, %69
  %79 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %80 = call i32 @buf_discard(%struct.sk_buff* %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %78, %63, %34, %22
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @msg_seqno(%struct.tipc_msg*) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i64 @less(i32, i32) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

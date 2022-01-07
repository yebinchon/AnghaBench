; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/cmtp/extr_core.c_cmtp_add_msgpart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/cmtp/extr_core.c_cmtp_add_msgpart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmtp_session = type { %struct.sk_buff** }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"session %p buf %p count %d\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Can't allocate memory for CAPI message\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmtp_session*, i32, i8*, i32)* @cmtp_add_msgpart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmtp_add_msgpart(%struct.cmtp_session* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.cmtp_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  store %struct.cmtp_session* %0, %struct.cmtp_session** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.cmtp_session*, %struct.cmtp_session** %5, align 8
  %13 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %12, i32 0, i32 0
  %14 = load %struct.sk_buff**, %struct.sk_buff*** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %14, i64 %16
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  store %struct.sk_buff* %18, %struct.sk_buff** %9, align 8
  %19 = load %struct.cmtp_session*, %struct.cmtp_session** %5, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @BT_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.cmtp_session* %19, i8* %20, i32 %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %28, %29
  br label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %8, align 4
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi i32 [ %30, %25 ], [ %32, %31 ]
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @GFP_ATOMIC, align 4
  %37 = call %struct.sk_buff* @alloc_skb(i32 %35, i32 %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %10, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = call i32 @BT_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %76

41:                                               ; preds = %33
  %42 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @skb_put(%struct.sk_buff* %51, i32 %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %50, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %49, %44, %41
  %61 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @skb_put(%struct.sk_buff* %61, i32 %62)
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @memcpy(i32 %63, i8* %64, i32 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %68 = load %struct.cmtp_session*, %struct.cmtp_session** %5, align 8
  %69 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %68, i32 0, i32 0
  %70 = load %struct.sk_buff**, %struct.sk_buff*** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %70, i64 %72
  store %struct.sk_buff* %67, %struct.sk_buff** %73, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %75 = call i32 @kfree_skb(%struct.sk_buff* %74)
  br label %76

76:                                               ; preds = %60, %39
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.cmtp_session*, i8*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_out.c_dn_nsp_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_out.c_dn_nsp_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dn_scp = type { i64, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@DN_SEND = common dso_local global i64 0, align 8
@NSP_MIN_WINDOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dn_nsp_output(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.dn_scp*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.dn_scp* @DN_SK(%struct.sock* %6)
  store %struct.dn_scp* %7, %struct.dn_scp** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.dn_scp*, %struct.dn_scp** %3, align 8
  %9 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %8, i32 0, i32 3
  %10 = call %struct.sk_buff* @skb_peek(i32* %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %4, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call i32 @dn_nsp_clone_and_send(%struct.sk_buff* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %12, %1
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load %struct.dn_scp*, %struct.dn_scp** %3, align 8
  %21 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DN_SEND, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %16
  br label %36

26:                                               ; preds = %19
  %27 = load %struct.dn_scp*, %struct.dn_scp** %3, align 8
  %28 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %27, i32 0, i32 2
  %29 = call %struct.sk_buff* @skb_peek(i32* %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %4, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call i32 @dn_nsp_clone_and_send(%struct.sk_buff* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  %40 = load %struct.dn_scp*, %struct.dn_scp** %3, align 8
  %41 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = ashr i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load %struct.dn_scp*, %struct.dn_scp** %3, align 8
  %45 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @NSP_MIN_WINDOW, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load i32, i32* @NSP_MIN_WINDOW, align 4
  %51 = load %struct.dn_scp*, %struct.dn_scp** %3, align 8
  %52 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %49, %39
  br label %54

54:                                               ; preds = %53, %36
  ret void
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i32 @dn_nsp_clone_and_send(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

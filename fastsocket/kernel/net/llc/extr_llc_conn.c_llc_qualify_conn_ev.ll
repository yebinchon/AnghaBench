; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_conn.c_llc_qualify_conn_ev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_conn.c_llc_qualify_conn_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_conn_state = type { %struct.llc_conn_state_trans** }
%struct.llc_conn_state_trans = type { i32 (%struct.sock*, %struct.sk_buff*)*, i32 (%struct.sock*, %struct.sk_buff*)* }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_conn_state_ev = type { i32 }
%struct.llc_sock = type { i32 }

@llc_conn_state_table = common dso_local global %struct.llc_conn_state* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.llc_conn_state_trans* (%struct.sock*, %struct.sk_buff*)* @llc_qualify_conn_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.llc_conn_state_trans* @llc_qualify_conn_ev(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.llc_conn_state_trans*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.llc_conn_state_trans**, align 8
  %7 = alloca i32 (%struct.sock*, %struct.sk_buff*)**, align 8
  %8 = alloca %struct.llc_conn_state_ev*, align 8
  %9 = alloca %struct.llc_sock*, align 8
  %10 = alloca %struct.llc_conn_state*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.llc_conn_state_ev* @llc_conn_ev(%struct.sk_buff* %11)
  store %struct.llc_conn_state_ev* %12, %struct.llc_conn_state_ev** %8, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call %struct.llc_sock* @llc_sk(%struct.sock* %13)
  store %struct.llc_sock* %14, %struct.llc_sock** %9, align 8
  %15 = load %struct.llc_conn_state*, %struct.llc_conn_state** @llc_conn_state_table, align 8
  %16 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %17 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.llc_conn_state, %struct.llc_conn_state* %15, i64 %20
  store %struct.llc_conn_state* %21, %struct.llc_conn_state** %10, align 8
  %22 = load %struct.llc_conn_state*, %struct.llc_conn_state** %10, align 8
  %23 = getelementptr inbounds %struct.llc_conn_state, %struct.llc_conn_state* %22, i32 0, i32 0
  %24 = load %struct.llc_conn_state_trans**, %struct.llc_conn_state_trans*** %23, align 8
  %25 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %26 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  %29 = load %struct.llc_conn_state_ev*, %struct.llc_conn_state_ev** %8, align 8
  %30 = getelementptr inbounds %struct.llc_conn_state_ev, %struct.llc_conn_state_ev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @llc_find_offset(i32 %28, i32 %31)
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.llc_conn_state_trans*, %struct.llc_conn_state_trans** %24, i64 %33
  store %struct.llc_conn_state_trans** %34, %struct.llc_conn_state_trans*** %6, align 8
  br label %35

35:                                               ; preds = %89, %2
  %36 = load %struct.llc_conn_state_trans**, %struct.llc_conn_state_trans*** %6, align 8
  %37 = load %struct.llc_conn_state_trans*, %struct.llc_conn_state_trans** %36, align 8
  %38 = getelementptr inbounds %struct.llc_conn_state_trans, %struct.llc_conn_state_trans* %37, i32 0, i32 1
  %39 = load i32 (%struct.sock*, %struct.sk_buff*)*, i32 (%struct.sock*, %struct.sk_buff*)** %38, align 8
  %40 = icmp ne i32 (%struct.sock*, %struct.sk_buff*)* %39, null
  br i1 %40, label %41, label %92

41:                                               ; preds = %35
  %42 = load %struct.llc_conn_state_trans**, %struct.llc_conn_state_trans*** %6, align 8
  %43 = load %struct.llc_conn_state_trans*, %struct.llc_conn_state_trans** %42, align 8
  %44 = getelementptr inbounds %struct.llc_conn_state_trans, %struct.llc_conn_state_trans* %43, i32 0, i32 1
  %45 = load i32 (%struct.sock*, %struct.sk_buff*)*, i32 (%struct.sock*, %struct.sk_buff*)** %44, align 8
  %46 = load %struct.sock*, %struct.sock** %4, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call i32 %45(%struct.sock* %46, %struct.sk_buff* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %88, label %50

50:                                               ; preds = %41
  %51 = load %struct.llc_conn_state_trans**, %struct.llc_conn_state_trans*** %6, align 8
  %52 = load %struct.llc_conn_state_trans*, %struct.llc_conn_state_trans** %51, align 8
  %53 = getelementptr inbounds %struct.llc_conn_state_trans, %struct.llc_conn_state_trans* %52, i32 0, i32 0
  %54 = load i32 (%struct.sock*, %struct.sk_buff*)*, i32 (%struct.sock*, %struct.sk_buff*)** %53, align 8
  %55 = bitcast i32 (%struct.sock*, %struct.sk_buff*)* %54 to i32 (%struct.sock*, %struct.sk_buff*)**
  store i32 (%struct.sock*, %struct.sk_buff*)** %55, i32 (%struct.sock*, %struct.sk_buff*)*** %7, align 8
  br label %56

56:                                               ; preds = %74, %50
  %57 = load i32 (%struct.sock*, %struct.sk_buff*)**, i32 (%struct.sock*, %struct.sk_buff*)*** %7, align 8
  %58 = icmp ne i32 (%struct.sock*, %struct.sk_buff*)** %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load i32 (%struct.sock*, %struct.sk_buff*)**, i32 (%struct.sock*, %struct.sk_buff*)*** %7, align 8
  %61 = load i32 (%struct.sock*, %struct.sk_buff*)*, i32 (%struct.sock*, %struct.sk_buff*)** %60, align 8
  %62 = icmp ne i32 (%struct.sock*, %struct.sk_buff*)* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i32 (%struct.sock*, %struct.sk_buff*)**, i32 (%struct.sock*, %struct.sk_buff*)*** %7, align 8
  %65 = load i32 (%struct.sock*, %struct.sk_buff*)*, i32 (%struct.sock*, %struct.sk_buff*)** %64, align 8
  %66 = load %struct.sock*, %struct.sock** %4, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = call i32 %65(%struct.sock* %66, %struct.sk_buff* %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  br label %71

71:                                               ; preds = %63, %59, %56
  %72 = phi i1 [ false, %59 ], [ false, %56 ], [ %70, %63 ]
  br i1 %72, label %73, label %77

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %73
  %75 = load i32 (%struct.sock*, %struct.sk_buff*)**, i32 (%struct.sock*, %struct.sk_buff*)*** %7, align 8
  %76 = getelementptr inbounds i32 (%struct.sock*, %struct.sk_buff*)*, i32 (%struct.sock*, %struct.sk_buff*)** %75, i32 1
  store i32 (%struct.sock*, %struct.sk_buff*)** %76, i32 (%struct.sock*, %struct.sk_buff*)*** %7, align 8
  br label %56

77:                                               ; preds = %71
  %78 = load i32 (%struct.sock*, %struct.sk_buff*)**, i32 (%struct.sock*, %struct.sk_buff*)*** %7, align 8
  %79 = icmp ne i32 (%struct.sock*, %struct.sk_buff*)** %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32 (%struct.sock*, %struct.sk_buff*)**, i32 (%struct.sock*, %struct.sk_buff*)*** %7, align 8
  %82 = load i32 (%struct.sock*, %struct.sk_buff*)*, i32 (%struct.sock*, %struct.sk_buff*)** %81, align 8
  %83 = icmp ne i32 (%struct.sock*, %struct.sk_buff*)* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %80, %77
  %85 = load %struct.llc_conn_state_trans**, %struct.llc_conn_state_trans*** %6, align 8
  %86 = load %struct.llc_conn_state_trans*, %struct.llc_conn_state_trans** %85, align 8
  store %struct.llc_conn_state_trans* %86, %struct.llc_conn_state_trans** %3, align 8
  br label %93

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %41
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.llc_conn_state_trans**, %struct.llc_conn_state_trans*** %6, align 8
  %91 = getelementptr inbounds %struct.llc_conn_state_trans*, %struct.llc_conn_state_trans** %90, i32 1
  store %struct.llc_conn_state_trans** %91, %struct.llc_conn_state_trans*** %6, align 8
  br label %35

92:                                               ; preds = %35
  store %struct.llc_conn_state_trans* null, %struct.llc_conn_state_trans** %3, align 8
  br label %93

93:                                               ; preds = %92, %84
  %94 = load %struct.llc_conn_state_trans*, %struct.llc_conn_state_trans** %3, align 8
  ret %struct.llc_conn_state_trans* %94
}

declare dso_local %struct.llc_conn_state_ev* @llc_conn_ev(%struct.sk_buff*) #1

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local i32 @llc_find_offset(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

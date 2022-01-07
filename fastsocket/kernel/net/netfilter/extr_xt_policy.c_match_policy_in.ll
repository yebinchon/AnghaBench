; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_policy.c_match_policy_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_policy.c_match_policy_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sec_path* }
%struct.sec_path = type { i32, i32* }
%struct.xt_policy_info = type { i32, i32, %struct.xt_policy_elem* }
%struct.xt_policy_elem = type { i32 }

@XT_POLICY_MATCH_STRICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_policy_info*, i16)* @match_policy_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_policy_in(%struct.sk_buff* %0, %struct.xt_policy_info* %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xt_policy_info*, align 8
  %7 = alloca i16, align 2
  %8 = alloca %struct.xt_policy_elem*, align 8
  %9 = alloca %struct.sec_path*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.xt_policy_info* %1, %struct.xt_policy_info** %6, align 8
  store i16 %2, i16* %7, align 2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load %struct.sec_path*, %struct.sec_path** %14, align 8
  store %struct.sec_path* %15, %struct.sec_path** %9, align 8
  %16 = load %struct.xt_policy_info*, %struct.xt_policy_info** %6, align 8
  %17 = getelementptr inbounds %struct.xt_policy_info, %struct.xt_policy_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @XT_POLICY_MATCH_STRICT, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load %struct.sec_path*, %struct.sec_path** %9, align 8
  %22 = icmp eq %struct.sec_path* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %100

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load %struct.xt_policy_info*, %struct.xt_policy_info** %6, align 8
  %29 = getelementptr inbounds %struct.xt_policy_info, %struct.xt_policy_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sec_path*, %struct.sec_path** %9, align 8
  %32 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %100

36:                                               ; preds = %27, %24
  %37 = load %struct.sec_path*, %struct.sec_path** %9, align 8
  %38 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %92, %36
  %42 = load i32, i32* %11, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %95

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.sec_path*, %struct.sec_path** %9, align 8
  %50 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %48, %51
  %53 = add nsw i32 %52, 1
  br label %55

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %47
  %56 = phi i32 [ %53, %47 ], [ 0, %54 ]
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.xt_policy_info*, %struct.xt_policy_info** %6, align 8
  %59 = getelementptr inbounds %struct.xt_policy_info, %struct.xt_policy_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp sge i32 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %100

63:                                               ; preds = %55
  %64 = load %struct.xt_policy_info*, %struct.xt_policy_info** %6, align 8
  %65 = getelementptr inbounds %struct.xt_policy_info, %struct.xt_policy_info* %64, i32 0, i32 2
  %66 = load %struct.xt_policy_elem*, %struct.xt_policy_elem** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.xt_policy_elem, %struct.xt_policy_elem* %66, i64 %68
  store %struct.xt_policy_elem* %69, %struct.xt_policy_elem** %8, align 8
  %70 = load %struct.sec_path*, %struct.sec_path** %9, align 8
  %71 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.xt_policy_elem*, %struct.xt_policy_elem** %8, align 8
  %78 = load i16, i16* %7, align 2
  %79 = call i64 @match_xfrm_state(i32 %76, %struct.xt_policy_elem* %77, i16 zeroext %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %63
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  store i32 1, i32* %4, align 4
  br label %100

85:                                               ; preds = %81
  br label %91

86:                                               ; preds = %63
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 0, i32* %4, align 4
  br label %100

90:                                               ; preds = %86
  br label %91

91:                                               ; preds = %90, %85
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %11, align 4
  br label %41

95:                                               ; preds = %41
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 1, i32 0
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %95, %89, %84, %62, %35, %23
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i64 @match_xfrm_state(i32, %struct.xt_policy_elem*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

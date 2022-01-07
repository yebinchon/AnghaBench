; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_em_cmp.c_em_cmp_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_em_cmp.c_em_cmp_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcf_ematch = type { i64 }
%struct.tcf_pkt_info = type { i32 }
%struct.tcf_em_cmp = type { i32, i32, i32, i32, i8, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcf_ematch*, %struct.tcf_pkt_info*)* @em_cmp_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_cmp_match(%struct.sk_buff* %0, %struct.tcf_ematch* %1, %struct.tcf_pkt_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcf_ematch*, align 8
  %7 = alloca %struct.tcf_pkt_info*, align 8
  %8 = alloca %struct.tcf_em_cmp*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tcf_ematch* %1, %struct.tcf_ematch** %6, align 8
  store %struct.tcf_pkt_info* %2, %struct.tcf_pkt_info** %7, align 8
  %11 = load %struct.tcf_ematch*, %struct.tcf_ematch** %6, align 8
  %12 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.tcf_em_cmp*
  store %struct.tcf_em_cmp* %14, %struct.tcf_em_cmp** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = load %struct.tcf_em_cmp*, %struct.tcf_em_cmp** %8, align 8
  %17 = getelementptr inbounds %struct.tcf_em_cmp, %struct.tcf_em_cmp* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @tcf_get_base_ptr(%struct.sk_buff* %15, i32 %18)
  %20 = load %struct.tcf_em_cmp*, %struct.tcf_em_cmp** %8, align 8
  %21 = getelementptr inbounds %struct.tcf_em_cmp, %struct.tcf_em_cmp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %19, i64 %23
  store i8* %24, i8** %9, align 8
  store i8 0, i8* %10, align 1
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load %struct.tcf_em_cmp*, %struct.tcf_em_cmp** %8, align 8
  %28 = getelementptr inbounds %struct.tcf_em_cmp, %struct.tcf_em_cmp* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @tcf_valid_offset(%struct.sk_buff* %25, i8* %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %106

33:                                               ; preds = %3
  %34 = load %struct.tcf_em_cmp*, %struct.tcf_em_cmp** %8, align 8
  %35 = getelementptr inbounds %struct.tcf_em_cmp, %struct.tcf_em_cmp* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %60 [
    i32 131, label %37
    i32 133, label %40
    i32 132, label %50
  ]

37:                                               ; preds = %33
  %38 = load i8*, i8** %9, align 8
  %39 = load i8, i8* %38, align 1
  store i8 %39, i8* %10, align 1
  br label %61

40:                                               ; preds = %33
  %41 = load i8*, i8** %9, align 8
  %42 = call zeroext i8 @get_unaligned_be16(i8* %41)
  store i8 %42, i8* %10, align 1
  %43 = load %struct.tcf_em_cmp*, %struct.tcf_em_cmp** %8, align 8
  %44 = call i32 @cmp_needs_transformation(%struct.tcf_em_cmp* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i8, i8* %10, align 1
  %48 = call zeroext i8 @be16_to_cpu(i8 zeroext %47)
  store i8 %48, i8* %10, align 1
  br label %49

49:                                               ; preds = %46, %40
  br label %61

50:                                               ; preds = %33
  %51 = load i8*, i8** %9, align 8
  %52 = call zeroext i8 @get_unaligned_be32(i8* %51)
  store i8 %52, i8* %10, align 1
  %53 = load %struct.tcf_em_cmp*, %struct.tcf_em_cmp** %8, align 8
  %54 = call i32 @cmp_needs_transformation(%struct.tcf_em_cmp* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i8, i8* %10, align 1
  %58 = call zeroext i8 @be32_to_cpu(i8 zeroext %57)
  store i8 %58, i8* %10, align 1
  br label %59

59:                                               ; preds = %56, %50
  br label %61

60:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %106

61:                                               ; preds = %59, %49, %37
  %62 = load %struct.tcf_em_cmp*, %struct.tcf_em_cmp** %8, align 8
  %63 = getelementptr inbounds %struct.tcf_em_cmp, %struct.tcf_em_cmp* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.tcf_em_cmp*, %struct.tcf_em_cmp** %8, align 8
  %68 = getelementptr inbounds %struct.tcf_em_cmp, %struct.tcf_em_cmp* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i8, i8* %10, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, %69
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %10, align 1
  br label %74

74:                                               ; preds = %66, %61
  %75 = load %struct.tcf_em_cmp*, %struct.tcf_em_cmp** %8, align 8
  %76 = getelementptr inbounds %struct.tcf_em_cmp, %struct.tcf_em_cmp* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %105 [
    i32 130, label %78
    i32 128, label %87
    i32 129, label %96
  ]

78:                                               ; preds = %74
  %79 = load i8, i8* %10, align 1
  %80 = zext i8 %79 to i32
  %81 = load %struct.tcf_em_cmp*, %struct.tcf_em_cmp** %8, align 8
  %82 = getelementptr inbounds %struct.tcf_em_cmp, %struct.tcf_em_cmp* %81, i32 0, i32 4
  %83 = load i8, i8* %82, align 4
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %80, %84
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %4, align 4
  br label %106

87:                                               ; preds = %74
  %88 = load i8, i8* %10, align 1
  %89 = zext i8 %88 to i32
  %90 = load %struct.tcf_em_cmp*, %struct.tcf_em_cmp** %8, align 8
  %91 = getelementptr inbounds %struct.tcf_em_cmp, %struct.tcf_em_cmp* %90, i32 0, i32 4
  %92 = load i8, i8* %91, align 4
  %93 = zext i8 %92 to i32
  %94 = icmp slt i32 %89, %93
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %4, align 4
  br label %106

96:                                               ; preds = %74
  %97 = load i8, i8* %10, align 1
  %98 = zext i8 %97 to i32
  %99 = load %struct.tcf_em_cmp*, %struct.tcf_em_cmp** %8, align 8
  %100 = getelementptr inbounds %struct.tcf_em_cmp, %struct.tcf_em_cmp* %99, i32 0, i32 4
  %101 = load i8, i8* %100, align 4
  %102 = zext i8 %101 to i32
  %103 = icmp sgt i32 %98, %102
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %4, align 4
  br label %106

105:                                              ; preds = %74
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %96, %87, %78, %60, %32
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i8* @tcf_get_base_ptr(%struct.sk_buff*, i32) #1

declare dso_local i32 @tcf_valid_offset(%struct.sk_buff*, i8*, i32) #1

declare dso_local zeroext i8 @get_unaligned_be16(i8*) #1

declare dso_local i32 @cmp_needs_transformation(%struct.tcf_em_cmp*) #1

declare dso_local zeroext i8 @be16_to_cpu(i8 zeroext) #1

declare dso_local zeroext i8 @get_unaligned_be32(i8*) #1

declare dso_local zeroext i8 @be32_to_cpu(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

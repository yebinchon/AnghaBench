; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_owner.c_owner_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_owner.c_owner_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.file* }
%struct.file = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.xt_match_param = type { %struct.xt_owner_match_info* }
%struct.xt_owner_match_info = type { i32, i32, i64, i64, i64, i64 }

@XT_OWNER_SOCKET = common dso_local global i32 0, align 4
@XT_OWNER_UID = common dso_local global i32 0, align 4
@XT_OWNER_GID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @owner_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owner_mt(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_match_param*, align 8
  %6 = alloca %struct.xt_owner_match_info*, align 8
  %7 = alloca %struct.file*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %5, align 8
  %8 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %9 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %8, i32 0, i32 0
  %10 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %9, align 8
  store %struct.xt_owner_match_info* %10, %struct.xt_owner_match_info** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp eq %struct.TYPE_5__* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp eq %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %15, %2
  %23 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %24 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %27 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %25, %28
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %3, align 4
  br label %154

32:                                               ; preds = %15
  %33 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %34 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %37 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %35, %38
  %40 = load i32, i32* @XT_OWNER_SOCKET, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %154

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.file*, %struct.file** %51, align 8
  store %struct.file* %52, %struct.file** %7, align 8
  %53 = load %struct.file*, %struct.file** %7, align 8
  %54 = icmp eq %struct.file* %53, null
  br i1 %54, label %55, label %69

55:                                               ; preds = %45
  %56 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %57 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %60 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = xor i32 %58, %61
  %63 = load i32, i32* @XT_OWNER_UID, align 4
  %64 = load i32, i32* @XT_OWNER_GID, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %62, %65
  %67 = icmp eq i32 %66, 0
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %3, align 4
  br label %154

69:                                               ; preds = %45
  %70 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %71 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @XT_OWNER_UID, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %111

76:                                               ; preds = %69
  %77 = load %struct.file*, %struct.file** %7, align 8
  %78 = getelementptr inbounds %struct.file, %struct.file* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %83 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp sge i64 %81, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %76
  %87 = load %struct.file*, %struct.file** %7, align 8
  %88 = getelementptr inbounds %struct.file, %struct.file* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %93 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp sle i64 %91, %94
  br label %96

96:                                               ; preds = %86, %76
  %97 = phi i1 [ false, %76 ], [ %95, %86 ]
  %98 = zext i1 %97 to i32
  %99 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %100 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @XT_OWNER_UID, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = xor i32 %98, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %154

110:                                              ; preds = %96
  br label %111

111:                                              ; preds = %110, %69
  %112 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %113 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @XT_OWNER_GID, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %153

118:                                              ; preds = %111
  %119 = load %struct.file*, %struct.file** %7, align 8
  %120 = getelementptr inbounds %struct.file, %struct.file* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %125 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = icmp sge i64 %123, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %118
  %129 = load %struct.file*, %struct.file** %7, align 8
  %130 = getelementptr inbounds %struct.file, %struct.file* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %135 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %134, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = icmp sle i64 %133, %136
  br label %138

138:                                              ; preds = %128, %118
  %139 = phi i1 [ false, %118 ], [ %137, %128 ]
  %140 = zext i1 %139 to i32
  %141 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %142 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @XT_OWNER_GID, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = xor i32 %140, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %138
  store i32 0, i32* %3, align 4
  br label %154

152:                                              ; preds = %138
  br label %153

153:                                              ; preds = %152, %111
  store i32 1, i32* %3, align 4
  br label %154

154:                                              ; preds = %153, %151, %109, %55, %43, %22
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

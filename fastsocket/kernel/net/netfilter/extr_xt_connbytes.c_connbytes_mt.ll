; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_connbytes.c_connbytes_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_connbytes.c_connbytes_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { %struct.xt_connbytes_info* }
%struct.xt_connbytes_info = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.nf_conn = type { i32 }
%struct.nf_conn_counter = type { i64, i64 }

@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@IP_CT_DIR_REPLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @connbytes_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connbytes_mt(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_match_param*, align 8
  %6 = alloca %struct.xt_connbytes_info*, align 8
  %7 = alloca %struct.nf_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.nf_conn_counter*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %5, align 8
  %13 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %14 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %13, i32 0, i32 0
  %15 = load %struct.xt_connbytes_info*, %struct.xt_connbytes_info** %14, align 8
  store %struct.xt_connbytes_info* %15, %struct.xt_connbytes_info** %6, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %16, i32* %8)
  store %struct.nf_conn* %17, %struct.nf_conn** %7, align 8
  %18 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %19 = icmp ne %struct.nf_conn* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %179

21:                                               ; preds = %2
  %22 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %23 = call %struct.nf_conn_counter* @nf_conn_acct_find(%struct.nf_conn* %22)
  store %struct.nf_conn_counter* %23, %struct.nf_conn_counter** %12, align 8
  %24 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %12, align 8
  %25 = icmp ne %struct.nf_conn_counter* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %179

27:                                               ; preds = %21
  %28 = load %struct.xt_connbytes_info*, %struct.xt_connbytes_info** %6, align 8
  %29 = getelementptr inbounds %struct.xt_connbytes_info, %struct.xt_connbytes_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %148 [
    i32 128, label %31
    i32 132, label %61
    i32 133, label %91
  ]

31:                                               ; preds = %27
  %32 = load %struct.xt_connbytes_info*, %struct.xt_connbytes_info** %6, align 8
  %33 = getelementptr inbounds %struct.xt_connbytes_info, %struct.xt_connbytes_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %60 [
    i32 130, label %35
    i32 129, label %41
    i32 131, label %47
  ]

35:                                               ; preds = %31
  %36 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %12, align 8
  %37 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %38 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %36, i64 %37
  %39 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %9, align 8
  br label %60

41:                                               ; preds = %31
  %42 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %12, align 8
  %43 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %44 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %42, i64 %43
  %45 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %9, align 8
  br label %60

47:                                               ; preds = %31
  %48 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %12, align 8
  %49 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %50 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %48, i64 %49
  %51 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %9, align 8
  %53 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %12, align 8
  %54 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %55 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %53, i64 %54
  %56 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %9, align 8
  br label %60

60:                                               ; preds = %31, %47, %41, %35
  br label %148

61:                                               ; preds = %27
  %62 = load %struct.xt_connbytes_info*, %struct.xt_connbytes_info** %6, align 8
  %63 = getelementptr inbounds %struct.xt_connbytes_info, %struct.xt_connbytes_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  switch i32 %64, label %90 [
    i32 130, label %65
    i32 129, label %71
    i32 131, label %77
  ]

65:                                               ; preds = %61
  %66 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %12, align 8
  %67 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %68 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %66, i64 %67
  %69 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %9, align 8
  br label %90

71:                                               ; preds = %61
  %72 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %12, align 8
  %73 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %74 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %72, i64 %73
  %75 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %9, align 8
  br label %90

77:                                               ; preds = %61
  %78 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %12, align 8
  %79 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %80 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %78, i64 %79
  %81 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %9, align 8
  %83 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %12, align 8
  %84 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %85 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %83, i64 %84
  %86 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %9, align 8
  %89 = add nsw i64 %88, %87
  store i64 %89, i64* %9, align 8
  br label %90

90:                                               ; preds = %61, %77, %71, %65
  br label %148

91:                                               ; preds = %27
  %92 = load %struct.xt_connbytes_info*, %struct.xt_connbytes_info** %6, align 8
  %93 = getelementptr inbounds %struct.xt_connbytes_info, %struct.xt_connbytes_info* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  switch i32 %94, label %140 [
    i32 130, label %95
    i32 129, label %106
    i32 131, label %117
  ]

95:                                               ; preds = %91
  %96 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %12, align 8
  %97 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %98 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %96, i64 %97
  %99 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %10, align 8
  %101 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %12, align 8
  %102 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %103 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %101, i64 %102
  %104 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %11, align 8
  br label %140

106:                                              ; preds = %91
  %107 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %12, align 8
  %108 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %109 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %107, i64 %108
  %110 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %10, align 8
  %112 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %12, align 8
  %113 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %114 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %112, i64 %113
  %115 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %11, align 8
  br label %140

117:                                              ; preds = %91
  %118 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %12, align 8
  %119 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %120 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %118, i64 %119
  %121 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %12, align 8
  %124 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %125 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %123, i64 %124
  %126 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %122, %127
  store i64 %128, i64* %10, align 8
  %129 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %12, align 8
  %130 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %131 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %129, i64 %130
  %132 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %12, align 8
  %135 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %136 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %134, i64 %135
  %137 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %133, %138
  store i64 %139, i64* %11, align 8
  br label %140

140:                                              ; preds = %91, %117, %106, %95
  %141 = load i64, i64* %11, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i64, i64* %10, align 8
  %145 = load i64, i64* %11, align 8
  %146 = call i64 @div64_u64(i64 %144, i64 %145)
  store i64 %146, i64* %9, align 8
  br label %147

147:                                              ; preds = %143, %140
  br label %148

148:                                              ; preds = %27, %147, %90, %60
  %149 = load %struct.xt_connbytes_info*, %struct.xt_connbytes_info** %6, align 8
  %150 = getelementptr inbounds %struct.xt_connbytes_info, %struct.xt_connbytes_info* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %171

154:                                              ; preds = %148
  %155 = load i64, i64* %9, align 8
  %156 = load %struct.xt_connbytes_info*, %struct.xt_connbytes_info** %6, align 8
  %157 = getelementptr inbounds %struct.xt_connbytes_info, %struct.xt_connbytes_info* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp sle i64 %155, %159
  br i1 %160, label %161, label %168

161:                                              ; preds = %154
  %162 = load i64, i64* %9, align 8
  %163 = load %struct.xt_connbytes_info*, %struct.xt_connbytes_info** %6, align 8
  %164 = getelementptr inbounds %struct.xt_connbytes_info, %struct.xt_connbytes_info* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp sge i64 %162, %166
  br label %168

168:                                              ; preds = %161, %154
  %169 = phi i1 [ false, %154 ], [ %167, %161 ]
  %170 = zext i1 %169 to i32
  store i32 %170, i32* %3, align 4
  br label %179

171:                                              ; preds = %148
  %172 = load i64, i64* %9, align 8
  %173 = load %struct.xt_connbytes_info*, %struct.xt_connbytes_info** %6, align 8
  %174 = getelementptr inbounds %struct.xt_connbytes_info, %struct.xt_connbytes_info* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp sge i64 %172, %176
  %178 = zext i1 %177 to i32
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %171, %168, %26, %20
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local %struct.nf_conn_counter* @nf_conn_acct_find(%struct.nf_conn*) #1

declare dso_local i64 @div64_u64(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

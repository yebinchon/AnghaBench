; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_ipcomp.c_ipcomp_decompress.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_ipcomp.c_ipcomp_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.ipcomp_data* }
%struct.ipcomp_data = type { i32 }
%struct.sk_buff = type { i32, i32, i32, i32* }
%struct.crypto_comp = type { i32 }
%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }

@IPCOMP_SCRATCH_SIZE = common dso_local global i32 0, align 4
@ipcomp_scratches = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @ipcomp_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipcomp_decompress(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ipcomp_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.crypto_comp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %15 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %16 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %15, i32 0, i32 0
  %17 = load %struct.ipcomp_data*, %struct.ipcomp_data** %16, align 8
  store %struct.ipcomp_data* %17, %struct.ipcomp_data** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @IPCOMP_SCRATCH_SIZE, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %8, align 8
  %25 = call i32 (...) @get_cpu()
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @ipcomp_scratches, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i8** @per_cpu_ptr(i32 %26, i32 %27)
  %29 = load i8*, i8** %28, align 8
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %10, align 8
  %31 = load %struct.ipcomp_data*, %struct.ipcomp_data** %5, align 8
  %32 = getelementptr inbounds %struct.ipcomp_data, %struct.ipcomp_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i8** @per_cpu_ptr(i32 %33, i32 %34)
  %36 = load i8*, i8** %35, align 8
  %37 = bitcast i8* %36 to %struct.crypto_comp*
  store %struct.crypto_comp* %37, %struct.crypto_comp** %11, align 8
  %38 = load %struct.crypto_comp*, %struct.crypto_comp** %11, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @crypto_comp_decompress(%struct.crypto_comp* %38, i32* %39, i32 %40, i32* %41, i32* %7)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %2
  br label %162

46:                                               ; preds = %2
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = add i64 %50, 4
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %12, align 4
  br label %162

56:                                               ; preds = %46
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call i32 @skb_tailroom(%struct.sk_buff* %61)
  %63 = icmp sgt i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = call i32 @skb_tailroom(%struct.sk_buff* %65)
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %64, %56
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @__skb_put(%struct.sk_buff* %68, i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %13, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %74, i32* %75, i32 %76)
  br label %78

78:                                               ; preds = %128, %67
  %79 = load i32, i32* %13, align 4
  %80 = load i32*, i32** %10, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32* %82, i32** %10, align 8
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %7, align 4
  %85 = sub nsw i32 %84, %83
  store i32 %85, i32* %7, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %161

87:                                               ; preds = %78
  %88 = load i32, i32* @EMSGSIZE, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %12, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %90)
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %95 = icmp sge i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i64 @WARN_ON(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %87
  br label %162

100:                                              ; preds = %87
  %101 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %102 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %101)
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %106 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %105)
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %108
  store %struct.TYPE_3__* %109, %struct.TYPE_3__** %14, align 8
  %110 = load i32, i32* @GFP_ATOMIC, align 4
  %111 = call i32 @alloc_page(i32 %110)
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %12, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %100
  br label %162

121:                                              ; preds = %100
  %122 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %13, align 4
  br label %128

128:                                              ; preds = %126, %121
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @page_address(i32 %131)
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @memcpy(i32 %132, i32* %133, i32 %134)
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  store i64 0, i64* %137, align 8
  %138 = load i32, i32* %13, align 4
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* %13, align 4
  %142 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %143 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, %141
  store i32 %145, i32* %143, align 4
  %146 = load i32, i32* %13, align 4
  %147 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %148 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load i32, i32* %13, align 4
  %152 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %153 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, %151
  store i32 %155, i32* %153, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %157 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %156)
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %158, align 8
  br label %78

161:                                              ; preds = %78
  store i32 0, i32* %12, align 4
  br label %162

162:                                              ; preds = %161, %120, %99, %53, %45
  %163 = call i32 (...) @put_cpu()
  %164 = load i32, i32* %12, align 4
  ret i32 %164
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local i8** @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @crypto_comp_decompress(%struct.crypto_comp*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @alloc_page(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @page_address(i32) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

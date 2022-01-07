; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_ipcomp.c_ipcomp_compress.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_ipcomp.c_ipcomp_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.ipcomp_data* }
%struct.ipcomp_data = type { i32 }
%struct.sk_buff = type { i32, i32* }
%struct.crypto_comp = type { i32 }

@IPCOMP_SCRATCH_SIZE = common dso_local global i32 0, align 4
@ipcomp_scratches = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @ipcomp_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipcomp_compress(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ipcomp_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.crypto_comp*, align 8
  %13 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %14 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %15 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %14, i32 0, i32 0
  %16 = load %struct.ipcomp_data*, %struct.ipcomp_data** %15, align 8
  store %struct.ipcomp_data* %16, %struct.ipcomp_data** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @IPCOMP_SCRATCH_SIZE, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %9, align 8
  %24 = call i32 (...) @get_cpu()
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @ipcomp_scratches, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i8** @per_cpu_ptr(i32 %25, i32 %26)
  %28 = load i8*, i8** %27, align 8
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %11, align 8
  %30 = load %struct.ipcomp_data*, %struct.ipcomp_data** %6, align 8
  %31 = getelementptr inbounds %struct.ipcomp_data, %struct.ipcomp_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i8** @per_cpu_ptr(i32 %32, i32 %33)
  %35 = load i8*, i8** %34, align 8
  %36 = bitcast i8* %35 to %struct.crypto_comp*
  store %struct.crypto_comp* %36, %struct.crypto_comp** %12, align 8
  %37 = call i32 (...) @local_bh_disable()
  %38 = load %struct.crypto_comp*, %struct.crypto_comp** %12, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @crypto_comp_compress(%struct.crypto_comp* %38, i32* %39, i32 %40, i32* %41, i32* %8)
  store i32 %42, i32* %13, align 4
  %43 = call i32 (...) @local_bh_enable()
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %2
  br label %70

47:                                               ; preds = %2
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 %49, 4
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp uge i64 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @EMSGSIZE, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %13, align 4
  br label %70

57:                                               ; preds = %47
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @memcpy(i32* %59, i32* %60, i32 %61)
  %63 = call i32 (...) @put_cpu()
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 %66, 4
  %68 = trunc i64 %67 to i32
  %69 = call i32 @pskb_trim(%struct.sk_buff* %64, i32 %68)
  store i32 0, i32* %3, align 4
  br label %73

70:                                               ; preds = %54, %46
  %71 = call i32 (...) @put_cpu()
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %70, %57
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local i8** @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @crypto_comp_compress(%struct.crypto_comp*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @put_cpu(...) #1

declare dso_local i32 @pskb_trim(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

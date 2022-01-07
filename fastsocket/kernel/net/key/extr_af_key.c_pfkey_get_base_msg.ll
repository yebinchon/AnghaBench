; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_get_base_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_get_base_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sadb_msg = type { i64, i64, i64, i32 }
%struct.sk_buff = type { i32, i64 }

@EMSGSIZE = common dso_local global i32 0, align 4
@PF_KEY_V2 = common dso_local global i64 0, align 8
@SADB_RESERVED = common dso_local global i64 0, align 8
@SADB_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sadb_msg* (%struct.sk_buff*, i32*)* @pfkey_get_base_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sadb_msg* @pfkey_get_base_msg(%struct.sk_buff* %0, i32* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sadb_msg*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.sadb_msg* null, %struct.sadb_msg** %5, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = icmp ult i64 %9, 32
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @EMSGSIZE, align 4
  %13 = sub nsw i32 0, %12
  %14 = load i32*, i32** %4, align 8
  store i32 %13, i32* %14, align 4
  br label %71

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.sadb_msg*
  store %struct.sadb_msg* %19, %struct.sadb_msg** %5, align 8
  %20 = load %struct.sadb_msg*, %struct.sadb_msg** %5, align 8
  %21 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PF_KEY_V2, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %42, label %25

25:                                               ; preds = %15
  %26 = load %struct.sadb_msg*, %struct.sadb_msg** %5, align 8
  %27 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %25
  %31 = load %struct.sadb_msg*, %struct.sadb_msg** %5, align 8
  %32 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SADB_RESERVED, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.sadb_msg*, %struct.sadb_msg** %5, align 8
  %38 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SADB_MAX, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36, %30, %25, %15
  store %struct.sadb_msg* null, %struct.sadb_msg** %5, align 8
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  %45 = load i32*, i32** %4, align 8
  store i32 %44, i32* %45, align 4
  br label %70

46:                                               ; preds = %36
  %47 = load %struct.sadb_msg*, %struct.sadb_msg** %5, align 8
  %48 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = udiv i64 %54, 4
  %56 = icmp ne i64 %50, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %46
  %58 = load %struct.sadb_msg*, %struct.sadb_msg** %5, align 8
  %59 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = icmp ult i64 %61, 8
  br i1 %62, label %63, label %67

63:                                               ; preds = %57, %46
  store %struct.sadb_msg* null, %struct.sadb_msg** %5, align 8
  %64 = load i32, i32* @EMSGSIZE, align 4
  %65 = sub nsw i32 0, %64
  %66 = load i32*, i32** %4, align 8
  store i32 %65, i32* %66, align 4
  br label %69

67:                                               ; preds = %57
  %68 = load i32*, i32** %4, align 8
  store i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %67, %63
  br label %70

70:                                               ; preds = %69, %42
  br label %71

71:                                               ; preds = %70, %11
  %72 = load %struct.sadb_msg*, %struct.sadb_msg** %5, align 8
  ret %struct.sadb_msg* %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

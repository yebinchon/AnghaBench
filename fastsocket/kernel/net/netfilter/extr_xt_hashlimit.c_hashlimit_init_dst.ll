; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_hashlimit.c_hashlimit_init_dst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_hashlimit.c_hashlimit_init_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_hashlimit_htable = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.dsthash_dst = type { i8*, i8*, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.sk_buff = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@XT_HASHLIMIT_HASH_DIP = common dso_local global i32 0, align 4
@XT_HASHLIMIT_HASH_SIP = common dso_local global i32 0, align 4
@XT_HASHLIMIT_HASH_DPT = common dso_local global i32 0, align 4
@XT_HASHLIMIT_HASH_SPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_hashlimit_htable*, %struct.dsthash_dst*, %struct.sk_buff*, i32)* @hashlimit_init_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hashlimit_init_dst(%struct.xt_hashlimit_htable* %0, %struct.dsthash_dst* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xt_hashlimit_htable*, align 8
  %7 = alloca %struct.dsthash_dst*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i8*], align 16
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  store %struct.xt_hashlimit_htable* %0, %struct.xt_hashlimit_htable** %6, align 8
  store %struct.dsthash_dst* %1, %struct.dsthash_dst** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.dsthash_dst*, %struct.dsthash_dst** %7, align 8
  %14 = call i32 @memset(%struct.dsthash_dst* %13, i32 0, i32 40)
  %15 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %6, align 8
  %16 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %76 [
    i32 129, label %18
  ]

18:                                               ; preds = %4
  %19 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %6, align 8
  %20 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @XT_HASHLIMIT_HASH_DIP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %18
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = call %struct.TYPE_10__* @ip_hdr(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %6, align 8
  %32 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @maskl(i32 %30, i32 %34)
  %36 = load %struct.dsthash_dst*, %struct.dsthash_dst** %7, align 8
  %37 = getelementptr inbounds %struct.dsthash_dst, %struct.dsthash_dst* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i8* %35, i8** %38, align 8
  br label %39

39:                                               ; preds = %26, %18
  %40 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %6, align 8
  %41 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @XT_HASHLIMIT_HASH_SIP, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %39
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = call %struct.TYPE_10__* @ip_hdr(%struct.sk_buff* %48)
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %6, align 8
  %53 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @maskl(i32 %51, i32 %55)
  %57 = load %struct.dsthash_dst*, %struct.dsthash_dst** %7, align 8
  %58 = getelementptr inbounds %struct.dsthash_dst, %struct.dsthash_dst* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i8* %56, i8** %59, align 8
  br label %60

60:                                               ; preds = %47, %39
  %61 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %6, align 8
  %62 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @XT_HASHLIMIT_HASH_DPT, align 4
  %66 = load i32, i32* @XT_HASHLIMIT_HASH_SPT, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %122

71:                                               ; preds = %60
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %73 = call %struct.TYPE_10__* @ip_hdr(%struct.sk_buff* %72)
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %12, align 4
  br label %78

76:                                               ; preds = %4
  %77 = call i32 (...) @BUG()
  store i32 0, i32* %5, align 4
  br label %122

78:                                               ; preds = %71
  %79 = load i32, i32* %12, align 4
  switch i32 %79, label %85 [
    i32 132, label %80
    i32 131, label %80
    i32 130, label %80
    i32 133, label %80
    i32 134, label %80
  ]

80:                                               ; preds = %78, %78, %78, %78, %78
  %81 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = bitcast [2 x i8*]* %10 to i8***
  %84 = call i8** @skb_header_pointer(%struct.sk_buff* %81, i32 %82, i32 16, i8*** %83)
  store i8** %84, i8*** %11, align 8
  br label %89

85:                                               ; preds = %78
  %86 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 1
  store i8* null, i8** %86, align 8
  %87 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  store i8* null, i8** %87, align 16
  %88 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  store i8** %88, i8*** %11, align 8
  br label %89

89:                                               ; preds = %85, %80
  %90 = load i8**, i8*** %11, align 8
  %91 = icmp ne i8** %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  store i32 -1, i32* %5, align 4
  br label %122

93:                                               ; preds = %89
  %94 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %6, align 8
  %95 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @XT_HASHLIMIT_HASH_SPT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %93
  %102 = load i8**, i8*** %11, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 0
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.dsthash_dst*, %struct.dsthash_dst** %7, align 8
  %106 = getelementptr inbounds %struct.dsthash_dst, %struct.dsthash_dst* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %101, %93
  %108 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %6, align 8
  %109 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @XT_HASHLIMIT_HASH_DPT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %107
  %116 = load i8**, i8*** %11, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 1
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.dsthash_dst*, %struct.dsthash_dst** %7, align 8
  %120 = getelementptr inbounds %struct.dsthash_dst, %struct.dsthash_dst* %119, i32 0, i32 0
  store i8* %118, i8** %120, align 8
  br label %121

121:                                              ; preds = %115, %107
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %121, %92, %76, %70
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @memset(%struct.dsthash_dst*, i32, i32) #1

declare dso_local i8* @maskl(i32, i32) #1

declare dso_local %struct.TYPE_10__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i8** @skb_header_pointer(%struct.sk_buff*, i32, i32, i8***) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

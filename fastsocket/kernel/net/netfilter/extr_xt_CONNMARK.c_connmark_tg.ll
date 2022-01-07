; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_CONNMARK.c_connmark_tg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_CONNMARK.c_connmark_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_target_param = type { %struct.xt_connmark_tginfo1* }
%struct.xt_connmark_tginfo1 = type { i32, i32, i32, i32 }
%struct.nf_conn = type { i32 }

@XT_CONTINUE = common dso_local global i32 0, align 4
@IPCT_MARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_target_param*)* @connmark_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connmark_tg(%struct.sk_buff* %0, %struct.xt_target_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_target_param*, align 8
  %6 = alloca %struct.xt_connmark_tginfo1*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_target_param* %1, %struct.xt_target_param** %5, align 8
  %10 = load %struct.xt_target_param*, %struct.xt_target_param** %5, align 8
  %11 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %10, i32 0, i32 0
  %12 = load %struct.xt_connmark_tginfo1*, %struct.xt_connmark_tginfo1** %11, align 8
  store %struct.xt_connmark_tginfo1* %12, %struct.xt_connmark_tginfo1** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %13, i32* %7)
  store %struct.nf_conn* %14, %struct.nf_conn** %8, align 8
  %15 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %16 = icmp eq %struct.nf_conn* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @XT_CONTINUE, align 4
  store i32 %18, i32* %3, align 4
  br label %114

19:                                               ; preds = %2
  %20 = load %struct.xt_connmark_tginfo1*, %struct.xt_connmark_tginfo1** %6, align 8
  %21 = getelementptr inbounds %struct.xt_connmark_tginfo1, %struct.xt_connmark_tginfo1* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %112 [
    i32 128, label %23
    i32 129, label %54
    i32 130, label %89
  ]

23:                                               ; preds = %19
  %24 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %25 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.xt_connmark_tginfo1*, %struct.xt_connmark_tginfo1** %6, align 8
  %28 = getelementptr inbounds %struct.xt_connmark_tginfo1, %struct.xt_connmark_tginfo1* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %26, %30
  %32 = load %struct.xt_connmark_tginfo1*, %struct.xt_connmark_tginfo1** %6, align 8
  %33 = getelementptr inbounds %struct.xt_connmark_tginfo1, %struct.xt_connmark_tginfo1* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 %31, %34
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %9, align 8
  %38 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %39 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = load i8*, i8** %9, align 8
  %44 = icmp ne i8* %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %23
  %46 = load i8*, i8** %9, align 8
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %49 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @IPCT_MARK, align 4
  %51 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %52 = call i32 @nf_conntrack_event_cache(i32 %50, %struct.nf_conn* %51)
  br label %53

53:                                               ; preds = %45, %23
  br label %112

54:                                               ; preds = %19
  %55 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %56 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.xt_connmark_tginfo1*, %struct.xt_connmark_tginfo1** %6, align 8
  %59 = getelementptr inbounds %struct.xt_connmark_tginfo1, %struct.xt_connmark_tginfo1* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %57, %61
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.xt_connmark_tginfo1*, %struct.xt_connmark_tginfo1** %6, align 8
  %67 = getelementptr inbounds %struct.xt_connmark_tginfo1, %struct.xt_connmark_tginfo1* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %65, %68
  %70 = xor i32 %62, %69
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  store i8* %72, i8** %9, align 8
  %73 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %74 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = load i8*, i8** %9, align 8
  %79 = icmp ne i8* %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %54
  %81 = load i8*, i8** %9, align 8
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %84 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @IPCT_MARK, align 4
  %86 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %87 = call i32 @nf_conntrack_event_cache(i32 %85, %struct.nf_conn* %86)
  br label %88

88:                                               ; preds = %80, %54
  br label %112

89:                                               ; preds = %19
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.xt_connmark_tginfo1*, %struct.xt_connmark_tginfo1** %6, align 8
  %94 = getelementptr inbounds %struct.xt_connmark_tginfo1, %struct.xt_connmark_tginfo1* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = xor i32 %95, -1
  %97 = and i32 %92, %96
  %98 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %99 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.xt_connmark_tginfo1*, %struct.xt_connmark_tginfo1** %6, align 8
  %102 = getelementptr inbounds %struct.xt_connmark_tginfo1, %struct.xt_connmark_tginfo1* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %100, %103
  %105 = xor i32 %97, %104
  %106 = sext i32 %105 to i64
  %107 = inttoptr i64 %106 to i8*
  store i8* %107, i8** %9, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = ptrtoint i8* %108 to i32
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %19, %89, %88, %53
  %113 = load i32, i32* @XT_CONTINUE, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %17
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i32 @nf_conntrack_event_cache(i32, %struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_raw.c_raw_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_raw.c_raw_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.sock = type { i64, i32, i32 (%struct.sock*)* }
%struct.sk_buff = type { i32* }
%struct.inet_sock = type { i64, i64, i32 }
%struct.iphdr = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@EHOSTUNREACH = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NR_ICMP_UNREACH = common dso_local global i32 0, align 4
@icmp_err_convert = common dso_local global %struct.TYPE_4__* null, align 8
@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@IP_PMTUDISC_DONT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*, i32)* @raw_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw_err(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inet_sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iphdr*, align 8
  %13 = alloca i32*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call %struct.inet_sock* @inet_sk(%struct.sock* %14)
  store %struct.inet_sock* %15, %struct.inet_sock** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call %struct.TYPE_3__* @icmp_hdr(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = call %struct.TYPE_3__* @icmp_hdr(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %24 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %25 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %3
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TCP_ESTABLISHED, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %125

35:                                               ; preds = %28, %3
  %36 = load i32, i32* %8, align 4
  switch i32 %36, label %37 [
    i32 128, label %38
    i32 129, label %40
    i32 130, label %41
    i32 131, label %43
  ]

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %35, %37
  %39 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %39, i32* %10, align 4
  br label %74

40:                                               ; preds = %35
  br label %125

41:                                               ; preds = %35
  %42 = load i32, i32* @EPROTO, align 4
  store i32 %42, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %74

43:                                               ; preds = %35
  %44 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @NR_ICMP_UNREACH, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %74

49:                                               ; preds = %43
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @icmp_err_convert, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %10, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @icmp_err_convert, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %49
  %66 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %67 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @IP_PMTUDISC_DONT, align 4
  %70 = icmp ne i32 %68, %69
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* @EMSGSIZE, align 4
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %65, %49
  br label %74

74:                                               ; preds = %73, %48, %41, %38
  %75 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %76 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %108

79:                                               ; preds = %74
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = bitcast i32* %82 to %struct.iphdr*
  store %struct.iphdr* %83, %struct.iphdr** %12, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %88 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 2
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %86, i64 %91
  store i32* %92, i32** %13, align 8
  %93 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %94 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %79
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  store i32* %100, i32** %13, align 8
  br label %101

101:                                              ; preds = %97, %79
  %102 = load %struct.sock*, %struct.sock** %4, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32*, i32** %13, align 8
  %107 = call i32 @ip_icmp_error(%struct.sock* %102, %struct.sk_buff* %103, i32 %104, i32 0, i32 %105, i32* %106)
  br label %108

108:                                              ; preds = %101, %74
  %109 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %110 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %113, %108
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.sock*, %struct.sock** %4, align 8
  %119 = getelementptr inbounds %struct.sock, %struct.sock* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  %120 = load %struct.sock*, %struct.sock** %4, align 8
  %121 = getelementptr inbounds %struct.sock, %struct.sock* %120, i32 0, i32 2
  %122 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %121, align 8
  %123 = load %struct.sock*, %struct.sock** %4, align 8
  %124 = call i32 %122(%struct.sock* %123)
  br label %125

125:                                              ; preds = %34, %40, %116, %113
  ret void
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_3__* @icmp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip_icmp_error(%struct.sock*, %struct.sk_buff*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

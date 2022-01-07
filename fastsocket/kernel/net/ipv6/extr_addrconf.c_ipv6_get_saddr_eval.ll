; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_ipv6_get_saddr_eval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_ipv6_get_saddr_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ipv6_saddr_score = type { i32, i32, i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ipv6_saddr_dst = type { i32, i32, i32*, i32, i32 }

@IFA_F_DEPRECATED = common dso_local global i32 0, align 4
@IFA_F_OPTIMISTIC = common dso_local global i32 0, align 4
@IFA_F_HOMEADDRESS = common dso_local global i32 0, align 4
@IFA_F_TEMPORARY = common dso_local global i32 0, align 4
@IPV6_PREFER_SRC_COA = common dso_local global i32 0, align 4
@IPV6_PREFER_SRC_PUBLIC = common dso_local global i32 0, align 4
@IPV6_PREFER_SRC_TMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.ipv6_saddr_score*, %struct.ipv6_saddr_dst*, i32)* @ipv6_get_saddr_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_get_saddr_eval(%struct.net* %0, %struct.ipv6_saddr_score* %1, %struct.ipv6_saddr_dst* %2, i32 %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.ipv6_saddr_score*, align 8
  %7 = alloca %struct.ipv6_saddr_dst*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.ipv6_saddr_score* %1, %struct.ipv6_saddr_score** %6, align 8
  store %struct.ipv6_saddr_dst* %2, %struct.ipv6_saddr_dst** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %12 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sle i32 %10, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %25 [
    i32 128, label %17
    i32 130, label %21
  ]

17:                                               ; preds = %15
  %18 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %19 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  br label %35

21:                                               ; preds = %15
  %22 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %23 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %9, align 4
  br label %35

25:                                               ; preds = %15
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %28 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @test_bit(i32 %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %25, %21, %17
  br label %181

36:                                               ; preds = %4
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %167 [
    i32 136, label %38
    i32 134, label %46
    i32 128, label %55
    i32 131, label %75
    i32 133, label %96
    i32 135, label %118
    i32 132, label %142
    i32 130, label %156
  ]

38:                                               ; preds = %36
  %39 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %40 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %39, i32 0, i32 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %9, align 4
  br label %168

46:                                               ; preds = %36
  %47 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %48 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %47, i32 0, i32 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load %struct.ipv6_saddr_dst*, %struct.ipv6_saddr_dst** %7, align 8
  %52 = getelementptr inbounds %struct.ipv6_saddr_dst, %struct.ipv6_saddr_dst* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @ipv6_addr_equal(i32* %50, i32* %53)
  store i32 %54, i32* %9, align 4
  br label %168

55:                                               ; preds = %36
  %56 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %57 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @__ipv6_addr_src_scope(i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.ipv6_saddr_dst*, %struct.ipv6_saddr_dst** %7, align 8
  %62 = getelementptr inbounds %struct.ipv6_saddr_dst, %struct.ipv6_saddr_dst* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sge i32 %60, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load i32, i32* %9, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %9, align 4
  br label %71

68:                                               ; preds = %55
  %69 = load i32, i32* %9, align 4
  %70 = sub nsw i32 %69, 128
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %74 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %168

75:                                               ; preds = %36
  %76 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %77 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @ipv6_saddr_preferred(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %75
  %82 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %83 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %82, i32 0, i32 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @IFA_F_DEPRECATED, align 4
  %88 = load i32, i32* @IFA_F_OPTIMISTIC, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %86, %89
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  br label %93

93:                                               ; preds = %81, %75
  %94 = phi i1 [ true, %75 ], [ %92, %81 ]
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %9, align 4
  br label %168

96:                                               ; preds = %36
  %97 = load %struct.ipv6_saddr_dst*, %struct.ipv6_saddr_dst** %7, align 8
  %98 = getelementptr inbounds %struct.ipv6_saddr_dst, %struct.ipv6_saddr_dst* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %96
  %102 = load %struct.ipv6_saddr_dst*, %struct.ipv6_saddr_dst** %7, align 8
  %103 = getelementptr inbounds %struct.ipv6_saddr_dst, %struct.ipv6_saddr_dst* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %106 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %105, i32 0, i32 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %104, %113
  br label %115

115:                                              ; preds = %101, %96
  %116 = phi i1 [ true, %96 ], [ %114, %101 ]
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %9, align 4
  br label %168

118:                                              ; preds = %36
  %119 = load %struct.net*, %struct.net** %5, align 8
  %120 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %121 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %120, i32 0, i32 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %125 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %128 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %127, i32 0, i32 4
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @ipv6_addr_label(%struct.net* %119, i32* %123, i32 %126, i32 %135)
  %137 = load %struct.ipv6_saddr_dst*, %struct.ipv6_saddr_dst** %7, align 8
  %138 = getelementptr inbounds %struct.ipv6_saddr_dst, %struct.ipv6_saddr_dst* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %136, %139
  %141 = zext i1 %140 to i32
  store i32 %141, i32* %9, align 4
  br label %168

142:                                              ; preds = %36
  %143 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %144 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %143, i32 0, i32 4
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = call i32 @ipv6_addr_orchid(i32* %146)
  %148 = load %struct.ipv6_saddr_dst*, %struct.ipv6_saddr_dst** %7, align 8
  %149 = getelementptr inbounds %struct.ipv6_saddr_dst, %struct.ipv6_saddr_dst* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @ipv6_addr_orchid(i32* %150)
  %152 = xor i32 %147, %151
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  store i32 %155, i32* %9, align 4
  br label %168

156:                                              ; preds = %36
  %157 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %158 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %157, i32 0, i32 4
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  %161 = load %struct.ipv6_saddr_dst*, %struct.ipv6_saddr_dst** %7, align 8
  %162 = getelementptr inbounds %struct.ipv6_saddr_dst, %struct.ipv6_saddr_dst* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @ipv6_addr_diff(i32* %160, i32* %163)
  store i32 %164, i32* %9, align 4
  %165 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %166 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 8
  br label %168

167:                                              ; preds = %36
  store i32 0, i32* %9, align 4
  br label %168

168:                                              ; preds = %167, %156, %142, %118, %115, %93, %71, %46, %38
  %169 = load i32, i32* %9, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %168
  %172 = load i32, i32* %8, align 4
  %173 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %174 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @__set_bit(i32 %172, i32 %175)
  br label %177

177:                                              ; preds = %171, %168
  %178 = load i32, i32* %8, align 4
  %179 = load %struct.ipv6_saddr_score*, %struct.ipv6_saddr_score** %6, align 8
  %180 = getelementptr inbounds %struct.ipv6_saddr_score, %struct.ipv6_saddr_score* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  br label %181

181:                                              ; preds = %177, %35
  %182 = load i32, i32* %9, align 4
  ret i32 %182
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @ipv6_addr_equal(i32*, i32*) #1

declare dso_local i32 @__ipv6_addr_src_scope(i32) #1

declare dso_local i32 @ipv6_saddr_preferred(i32) #1

declare dso_local i32 @ipv6_addr_label(%struct.net*, i32*, i32, i32) #1

declare dso_local i32 @ipv6_addr_orchid(i32*) #1

declare dso_local i32 @ipv6_addr_diff(i32*, i32*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

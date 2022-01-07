; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_fib6_rules.c_fib6_rule_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_fib6_rules.c_fib6_rule_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i32, i32, i32, %struct.net* }
%struct.net = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.rt6_info*, %struct.rt6_info*, %struct.rt6_info* }
%struct.rt6_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.flowi = type { i32, i32 }
%struct.fib_lookup_arg = type { %struct.rt6_info*, %struct.rt6_info* (%struct.net*, %struct.fib6_table*, %struct.flowi*, i32)* }
%struct.fib6_table = type opaque
%struct.fib6_table.0 = type { i32 }
%struct.fib6_rule = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.in6_addr = type { i32 }
%struct.TYPE_8__ = type { i32 }

@FIB_RULE_FIND_SADDR = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_HAS_SADDR = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_SRCPREF_TMP = common dso_local global i32 0, align 4
@IPV6_PREFER_SRC_TMP = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_SRCPREF_PUBLIC = common dso_local global i32 0, align 4
@IPV6_PREFER_SRC_PUBLIC = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_SRCPREF_COA = common dso_local global i32 0, align 4
@IPV6_PREFER_SRC_COA = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule*, %struct.flowi*, i32, %struct.fib_lookup_arg*)* @fib6_rule_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_rule_action(%struct.fib_rule* %0, %struct.flowi* %1, i32 %2, %struct.fib_lookup_arg* %3) #0 {
  %5 = alloca %struct.fib_rule*, align 8
  %6 = alloca %struct.flowi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fib_lookup_arg*, align 8
  %9 = alloca %struct.rt6_info*, align 8
  %10 = alloca %struct.fib6_table.0*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.rt6_info* (%struct.net*, %struct.fib6_table.0*, %struct.flowi*, i32)*, align 8
  %13 = alloca %struct.fib6_rule*, align 8
  %14 = alloca %struct.in6_addr, align 4
  %15 = alloca i32, align 4
  store %struct.fib_rule* %0, %struct.fib_rule** %5, align 8
  store %struct.flowi* %1, %struct.flowi** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.fib_lookup_arg* %3, %struct.fib_lookup_arg** %8, align 8
  store %struct.rt6_info* null, %struct.rt6_info** %9, align 8
  %16 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %17 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %16, i32 0, i32 3
  %18 = load %struct.net*, %struct.net** %17, align 8
  store %struct.net* %18, %struct.net** %11, align 8
  %19 = load %struct.fib_lookup_arg*, %struct.fib_lookup_arg** %8, align 8
  %20 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %19, i32 0, i32 1
  %21 = load %struct.rt6_info* (%struct.net*, %struct.fib6_table*, %struct.flowi*, i32)*, %struct.rt6_info* (%struct.net*, %struct.fib6_table*, %struct.flowi*, i32)** %20, align 8
  %22 = bitcast %struct.rt6_info* (%struct.net*, %struct.fib6_table*, %struct.flowi*, i32)* %21 to %struct.rt6_info* (%struct.net*, %struct.fib6_table.0*, %struct.flowi*, i32)*
  store %struct.rt6_info* (%struct.net*, %struct.fib6_table.0*, %struct.flowi*, i32)* %22, %struct.rt6_info* (%struct.net*, %struct.fib6_table.0*, %struct.flowi*, i32)** %12, align 8
  %23 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %24 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %32 [
    i32 129, label %26
    i32 128, label %27
    i32 131, label %33
    i32 130, label %38
  ]

26:                                               ; preds = %4
  br label %43

27:                                               ; preds = %4
  %28 = load %struct.net*, %struct.net** %11, align 8
  %29 = getelementptr inbounds %struct.net, %struct.net* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.rt6_info*, %struct.rt6_info** %30, align 8
  store %struct.rt6_info* %31, %struct.rt6_info** %9, align 8
  br label %148

32:                                               ; preds = %4
  br label %33

33:                                               ; preds = %4, %32
  %34 = load %struct.net*, %struct.net** %11, align 8
  %35 = getelementptr inbounds %struct.net, %struct.net* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load %struct.rt6_info*, %struct.rt6_info** %36, align 8
  store %struct.rt6_info* %37, %struct.rt6_info** %9, align 8
  br label %148

38:                                               ; preds = %4
  %39 = load %struct.net*, %struct.net** %11, align 8
  %40 = getelementptr inbounds %struct.net, %struct.net* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load %struct.rt6_info*, %struct.rt6_info** %41, align 8
  store %struct.rt6_info* %42, %struct.rt6_info** %9, align 8
  br label %148

43:                                               ; preds = %26
  %44 = load %struct.net*, %struct.net** %11, align 8
  %45 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %46 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.fib6_table.0* @fib6_get_table(%struct.net* %44, i32 %47)
  store %struct.fib6_table.0* %48, %struct.fib6_table.0** %10, align 8
  %49 = load %struct.fib6_table.0*, %struct.fib6_table.0** %10, align 8
  %50 = icmp ne %struct.fib6_table.0* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load %struct.rt6_info* (%struct.net*, %struct.fib6_table.0*, %struct.flowi*, i32)*, %struct.rt6_info* (%struct.net*, %struct.fib6_table.0*, %struct.flowi*, i32)** %12, align 8
  %53 = load %struct.net*, %struct.net** %11, align 8
  %54 = load %struct.fib6_table.0*, %struct.fib6_table.0** %10, align 8
  %55 = load %struct.flowi*, %struct.flowi** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call %struct.rt6_info* %52(%struct.net* %53, %struct.fib6_table.0* %54, %struct.flowi* %55, i32 %56)
  store %struct.rt6_info* %57, %struct.rt6_info** %9, align 8
  br label %58

58:                                               ; preds = %51, %43
  %59 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %60 = load %struct.net*, %struct.net** %11, align 8
  %61 = getelementptr inbounds %struct.net, %struct.net* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.rt6_info*, %struct.rt6_info** %62, align 8
  %64 = icmp ne %struct.rt6_info* %59, %63
  br i1 %64, label %65, label %142

65:                                               ; preds = %58
  %66 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %67 = bitcast %struct.fib_rule* %66 to %struct.fib6_rule*
  store %struct.fib6_rule* %67, %struct.fib6_rule** %13, align 8
  %68 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %69 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @FIB_RULE_FIND_SADDR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %141

74:                                               ; preds = %65
  %75 = load %struct.fib6_rule*, %struct.fib6_rule** %13, align 8
  %76 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %141

80:                                               ; preds = %74
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @RT6_LOOKUP_F_HAS_SADDR, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %141, label %85

85:                                               ; preds = %80
  store i32 0, i32* %15, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @RT6_LOOKUP_F_SRCPREF_TMP, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32, i32* @IPV6_PREFER_SRC_TMP, align 4
  %92 = load i32, i32* %15, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %15, align 4
  br label %94

94:                                               ; preds = %90, %85
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @RT6_LOOKUP_F_SRCPREF_PUBLIC, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load i32, i32* @IPV6_PREFER_SRC_PUBLIC, align 4
  %101 = load i32, i32* %15, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %15, align 4
  br label %103

103:                                              ; preds = %99, %94
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @RT6_LOOKUP_F_SRCPREF_COA, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load i32, i32* @IPV6_PREFER_SRC_COA, align 4
  %110 = load i32, i32* %15, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %15, align 4
  br label %112

112:                                              ; preds = %108, %103
  %113 = load %struct.net*, %struct.net** %11, align 8
  %114 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %115 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = call %struct.TYPE_8__* @ip6_dst_idev(i32* %116)
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.flowi*, %struct.flowi** %6, align 8
  %121 = getelementptr inbounds %struct.flowi, %struct.flowi* %120, i32 0, i32 1
  %122 = load i32, i32* %15, align 4
  %123 = call i64 @ipv6_dev_get_saddr(%struct.net* %113, i32 %119, i32* %121, i32 %122, %struct.in6_addr* %14)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %112
  br label %143

126:                                              ; preds = %112
  %127 = load %struct.fib6_rule*, %struct.fib6_rule** %13, align 8
  %128 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load %struct.fib6_rule*, %struct.fib6_rule** %13, align 8
  %131 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @ipv6_prefix_equal(%struct.in6_addr* %14, i32* %129, i64 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %126
  br label %143

137:                                              ; preds = %126
  %138 = load %struct.flowi*, %struct.flowi** %6, align 8
  %139 = getelementptr inbounds %struct.flowi, %struct.flowi* %138, i32 0, i32 0
  %140 = call i32 @ipv6_addr_copy(i32* %139, %struct.in6_addr* %14)
  br label %141

141:                                              ; preds = %137, %80, %74, %65
  br label %153

142:                                              ; preds = %58
  br label %143

143:                                              ; preds = %142, %136, %125
  %144 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %145 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = call i32 @dst_release(i32* %146)
  store %struct.rt6_info* null, %struct.rt6_info** %9, align 8
  br label %153

148:                                              ; preds = %38, %33, %27
  %149 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %150 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = call i32 @dst_hold(i32* %151)
  br label %153

153:                                              ; preds = %148, %143, %141
  %154 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %155 = load %struct.fib_lookup_arg*, %struct.fib_lookup_arg** %8, align 8
  %156 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %155, i32 0, i32 0
  store %struct.rt6_info* %154, %struct.rt6_info** %156, align 8
  %157 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %158 = icmp eq %struct.rt6_info* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %153
  %160 = load i32, i32* @EAGAIN, align 4
  %161 = sub nsw i32 0, %160
  br label %163

162:                                              ; preds = %153
  br label %163

163:                                              ; preds = %162, %159
  %164 = phi i32 [ %161, %159 ], [ 0, %162 ]
  ret i32 %164
}

declare dso_local %struct.fib6_table.0* @fib6_get_table(%struct.net*, i32) #1

declare dso_local i64 @ipv6_dev_get_saddr(%struct.net*, i32, i32*, i32, %struct.in6_addr*) #1

declare dso_local %struct.TYPE_8__* @ip6_dst_idev(i32*) #1

declare dso_local i32 @ipv6_prefix_equal(%struct.in6_addr*, i32*, i64) #1

declare dso_local i32 @ipv6_addr_copy(i32*, %struct.in6_addr*) #1

declare dso_local i32 @dst_release(i32*) #1

declare dso_local i32 @dst_hold(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

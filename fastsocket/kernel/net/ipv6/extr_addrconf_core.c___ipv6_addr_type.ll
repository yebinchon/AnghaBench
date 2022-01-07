; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf_core.c___ipv6_addr_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf_core.c___ipv6_addr_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32* }

@IPV6_ADDR_UNICAST = common dso_local global i32 0, align 4
@IPV6_ADDR_SCOPE_GLOBAL = common dso_local global i32 0, align 4
@IPV6_ADDR_MULTICAST = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@IPV6_ADDR_SCOPE_LINKLOCAL = common dso_local global i32 0, align 4
@IPV6_ADDR_SITELOCAL = common dso_local global i32 0, align 4
@IPV6_ADDR_SCOPE_SITELOCAL = common dso_local global i32 0, align 4
@IPV6_ADDR_ANY = common dso_local global i32 0, align 4
@IPV6_ADDR_LOOPBACK = common dso_local global i32 0, align 4
@IPV6_ADDR_COMPATv4 = common dso_local global i32 0, align 4
@IPV6_ADDR_MAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ipv6_addr_type(%struct.in6_addr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.in6_addr*, align 8
  %4 = alloca i32, align 4
  store %struct.in6_addr* %0, %struct.in6_addr** %3, align 8
  %5 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %6 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @htonl(i32 -536870912)
  %12 = and i32 %10, %11
  %13 = call i32 @htonl(i32 0)
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @htonl(i32 -536870912)
  %18 = and i32 %16, %17
  %19 = call i32 @htonl(i32 -536870912)
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i32, i32* @IPV6_ADDR_UNICAST, align 4
  %23 = load i32, i32* @IPV6_ADDR_SCOPE_GLOBAL, align 4
  %24 = call i32 @IPV6_ADDR_SCOPE_TYPE(i32 %23)
  %25 = or i32 %22, %24
  store i32 %25, i32* %2, align 4
  br label %145

26:                                               ; preds = %15, %1
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @htonl(i32 -16777216)
  %29 = and i32 %27, %28
  %30 = call i32 @htonl(i32 -16777216)
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %34 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %35 = call i32 @IPV6_ADDR_MC_SCOPE(%struct.in6_addr* %34)
  %36 = call i32 @ipv6_addr_scope2type(i32 %35)
  %37 = or i32 %33, %36
  store i32 %37, i32* %2, align 4
  br label %145

38:                                               ; preds = %26
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @htonl(i32 -4194304)
  %41 = and i32 %39, %40
  %42 = call i32 @htonl(i32 -25165824)
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %46 = load i32, i32* @IPV6_ADDR_UNICAST, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @IPV6_ADDR_SCOPE_LINKLOCAL, align 4
  %49 = call i32 @IPV6_ADDR_SCOPE_TYPE(i32 %48)
  %50 = or i32 %47, %49
  store i32 %50, i32* %2, align 4
  br label %145

51:                                               ; preds = %38
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @htonl(i32 -4194304)
  %54 = and i32 %52, %53
  %55 = call i32 @htonl(i32 -20971520)
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load i32, i32* @IPV6_ADDR_SITELOCAL, align 4
  %59 = load i32, i32* @IPV6_ADDR_UNICAST, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @IPV6_ADDR_SCOPE_SITELOCAL, align 4
  %62 = call i32 @IPV6_ADDR_SCOPE_TYPE(i32 %61)
  %63 = or i32 %60, %62
  store i32 %63, i32* %2, align 4
  br label %145

64:                                               ; preds = %51
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @htonl(i32 -33554432)
  %67 = and i32 %65, %66
  %68 = call i32 @htonl(i32 -67108864)
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load i32, i32* @IPV6_ADDR_UNICAST, align 4
  %72 = load i32, i32* @IPV6_ADDR_SCOPE_GLOBAL, align 4
  %73 = call i32 @IPV6_ADDR_SCOPE_TYPE(i32 %72)
  %74 = or i32 %71, %73
  store i32 %74, i32* %2, align 4
  br label %145

75:                                               ; preds = %64
  %76 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %77 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %82 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %80, %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %140

88:                                               ; preds = %75
  %89 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %90 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %126

95:                                               ; preds = %88
  %96 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %97 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32, i32* @IPV6_ADDR_ANY, align 4
  store i32 %103, i32* %2, align 4
  br label %145

104:                                              ; preds = %95
  %105 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %106 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 3
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @htonl(i32 1)
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %104
  %113 = load i32, i32* @IPV6_ADDR_LOOPBACK, align 4
  %114 = load i32, i32* @IPV6_ADDR_UNICAST, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @IPV6_ADDR_SCOPE_LINKLOCAL, align 4
  %117 = call i32 @IPV6_ADDR_SCOPE_TYPE(i32 %116)
  %118 = or i32 %115, %117
  store i32 %118, i32* %2, align 4
  br label %145

119:                                              ; preds = %104
  %120 = load i32, i32* @IPV6_ADDR_COMPATv4, align 4
  %121 = load i32, i32* @IPV6_ADDR_UNICAST, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @IPV6_ADDR_SCOPE_GLOBAL, align 4
  %124 = call i32 @IPV6_ADDR_SCOPE_TYPE(i32 %123)
  %125 = or i32 %122, %124
  store i32 %125, i32* %2, align 4
  br label %145

126:                                              ; preds = %88
  %127 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %128 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @htonl(i32 65535)
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %126
  %135 = load i32, i32* @IPV6_ADDR_MAPPED, align 4
  %136 = load i32, i32* @IPV6_ADDR_SCOPE_GLOBAL, align 4
  %137 = call i32 @IPV6_ADDR_SCOPE_TYPE(i32 %136)
  %138 = or i32 %135, %137
  store i32 %138, i32* %2, align 4
  br label %145

139:                                              ; preds = %126
  br label %140

140:                                              ; preds = %139, %75
  %141 = load i32, i32* @IPV6_ADDR_UNICAST, align 4
  %142 = load i32, i32* @IPV6_ADDR_SCOPE_GLOBAL, align 4
  %143 = call i32 @IPV6_ADDR_SCOPE_TYPE(i32 %142)
  %144 = or i32 %141, %143
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %140, %134, %119, %112, %102, %70, %57, %44, %32, %21
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @IPV6_ADDR_SCOPE_TYPE(i32) #1

declare dso_local i32 @ipv6_addr_scope2type(i32) #1

declare dso_local i32 @IPV6_ADDR_MC_SCOPE(%struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

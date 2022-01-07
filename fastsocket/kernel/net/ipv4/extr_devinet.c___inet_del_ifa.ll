; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_devinet.c___inet_del_ifa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_devinet.c___inet_del_ifa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_device = type { %struct.in_ifaddr* }
%struct.in_ifaddr = type { i32, i64, i64, i32, %struct.in_ifaddr* }
%struct.nlmsghdr = type { i32 }

@IFA_F_SECONDARY = common dso_local global i32 0, align 4
@RTM_DELADDR = common dso_local global i32 0, align 4
@inetaddr_chain = common dso_local global i32 0, align 4
@NETDEV_DOWN = common dso_local global i32 0, align 4
@RTM_NEWADDR = common dso_local global i32 0, align 4
@NETDEV_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.in_device*, %struct.in_ifaddr**, i32, %struct.nlmsghdr*, i32)* @__inet_del_ifa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__inet_del_ifa(%struct.in_device* %0, %struct.in_ifaddr** %1, i32 %2, %struct.nlmsghdr* %3, i32 %4) #0 {
  %6 = alloca %struct.in_device*, align 8
  %7 = alloca %struct.in_ifaddr**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nlmsghdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.in_ifaddr*, align 8
  %12 = alloca %struct.in_ifaddr*, align 8
  %13 = alloca %struct.in_ifaddr*, align 8
  %14 = alloca %struct.in_ifaddr*, align 8
  %15 = alloca %struct.in_ifaddr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.in_ifaddr**, align 8
  store %struct.in_device* %0, %struct.in_device** %6, align 8
  store %struct.in_ifaddr** %1, %struct.in_ifaddr*** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %9, align 8
  store i32 %4, i32* %10, align 4
  store %struct.in_ifaddr* null, %struct.in_ifaddr** %11, align 8
  %18 = load %struct.in_ifaddr**, %struct.in_ifaddr*** %7, align 8
  %19 = load %struct.in_ifaddr*, %struct.in_ifaddr** %18, align 8
  store %struct.in_ifaddr* %19, %struct.in_ifaddr** %13, align 8
  %20 = load %struct.in_device*, %struct.in_device** %6, align 8
  %21 = getelementptr inbounds %struct.in_device, %struct.in_device* %20, i32 0, i32 0
  %22 = load %struct.in_ifaddr*, %struct.in_ifaddr** %21, align 8
  store %struct.in_ifaddr* %22, %struct.in_ifaddr** %14, align 8
  store %struct.in_ifaddr* null, %struct.in_ifaddr** %15, align 8
  %23 = load %struct.in_device*, %struct.in_device** %6, align 8
  %24 = call i32 @IN_DEV_PROMOTE_SECONDARIES(%struct.in_device* %23)
  store i32 %24, i32* %16, align 4
  %25 = call i32 (...) @ASSERT_RTNL()
  %26 = load %struct.in_ifaddr*, %struct.in_ifaddr** %13, align 8
  %27 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IFA_F_SECONDARY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %104, label %32

32:                                               ; preds = %5
  %33 = load %struct.in_ifaddr*, %struct.in_ifaddr** %13, align 8
  %34 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %33, i32 0, i32 4
  store %struct.in_ifaddr** %34, %struct.in_ifaddr*** %17, align 8
  br label %35

35:                                               ; preds = %102, %78, %32
  %36 = load %struct.in_ifaddr**, %struct.in_ifaddr*** %17, align 8
  %37 = load %struct.in_ifaddr*, %struct.in_ifaddr** %36, align 8
  store %struct.in_ifaddr* %37, %struct.in_ifaddr** %12, align 8
  %38 = icmp ne %struct.in_ifaddr* %37, null
  br i1 %38, label %39, label %103

39:                                               ; preds = %35
  %40 = load %struct.in_ifaddr*, %struct.in_ifaddr** %12, align 8
  %41 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IFA_F_SECONDARY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %39
  %47 = load %struct.in_ifaddr*, %struct.in_ifaddr** %13, align 8
  %48 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.in_ifaddr*, %struct.in_ifaddr** %12, align 8
  %51 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sle i64 %49, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load %struct.in_ifaddr*, %struct.in_ifaddr** %12, align 8
  store %struct.in_ifaddr* %55, %struct.in_ifaddr** %14, align 8
  br label %56

56:                                               ; preds = %54, %46, %39
  %57 = load %struct.in_ifaddr*, %struct.in_ifaddr** %12, align 8
  %58 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @IFA_F_SECONDARY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %56
  %64 = load %struct.in_ifaddr*, %struct.in_ifaddr** %13, align 8
  %65 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.in_ifaddr*, %struct.in_ifaddr** %12, align 8
  %68 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %78, label %71

71:                                               ; preds = %63
  %72 = load %struct.in_ifaddr*, %struct.in_ifaddr** %13, align 8
  %73 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.in_ifaddr*, %struct.in_ifaddr** %12, align 8
  %76 = call i32 @inet_ifa_match(i32 %74, %struct.in_ifaddr* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %71, %63, %56
  %79 = load %struct.in_ifaddr*, %struct.in_ifaddr** %12, align 8
  %80 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %79, i32 0, i32 4
  store %struct.in_ifaddr** %80, %struct.in_ifaddr*** %17, align 8
  %81 = load %struct.in_ifaddr*, %struct.in_ifaddr** %12, align 8
  store %struct.in_ifaddr* %81, %struct.in_ifaddr** %15, align 8
  br label %35

82:                                               ; preds = %71
  %83 = load i32, i32* %16, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %100, label %85

85:                                               ; preds = %82
  %86 = load %struct.in_ifaddr*, %struct.in_ifaddr** %12, align 8
  %87 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %86, i32 0, i32 4
  %88 = load %struct.in_ifaddr*, %struct.in_ifaddr** %87, align 8
  %89 = load %struct.in_ifaddr**, %struct.in_ifaddr*** %17, align 8
  store %struct.in_ifaddr* %88, %struct.in_ifaddr** %89, align 8
  %90 = load i32, i32* @RTM_DELADDR, align 4
  %91 = load %struct.in_ifaddr*, %struct.in_ifaddr** %12, align 8
  %92 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @rtmsg_ifa(i32 %90, %struct.in_ifaddr* %91, %struct.nlmsghdr* %92, i32 %93)
  %95 = load i32, i32* @NETDEV_DOWN, align 4
  %96 = load %struct.in_ifaddr*, %struct.in_ifaddr** %12, align 8
  %97 = call i32 @blocking_notifier_call_chain(i32* @inetaddr_chain, i32 %95, %struct.in_ifaddr* %96)
  %98 = load %struct.in_ifaddr*, %struct.in_ifaddr** %12, align 8
  %99 = call i32 @inet_free_ifa(%struct.in_ifaddr* %98)
  br label %102

100:                                              ; preds = %82
  %101 = load %struct.in_ifaddr*, %struct.in_ifaddr** %12, align 8
  store %struct.in_ifaddr* %101, %struct.in_ifaddr** %11, align 8
  br label %103

102:                                              ; preds = %85
  br label %35

103:                                              ; preds = %100, %35
  br label %104

104:                                              ; preds = %103, %5
  %105 = load %struct.in_ifaddr*, %struct.in_ifaddr** %13, align 8
  %106 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %105, i32 0, i32 4
  %107 = load %struct.in_ifaddr*, %struct.in_ifaddr** %106, align 8
  %108 = load %struct.in_ifaddr**, %struct.in_ifaddr*** %7, align 8
  store %struct.in_ifaddr* %107, %struct.in_ifaddr** %108, align 8
  %109 = load i32, i32* @RTM_DELADDR, align 4
  %110 = load %struct.in_ifaddr*, %struct.in_ifaddr** %13, align 8
  %111 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @rtmsg_ifa(i32 %109, %struct.in_ifaddr* %110, %struct.nlmsghdr* %111, i32 %112)
  %114 = load i32, i32* @NETDEV_DOWN, align 4
  %115 = load %struct.in_ifaddr*, %struct.in_ifaddr** %13, align 8
  %116 = call i32 @blocking_notifier_call_chain(i32* @inetaddr_chain, i32 %114, %struct.in_ifaddr* %115)
  %117 = load %struct.in_ifaddr*, %struct.in_ifaddr** %11, align 8
  %118 = icmp ne %struct.in_ifaddr* %117, null
  br i1 %118, label %119, label %181

119:                                              ; preds = %104
  %120 = load %struct.in_ifaddr*, %struct.in_ifaddr** %15, align 8
  %121 = icmp ne %struct.in_ifaddr* %120, null
  br i1 %121, label %122, label %136

122:                                              ; preds = %119
  %123 = load %struct.in_ifaddr*, %struct.in_ifaddr** %11, align 8
  %124 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %123, i32 0, i32 4
  %125 = load %struct.in_ifaddr*, %struct.in_ifaddr** %124, align 8
  %126 = load %struct.in_ifaddr*, %struct.in_ifaddr** %15, align 8
  %127 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %126, i32 0, i32 4
  store %struct.in_ifaddr* %125, %struct.in_ifaddr** %127, align 8
  %128 = load %struct.in_ifaddr*, %struct.in_ifaddr** %14, align 8
  %129 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %128, i32 0, i32 4
  %130 = load %struct.in_ifaddr*, %struct.in_ifaddr** %129, align 8
  %131 = load %struct.in_ifaddr*, %struct.in_ifaddr** %11, align 8
  %132 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %131, i32 0, i32 4
  store %struct.in_ifaddr* %130, %struct.in_ifaddr** %132, align 8
  %133 = load %struct.in_ifaddr*, %struct.in_ifaddr** %11, align 8
  %134 = load %struct.in_ifaddr*, %struct.in_ifaddr** %14, align 8
  %135 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %134, i32 0, i32 4
  store %struct.in_ifaddr* %133, %struct.in_ifaddr** %135, align 8
  br label %136

136:                                              ; preds = %122, %119
  %137 = load i32, i32* @IFA_F_SECONDARY, align 4
  %138 = xor i32 %137, -1
  %139 = load %struct.in_ifaddr*, %struct.in_ifaddr** %11, align 8
  %140 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load i32, i32* @RTM_NEWADDR, align 4
  %144 = load %struct.in_ifaddr*, %struct.in_ifaddr** %11, align 8
  %145 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @rtmsg_ifa(i32 %143, %struct.in_ifaddr* %144, %struct.nlmsghdr* %145, i32 %146)
  %148 = load i32, i32* @NETDEV_UP, align 4
  %149 = load %struct.in_ifaddr*, %struct.in_ifaddr** %11, align 8
  %150 = call i32 @blocking_notifier_call_chain(i32* @inetaddr_chain, i32 %148, %struct.in_ifaddr* %149)
  %151 = load %struct.in_ifaddr*, %struct.in_ifaddr** %11, align 8
  %152 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %151, i32 0, i32 4
  %153 = load %struct.in_ifaddr*, %struct.in_ifaddr** %152, align 8
  store %struct.in_ifaddr* %153, %struct.in_ifaddr** %12, align 8
  br label %154

154:                                              ; preds = %176, %136
  %155 = load %struct.in_ifaddr*, %struct.in_ifaddr** %12, align 8
  %156 = icmp ne %struct.in_ifaddr* %155, null
  br i1 %156, label %157, label %180

157:                                              ; preds = %154
  %158 = load %struct.in_ifaddr*, %struct.in_ifaddr** %13, align 8
  %159 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.in_ifaddr*, %struct.in_ifaddr** %12, align 8
  %162 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %160, %163
  br i1 %164, label %172, label %165

165:                                              ; preds = %157
  %166 = load %struct.in_ifaddr*, %struct.in_ifaddr** %13, align 8
  %167 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.in_ifaddr*, %struct.in_ifaddr** %12, align 8
  %170 = call i32 @inet_ifa_match(i32 %168, %struct.in_ifaddr* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %165, %157
  br label %176

173:                                              ; preds = %165
  %174 = load %struct.in_ifaddr*, %struct.in_ifaddr** %12, align 8
  %175 = call i32 @fib_add_ifaddr(%struct.in_ifaddr* %174)
  br label %176

176:                                              ; preds = %173, %172
  %177 = load %struct.in_ifaddr*, %struct.in_ifaddr** %12, align 8
  %178 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %177, i32 0, i32 4
  %179 = load %struct.in_ifaddr*, %struct.in_ifaddr** %178, align 8
  store %struct.in_ifaddr* %179, %struct.in_ifaddr** %12, align 8
  br label %154

180:                                              ; preds = %154
  br label %181

181:                                              ; preds = %180, %104
  %182 = load i32, i32* %8, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load %struct.in_ifaddr*, %struct.in_ifaddr** %13, align 8
  %186 = call i32 @inet_free_ifa(%struct.in_ifaddr* %185)
  br label %187

187:                                              ; preds = %184, %181
  ret void
}

declare dso_local i32 @IN_DEV_PROMOTE_SECONDARIES(%struct.in_device*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @inet_ifa_match(i32, %struct.in_ifaddr*) #1

declare dso_local i32 @rtmsg_ifa(i32, %struct.in_ifaddr*, %struct.nlmsghdr*, i32) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, %struct.in_ifaddr*) #1

declare dso_local i32 @inet_free_ifa(%struct.in_ifaddr*) #1

declare dso_local i32 @fib_add_ifaddr(%struct.in_ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

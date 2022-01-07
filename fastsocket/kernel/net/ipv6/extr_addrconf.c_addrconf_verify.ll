; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_verify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.inet6_ifaddr = type { i32, i64, i64, i64, i32, i64, %struct.inet6_ifaddr*, %struct.TYPE_9__*, %struct.inet6_ifaddr* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64 }

@addrconf_verify_lock = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ADDR_CHECK_FREQUENCY = common dso_local global i64 0, align 8
@addr_chk_timer = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@IN6_ADDR_HSIZE = common dso_local global i32 0, align 4
@addrconf_hash_lock = common dso_local global i32 0, align 4
@inet6_addr_lst = common dso_local global %struct.inet6_ifaddr** null, align 8
@IFA_F_PERMANENT = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@INFINITY_LIFE_TIME = common dso_local global i64 0, align 8
@IFA_F_DEPRECATED = common dso_local global i32 0, align 4
@IFA_F_TEMPORARY = common dso_local global i32 0, align 4
@IFA_F_TENTATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @addrconf_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addrconf_verify(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.inet6_ifaddr*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %9 = call i32 @spin_lock_bh(i32* @addrconf_verify_lock)
  %10 = load i64, i64* @jiffies, align 8
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @ADDR_CHECK_FREQUENCY, align 8
  %13 = add i64 %11, %12
  store i64 %13, i64* %5, align 8
  %14 = call i32 @del_timer(%struct.TYPE_10__* @addr_chk_timer)
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %172, %1
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @IN6_ADDR_HSIZE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %175

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %127, %60, %19
  %21 = call i32 @read_lock(i32* @addrconf_hash_lock)
  %22 = load %struct.inet6_ifaddr**, %struct.inet6_ifaddr*** @inet6_addr_lst, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %22, i64 %24
  %26 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %25, align 8
  store %struct.inet6_ifaddr* %26, %struct.inet6_ifaddr** %3, align 8
  br label %27

27:                                               ; preds = %166, %20
  %28 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %29 = icmp ne %struct.inet6_ifaddr* %28, null
  br i1 %29, label %30, label %170

30:                                               ; preds = %27
  %31 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %32 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IFA_F_PERMANENT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %166

38:                                               ; preds = %30
  %39 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %40 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %39, i32 0, i32 4
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %44 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %42, %45
  %47 = load i64, i64* @HZ, align 8
  %48 = udiv i64 %46, %47
  store i64 %48, i64* %7, align 8
  %49 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %50 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @INFINITY_LIFE_TIME, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %38
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %57 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp uge i64 %55, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %62 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %61, i32 0, i32 4
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %65 = call i32 @in6_ifa_hold(%struct.inet6_ifaddr* %64)
  %66 = call i32 @read_unlock(i32* @addrconf_hash_lock)
  %67 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %68 = call i32 @ipv6_del_addr(%struct.inet6_ifaddr* %67)
  br label %20

69:                                               ; preds = %54, %38
  %70 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %71 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @INFINITY_LIFE_TIME, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %77 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %76, i32 0, i32 4
  %78 = call i32 @spin_unlock(i32* %77)
  br label %166

79:                                               ; preds = %69
  %80 = load i64, i64* %7, align 8
  %81 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %82 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp uge i64 %80, %83
  br i1 %84, label %85, label %136

85:                                               ; preds = %79
  store i32 0, i32* %8, align 4
  %86 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %87 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @IFA_F_DEPRECATED, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %85
  store i32 1, i32* %8, align 4
  %93 = load i32, i32* @IFA_F_DEPRECATED, align 4
  %94 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %95 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %92, %85
  %99 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %100 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %103 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @HZ, align 8
  %106 = mul i64 %104, %105
  %107 = add i64 %101, %106
  %108 = load i64, i64* %5, align 8
  %109 = call i64 @time_before(i64 %107, i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %98
  %112 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %113 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %116 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @HZ, align 8
  %119 = mul i64 %117, %118
  %120 = add i64 %114, %119
  store i64 %120, i64* %5, align 8
  br label %121

121:                                              ; preds = %111, %98
  %122 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %123 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %122, i32 0, i32 4
  %124 = call i32 @spin_unlock(i32* %123)
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %121
  %128 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %129 = call i32 @in6_ifa_hold(%struct.inet6_ifaddr* %128)
  %130 = call i32 @read_unlock(i32* @addrconf_hash_lock)
  %131 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %132 = call i32 @ipv6_ifa_notify(i32 0, %struct.inet6_ifaddr* %131)
  %133 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %134 = call i32 @in6_ifa_put(%struct.inet6_ifaddr* %133)
  br label %20

135:                                              ; preds = %121
  br label %163

136:                                              ; preds = %79
  %137 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %138 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %141 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @HZ, align 8
  %144 = mul i64 %142, %143
  %145 = add i64 %139, %144
  %146 = load i64, i64* %5, align 8
  %147 = call i64 @time_before(i64 %145, i64 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %136
  %150 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %151 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %154 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @HZ, align 8
  %157 = mul i64 %155, %156
  %158 = add i64 %152, %157
  store i64 %158, i64* %5, align 8
  br label %159

159:                                              ; preds = %149, %136
  %160 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %161 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %160, i32 0, i32 4
  %162 = call i32 @spin_unlock(i32* %161)
  br label %163

163:                                              ; preds = %159, %135
  br label %164

164:                                              ; preds = %163
  br label %165

165:                                              ; preds = %164
  br label %166

166:                                              ; preds = %165, %75, %37
  %167 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %168 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %167, i32 0, i32 8
  %169 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %168, align 8
  store %struct.inet6_ifaddr* %169, %struct.inet6_ifaddr** %3, align 8
  br label %27

170:                                              ; preds = %27
  %171 = call i32 @read_unlock(i32* @addrconf_hash_lock)
  br label %172

172:                                              ; preds = %170
  %173 = load i32, i32* %6, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %6, align 4
  br label %15

175:                                              ; preds = %15
  %176 = load i64, i64* %5, align 8
  %177 = load i64, i64* @jiffies, align 8
  %178 = load i64, i64* @HZ, align 8
  %179 = add i64 %177, %178
  %180 = call i64 @time_before(i64 %176, i64 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %175
  %183 = load i64, i64* @jiffies, align 8
  %184 = load i64, i64* @HZ, align 8
  %185 = add i64 %183, %184
  br label %188

186:                                              ; preds = %175
  %187 = load i64, i64* %5, align 8
  br label %188

188:                                              ; preds = %186, %182
  %189 = phi i64 [ %185, %182 ], [ %187, %186 ]
  store i64 %189, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @addr_chk_timer, i32 0, i32 0), align 8
  %190 = call i32 @add_timer(%struct.TYPE_10__* @addr_chk_timer)
  %191 = call i32 @spin_unlock_bh(i32* @addrconf_verify_lock)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @del_timer(%struct.TYPE_10__*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @in6_ifa_hold(%struct.inet6_ifaddr*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @ipv6_del_addr(%struct.inet6_ifaddr*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @ipv6_ifa_notify(i32, %struct.inet6_ifaddr*) #1

declare dso_local i32 @in6_ifa_put(%struct.inet6_ifaddr*) #1

declare dso_local i32 @add_timer(%struct.TYPE_10__*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

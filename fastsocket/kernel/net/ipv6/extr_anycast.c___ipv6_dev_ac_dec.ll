; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_anycast.c___ipv6_dev_ac_dec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_anycast.c___ipv6_dev_ac_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, %struct.ifacaddr6* }
%struct.ifacaddr6 = type { i64, %struct.TYPE_4__*, i32, %struct.ifacaddr6* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.in6_addr = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ipv6_dev_ac_dec(%struct.inet6_dev* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inet6_dev*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.ifacaddr6*, align 8
  %7 = alloca %struct.ifacaddr6*, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  %8 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %9 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %8, i32 0, i32 0
  %10 = call i32 @write_lock_bh(i32* %9)
  store %struct.ifacaddr6* null, %struct.ifacaddr6** %7, align 8
  %11 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %12 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %11, i32 0, i32 1
  %13 = load %struct.ifacaddr6*, %struct.ifacaddr6** %12, align 8
  store %struct.ifacaddr6* %13, %struct.ifacaddr6** %6, align 8
  br label %14

14:                                               ; preds = %26, %2
  %15 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %16 = icmp ne %struct.ifacaddr6* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %19 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %18, i32 0, i32 2
  %20 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %21 = call i64 @ipv6_addr_equal(i32* %19, %struct.in6_addr* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %30

24:                                               ; preds = %17
  %25 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  store %struct.ifacaddr6* %25, %struct.ifacaddr6** %7, align 8
  br label %26

26:                                               ; preds = %24
  %27 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %28 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %27, i32 0, i32 3
  %29 = load %struct.ifacaddr6*, %struct.ifacaddr6** %28, align 8
  store %struct.ifacaddr6* %29, %struct.ifacaddr6** %6, align 8
  br label %14

30:                                               ; preds = %23, %14
  %31 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %32 = icmp ne %struct.ifacaddr6* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %35 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %34, i32 0, i32 0
  %36 = call i32 @write_unlock_bh(i32* %35)
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %84

39:                                               ; preds = %30
  %40 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %41 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %41, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %47 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %46, i32 0, i32 0
  %48 = call i32 @write_unlock_bh(i32* %47)
  store i32 0, i32* %3, align 4
  br label %84

49:                                               ; preds = %39
  %50 = load %struct.ifacaddr6*, %struct.ifacaddr6** %7, align 8
  %51 = icmp ne %struct.ifacaddr6* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %54 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %53, i32 0, i32 3
  %55 = load %struct.ifacaddr6*, %struct.ifacaddr6** %54, align 8
  %56 = load %struct.ifacaddr6*, %struct.ifacaddr6** %7, align 8
  %57 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %56, i32 0, i32 3
  store %struct.ifacaddr6* %55, %struct.ifacaddr6** %57, align 8
  br label %64

58:                                               ; preds = %49
  %59 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %60 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %59, i32 0, i32 3
  %61 = load %struct.ifacaddr6*, %struct.ifacaddr6** %60, align 8
  %62 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %63 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %62, i32 0, i32 1
  store %struct.ifacaddr6* %61, %struct.ifacaddr6** %63, align 8
  br label %64

64:                                               ; preds = %58, %52
  %65 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %66 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %65, i32 0, i32 0
  %67 = call i32 @write_unlock_bh(i32* %66)
  %68 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %69 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %70 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %69, i32 0, i32 2
  %71 = call i32 @addrconf_leave_solict(%struct.inet6_dev* %68, i32* %70)
  %72 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %73 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = call i32 @dst_hold(i32* %76)
  %78 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %79 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = call i32 @ip6_del_rt(%struct.TYPE_4__* %80)
  %82 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %83 = call i32 @aca_put(%struct.ifacaddr6* %82)
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %64, %45, %33
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i64 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @addrconf_leave_solict(%struct.inet6_dev*, i32*) #1

declare dso_local i32 @dst_hold(i32*) #1

declare dso_local i32 @ip6_del_rt(%struct.TYPE_4__*) #1

declare dso_local i32 @aca_put(%struct.ifacaddr6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

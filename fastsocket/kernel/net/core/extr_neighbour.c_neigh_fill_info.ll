; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_fill_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.neighbour = type { i32, i32, i32, i32, i64, i64, i64, i32, %struct.TYPE_6__*, %struct.nda_cacheinfo*, %struct.TYPE_5__*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.nda_cacheinfo = type { i64, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.ndmsg = type { i32, i32, i32, i32, i64, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@NDA_DST = common dso_local global i32 0, align 4
@NUD_VALID = common dso_local global i32 0, align 4
@NDA_LLADDR = common dso_local global i32 0, align 4
@NDA_PROBES = common dso_local global i32 0, align 4
@NDA_CACHEINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.neighbour*, i32, i32, i32, i32)* @neigh_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neigh_fill_info(%struct.sk_buff* %0, %struct.neighbour* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.neighbour*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.nda_cacheinfo, align 8
  %16 = alloca %struct.nlmsghdr*, align 8
  %17 = alloca %struct.ndmsg*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.neighbour* %1, %struct.neighbour** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i64, i64* @jiffies, align 8
  store i64 %18, i64* %14, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %13, align 4
  %24 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %19, i32 %20, i32 %21, i32 %22, i32 40, i32 %23)
  store %struct.nlmsghdr* %24, %struct.nlmsghdr** %16, align 8
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %26 = icmp eq %struct.nlmsghdr* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load i32, i32* @EMSGSIZE, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %151

30:                                               ; preds = %6
  %31 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %32 = call %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr* %31)
  store %struct.ndmsg* %32, %struct.ndmsg** %17, align 8
  %33 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %34 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %33, i32 0, i32 13
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ndmsg*, %struct.ndmsg** %17, align 8
  %39 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ndmsg*, %struct.ndmsg** %17, align 8
  %41 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load %struct.ndmsg*, %struct.ndmsg** %17, align 8
  %43 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %45 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %44, i32 0, i32 12
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ndmsg*, %struct.ndmsg** %17, align 8
  %48 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %50 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %49, i32 0, i32 11
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ndmsg*, %struct.ndmsg** %17, align 8
  %53 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %55 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %54, i32 0, i32 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ndmsg*, %struct.ndmsg** %17, align 8
  %60 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = load i32, i32* @NDA_DST, align 4
  %63 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %64 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %63, i32 0, i32 10
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %69 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %68, i32 0, i32 9
  %70 = load %struct.nda_cacheinfo*, %struct.nda_cacheinfo** %69, align 8
  %71 = call i32 @NLA_PUT(%struct.sk_buff* %61, i32 %62, i32 %67, %struct.nda_cacheinfo* %70)
  %72 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %73 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %72, i32 0, i32 2
  %74 = call i32 @read_lock_bh(i32* %73)
  %75 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %76 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ndmsg*, %struct.ndmsg** %17, align 8
  %79 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %81 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @NUD_VALID, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %30
  %87 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %88 = load i32, i32* @NDA_LLADDR, align 4
  %89 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %90 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %89, i32 0, i32 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %95 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @nla_put(%struct.sk_buff* %87, i32 %88, i32 %93, i32 %96)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %86
  %100 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %101 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %100, i32 0, i32 2
  %102 = call i32 @read_unlock_bh(i32* %101)
  br label %145

103:                                              ; preds = %86, %30
  %104 = load i64, i64* %14, align 8
  %105 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %106 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %105, i32 0, i32 6
  %107 = load i64, i64* %106, align 8
  %108 = sub i64 %104, %107
  %109 = call i8* @jiffies_to_clock_t(i64 %108)
  %110 = getelementptr inbounds %struct.nda_cacheinfo, %struct.nda_cacheinfo* %15, i32 0, i32 3
  store i8* %109, i8** %110, align 8
  %111 = load i64, i64* %14, align 8
  %112 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %113 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = sub i64 %111, %114
  %116 = call i8* @jiffies_to_clock_t(i64 %115)
  %117 = getelementptr inbounds %struct.nda_cacheinfo, %struct.nda_cacheinfo* %15, i32 0, i32 2
  store i8* %116, i8** %117, align 8
  %118 = load i64, i64* %14, align 8
  %119 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %120 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = sub i64 %118, %121
  %123 = call i8* @jiffies_to_clock_t(i64 %122)
  %124 = getelementptr inbounds %struct.nda_cacheinfo, %struct.nda_cacheinfo* %15, i32 0, i32 1
  store i8* %123, i8** %124, align 8
  %125 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %126 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %125, i32 0, i32 3
  %127 = call i64 @atomic_read(i32* %126)
  %128 = sub nsw i64 %127, 1
  %129 = getelementptr inbounds %struct.nda_cacheinfo, %struct.nda_cacheinfo* %15, i32 0, i32 0
  store i64 %128, i64* %129, align 8
  %130 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %131 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %130, i32 0, i32 2
  %132 = call i32 @read_unlock_bh(i32* %131)
  %133 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %134 = load i32, i32* @NDA_PROBES, align 4
  %135 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %136 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %135, i32 0, i32 1
  %137 = call i64 @atomic_read(i32* %136)
  %138 = call i32 @NLA_PUT_U32(%struct.sk_buff* %133, i32 %134, i64 %137)
  %139 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %140 = load i32, i32* @NDA_CACHEINFO, align 4
  %141 = call i32 @NLA_PUT(%struct.sk_buff* %139, i32 %140, i32 32, %struct.nda_cacheinfo* %15)
  %142 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %143 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %144 = call i32 @nlmsg_end(%struct.sk_buff* %142, %struct.nlmsghdr* %143)
  store i32 %144, i32* %7, align 4
  br label %151

145:                                              ; preds = %99
  %146 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %147 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %148 = call i32 @nlmsg_cancel(%struct.sk_buff* %146, %struct.nlmsghdr* %147)
  %149 = load i32, i32* @EMSGSIZE, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %7, align 4
  br label %151

151:                                              ; preds = %145, %103, %27
  %152 = load i32, i32* %7, align 4
  ret i32 %152
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, %struct.nda_cacheinfo*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i8* @jiffies_to_clock_t(i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

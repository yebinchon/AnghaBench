; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_sf_allow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_sf_allow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_sock = type { i32, i32 }
%struct.ip_mc_socklist = type { i64, %struct.ip_sf_socklist*, %struct.TYPE_4__, i32 }
%struct.ip_sf_socklist = type { i32, i64* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@MCAST_EXCLUDE = common dso_local global i64 0, align 8
@MCAST_INCLUDE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_mc_sf_allow(%struct.sock* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inet_sock*, align 8
  %10 = alloca %struct.ip_mc_socklist*, align 8
  %11 = alloca %struct.ip_sf_socklist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = call %struct.inet_sock* @inet_sk(%struct.sock* %14)
  store %struct.inet_sock* %15, %struct.inet_sock** %9, align 8
  store i32 1, i32* %13, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @ipv4_is_multicast(i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %122

20:                                               ; preds = %4
  %21 = call i32 (...) @rcu_read_lock()
  %22 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %23 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.ip_mc_socklist* @rcu_dereference(i32 %24)
  store %struct.ip_mc_socklist* %25, %struct.ip_mc_socklist** %10, align 8
  br label %26

26:                                               ; preds = %46, %20
  %27 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %10, align 8
  %28 = icmp ne %struct.ip_mc_socklist* %27, null
  br i1 %28, label %29, label %51

29:                                               ; preds = %26
  %30 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %10, align 8
  %31 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %10, align 8
  %39 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %51

45:                                               ; preds = %37, %29
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %10, align 8
  %48 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.ip_mc_socklist* @rcu_dereference(i32 %49)
  store %struct.ip_mc_socklist* %50, %struct.ip_mc_socklist** %10, align 8
  br label %26

51:                                               ; preds = %44, %26
  %52 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %53 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %13, align 4
  %55 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %10, align 8
  %56 = icmp ne %struct.ip_mc_socklist* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  br label %120

58:                                               ; preds = %51
  %59 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %10, align 8
  %60 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %59, i32 0, i32 1
  %61 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %60, align 8
  store %struct.ip_sf_socklist* %61, %struct.ip_sf_socklist** %11, align 8
  %62 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %10, align 8
  %63 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MCAST_EXCLUDE, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %13, align 4
  %68 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %11, align 8
  %69 = icmp ne %struct.ip_sf_socklist* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %58
  br label %120

71:                                               ; preds = %58
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %90, %71
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %11, align 8
  %75 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %72
  %79 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %11, align 8
  %80 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %7, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %93

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %72

93:                                               ; preds = %88, %72
  store i32 0, i32* %13, align 4
  %94 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %10, align 8
  %95 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @MCAST_INCLUDE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %11, align 8
  %102 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp sge i32 %100, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %120

106:                                              ; preds = %99, %93
  %107 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %10, align 8
  %108 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @MCAST_EXCLUDE, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = load i32, i32* %12, align 4
  %114 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %11, align 8
  %115 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %120

119:                                              ; preds = %112, %106
  store i32 1, i32* %13, align 4
  br label %120

120:                                              ; preds = %119, %118, %105, %70, %57
  %121 = call i32 (...) @rcu_read_unlock()
  br label %122

122:                                              ; preds = %120, %19
  %123 = load i32, i32* %13, align 4
  ret i32 %123
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @ipv4_is_multicast(i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ip_mc_socklist* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

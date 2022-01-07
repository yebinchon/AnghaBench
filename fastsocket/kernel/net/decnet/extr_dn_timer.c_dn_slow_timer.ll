; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_timer.c_dn_slow_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_timer.c_dn_slow_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.dn_scp = type { i64, i64, i64, i64, i32 (%struct.sock*)*, i64 (%struct.sock*)* }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@SLOW_INTERVAL = common dso_local global i64 0, align 8
@DN_RUN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @dn_slow_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_slow_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.dn_scp*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.sock*
  store %struct.sock* %6, %struct.sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.dn_scp* @DN_SK(%struct.sock* %7)
  store %struct.dn_scp* %8, %struct.dn_scp** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call i32 @sock_hold(%struct.sock* %9)
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call i32 @bh_lock_sock(%struct.sock* %11)
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call i64 @sock_owned_by_user(%struct.sock* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i32, i32* @HZ, align 4
  %19 = sdiv i32 %18, 10
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i64 %21, i64* %24, align 8
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 0
  %27 = call i32 @add_timer(%struct.TYPE_2__* %26)
  br label %105

28:                                               ; preds = %1
  %29 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %30 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %28
  %34 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %35 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %34, i32 0, i32 5
  %36 = load i64 (%struct.sock*)*, i64 (%struct.sock*)** %35, align 8
  %37 = icmp ne i64 (%struct.sock*)* %36, null
  br i1 %37, label %38, label %62

38:                                               ; preds = %33
  %39 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %40 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SLOW_INTERVAL, align 8
  %43 = icmp sle i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %46 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %48 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %47, i32 0, i32 5
  %49 = load i64 (%struct.sock*)*, i64 (%struct.sock*)** %48, align 8
  %50 = load %struct.sock*, %struct.sock** %3, align 8
  %51 = call i64 %49(%struct.sock* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %105

54:                                               ; preds = %44
  br label %61

55:                                               ; preds = %38
  %56 = load i64, i64* @SLOW_INTERVAL, align 8
  %57 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %58 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %59, %56
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %55, %54
  br label %62

62:                                               ; preds = %61, %33, %28
  %63 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %64 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %95

67:                                               ; preds = %62
  %68 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %69 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %68, i32 0, i32 4
  %70 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %69, align 8
  %71 = icmp ne i32 (%struct.sock*)* %70, null
  br i1 %71, label %72, label %95

72:                                               ; preds = %67
  %73 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %74 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DN_RUN, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %72
  %79 = load i64, i64* @jiffies, align 8
  %80 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %81 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %79, %82
  %84 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %85 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp sge i64 %83, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %78
  %89 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %90 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %89, i32 0, i32 4
  %91 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %90, align 8
  %92 = load %struct.sock*, %struct.sock** %3, align 8
  %93 = call i32 %91(%struct.sock* %92)
  br label %94

94:                                               ; preds = %88, %78
  br label %95

95:                                               ; preds = %94, %72, %67, %62
  %96 = load i64, i64* @jiffies, align 8
  %97 = load i64, i64* @SLOW_INTERVAL, align 8
  %98 = add nsw i64 %96, %97
  %99 = load %struct.sock*, %struct.sock** %3, align 8
  %100 = getelementptr inbounds %struct.sock, %struct.sock* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  store i64 %98, i64* %101, align 8
  %102 = load %struct.sock*, %struct.sock** %3, align 8
  %103 = getelementptr inbounds %struct.sock, %struct.sock* %102, i32 0, i32 0
  %104 = call i32 @add_timer(%struct.TYPE_2__* %103)
  br label %105

105:                                              ; preds = %95, %53, %16
  %106 = load %struct.sock*, %struct.sock** %3, align 8
  %107 = call i32 @bh_unlock_sock(%struct.sock* %106)
  %108 = load %struct.sock*, %struct.sock** %3, align 8
  %109 = call i32 @sock_put(%struct.sock* %108)
  ret void
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

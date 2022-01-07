; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_cong.c_tcp_slow_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_cong.c_tcp_slow_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_sock = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"snd_cwnd is nul, please report this bug.\0A\00", align 1
@sysctl_tcp_abc = common dso_local global i32 0, align 4
@sysctl_tcp_max_ssthresh = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_slow_start(%struct.tcp_sock* %0) #0 {
  %2 = alloca %struct.tcp_sock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tcp_sock* %0, %struct.tcp_sock** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %7 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @pr_err_once(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %17

17:                                               ; preds = %15, %1
  %18 = load i32, i32* @sysctl_tcp_abc, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %22 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %25 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %90

29:                                               ; preds = %20, %17
  %30 = load i32, i32* @sysctl_tcp_max_ssthresh, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %34 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @sysctl_tcp_max_ssthresh, align 4
  %37 = icmp ugt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @sysctl_tcp_max_ssthresh, align 4
  %40 = ashr i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %43

41:                                               ; preds = %32, %29
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i32, i32* @sysctl_tcp_abc, align 4
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %48 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %51 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 2, %52
  %54 = icmp sge i32 %49, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* %3, align 4
  %57 = shl i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %46, %43
  %59 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %60 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %63 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %72, %58
  %67 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %68 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp uge i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %75 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = sub i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* %4, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %66

80:                                               ; preds = %66
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %4, align 4
  %83 = add i32 %81, %82
  %84 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %85 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @min(i32 %83, i32 %86)
  %88 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %89 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %80, %28
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err_once(i8*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

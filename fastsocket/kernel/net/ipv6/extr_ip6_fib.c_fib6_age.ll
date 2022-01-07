; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_age.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_age.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.rt6_info = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@RTF_EXPIRES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"expiring %p\0A\00", align 1
@gc_args = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@RTF_CACHE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"aging clone %p\0A\00", align 1
@RTF_GATEWAY = common dso_local global i32 0, align 4
@NTF_ROUTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"purging route %p via non-router but gateway\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt6_info*, i8*)* @fib6_age to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_age(%struct.rt6_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt6_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.rt6_info* %0, %struct.rt6_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i64, i64* @jiffies, align 8
  store i64 %7, i64* %6, align 8
  %8 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %9 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @RTF_EXPIRES, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %16 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %22 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @time_after(i64 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %28 = call i32 @RT6_TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.rt6_info* %27)
  store i32 -1, i32* %3, align 4
  br label %85

29:                                               ; preds = %19
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gc_args, i32 0, i32 0), align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gc_args, i32 0, i32 0), align 8
  br label %84

32:                                               ; preds = %14, %2
  %33 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %34 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @RTF_CACHE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %83

39:                                               ; preds = %32
  %40 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %41 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = call i64 @atomic_read(i32* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %39
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %49 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gc_args, i32 0, i32 1), align 8
  %54 = add nsw i64 %52, %53
  %55 = call i64 @time_after_eq(i64 %47, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %59 = call i32 @RT6_TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.rt6_info* %58)
  store i32 -1, i32* %3, align 4
  br label %85

60:                                               ; preds = %46, %39
  %61 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %62 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @RTF_GATEWAY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %60
  %68 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %69 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @NTF_ROUTER, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %67
  %77 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %78 = call i32 @RT6_TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), %struct.rt6_info* %77)
  store i32 -1, i32* %3, align 4
  br label %85

79:                                               ; preds = %67, %60
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gc_args, i32 0, i32 0), align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gc_args, i32 0, i32 0), align 8
  br label %83

83:                                               ; preds = %80, %32
  br label %84

84:                                               ; preds = %83, %29
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %76, %57, %26
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i64 @time_after(i64, i32) #1

declare dso_local i32 @RT6_TRACE(i8*, %struct.rt6_info*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_flowlabel.c_ip6_fl_gc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_flowlabel.c_ip6_fl_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_flowlabel = type { i64, i64, i64, %struct.ip6_flowlabel*, i32 }

@jiffies = common dso_local global i64 0, align 8
@ip6_fl_lock = common dso_local global i32 0, align 4
@FL_HASH_MASK = common dso_local global i32 0, align 4
@fl_ht = common dso_local global %struct.ip6_flowlabel** null, align 8
@fl_size = common dso_local global i32 0, align 4
@FL_MAX_LINGER = common dso_local global i64 0, align 8
@ip6_fl_gc_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ip6_fl_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_fl_gc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ip6_flowlabel*, align 8
  %7 = alloca %struct.ip6_flowlabel**, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* @jiffies, align 8
  store i64 %9, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %10 = call i32 @write_lock(i32* @ip6_fl_lock)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %78, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @FL_HASH_MASK, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %81

15:                                               ; preds = %11
  %16 = load %struct.ip6_flowlabel**, %struct.ip6_flowlabel*** @fl_ht, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %16, i64 %18
  store %struct.ip6_flowlabel** %19, %struct.ip6_flowlabel*** %7, align 8
  br label %20

20:                                               ; preds = %74, %55, %15
  %21 = load %struct.ip6_flowlabel**, %struct.ip6_flowlabel*** %7, align 8
  %22 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %21, align 8
  store %struct.ip6_flowlabel* %22, %struct.ip6_flowlabel** %6, align 8
  %23 = icmp ne %struct.ip6_flowlabel* %22, null
  br i1 %23, label %24, label %77

24:                                               ; preds = %20
  %25 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %6, align 8
  %26 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %25, i32 0, i32 4
  %27 = call i64 @atomic_read(i32* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %74

29:                                               ; preds = %24
  %30 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %6, align 8
  %31 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %6, align 8
  %34 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %32, %35
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %6, align 8
  %39 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @time_after(i64 %37, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %29
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %6, align 8
  %46 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %43, %29
  %48 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %6, align 8
  %49 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @time_after_eq(i64 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %6, align 8
  %57 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %56, i32 0, i32 3
  %58 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %57, align 8
  %59 = load %struct.ip6_flowlabel**, %struct.ip6_flowlabel*** %7, align 8
  store %struct.ip6_flowlabel* %58, %struct.ip6_flowlabel** %59, align 8
  %60 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %6, align 8
  %61 = call i32 @fl_free(%struct.ip6_flowlabel* %60)
  %62 = call i32 @atomic_dec(i32* @fl_size)
  br label %20

63:                                               ; preds = %47
  %64 = load i64, i64* %5, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %5, align 8
  %69 = call i64 @time_before(i64 %67, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66, %63
  %72 = load i64, i64* %8, align 8
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %71, %66
  br label %74

74:                                               ; preds = %73, %24
  %75 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %6, align 8
  %76 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %75, i32 0, i32 3
  store %struct.ip6_flowlabel** %76, %struct.ip6_flowlabel*** %7, align 8
  br label %20

77:                                               ; preds = %20
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %11

81:                                               ; preds = %11
  %82 = load i64, i64* %5, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %81
  %85 = call i64 @atomic_read(i32* @fl_size)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i64, i64* %4, align 8
  %89 = load i64, i64* @FL_MAX_LINGER, align 8
  %90 = add i64 %88, %89
  store i64 %90, i64* %5, align 8
  br label %91

91:                                               ; preds = %87, %84, %81
  %92 = load i64, i64* %5, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i64, i64* %5, align 8
  %96 = call i32 @mod_timer(i32* @ip6_fl_gc_timer, i64 %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = call i32 @write_unlock(i32* @ip6_fl_lock)
  ret void
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @fl_free(%struct.ip6_flowlabel*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

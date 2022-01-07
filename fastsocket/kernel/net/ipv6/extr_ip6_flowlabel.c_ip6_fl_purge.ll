; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_flowlabel.c_ip6_fl_purge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_flowlabel.c_ip6_fl_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_flowlabel = type { %struct.ip6_flowlabel*, i32, %struct.net* }
%struct.net = type { i32 }

@ip6_fl_lock = common dso_local global i32 0, align 4
@FL_HASH_MASK = common dso_local global i32 0, align 4
@fl_ht = common dso_local global %struct.ip6_flowlabel** null, align 8
@fl_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*)* @ip6_fl_purge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_fl_purge(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip6_flowlabel*, align 8
  %5 = alloca %struct.ip6_flowlabel**, align 8
  store %struct.net* %0, %struct.net** %2, align 8
  %6 = call i32 @write_lock(i32* @ip6_fl_lock)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %43, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @FL_HASH_MASK, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %46

11:                                               ; preds = %7
  %12 = load %struct.ip6_flowlabel**, %struct.ip6_flowlabel*** @fl_ht, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %12, i64 %14
  store %struct.ip6_flowlabel** %15, %struct.ip6_flowlabel*** %5, align 8
  br label %16

16:                                               ; preds = %39, %31, %11
  %17 = load %struct.ip6_flowlabel**, %struct.ip6_flowlabel*** %5, align 8
  %18 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %17, align 8
  store %struct.ip6_flowlabel* %18, %struct.ip6_flowlabel** %4, align 8
  %19 = icmp ne %struct.ip6_flowlabel* %18, null
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %4, align 8
  %22 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %21, i32 0, i32 2
  %23 = load %struct.net*, %struct.net** %22, align 8
  %24 = load %struct.net*, %struct.net** %2, align 8
  %25 = icmp eq %struct.net* %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %4, align 8
  %28 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %27, i32 0, i32 1
  %29 = call i64 @atomic_read(i32* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %4, align 8
  %33 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %32, i32 0, i32 0
  %34 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %33, align 8
  %35 = load %struct.ip6_flowlabel**, %struct.ip6_flowlabel*** %5, align 8
  store %struct.ip6_flowlabel* %34, %struct.ip6_flowlabel** %35, align 8
  %36 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %4, align 8
  %37 = call i32 @fl_free(%struct.ip6_flowlabel* %36)
  %38 = call i32 @atomic_dec(i32* @fl_size)
  br label %16

39:                                               ; preds = %26, %20
  %40 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %4, align 8
  %41 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %40, i32 0, i32 0
  store %struct.ip6_flowlabel** %41, %struct.ip6_flowlabel*** %5, align 8
  br label %16

42:                                               ; preds = %16
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %7

46:                                               ; preds = %7
  %47 = call i32 @write_unlock(i32* @ip6_fl_lock)
  ret void
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @fl_free(%struct.ip6_flowlabel*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

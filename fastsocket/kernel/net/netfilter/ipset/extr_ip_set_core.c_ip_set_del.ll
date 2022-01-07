; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_ip_set_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_ip_set_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.ip_set*, %struct.sk_buff*, i32, i64, i64, i64)* }
%struct.sk_buff = type { i32 }
%struct.TYPE_3__ = type { i64 }

@ip_set_list = common dso_local global %struct.ip_set** null, align 8
@.str = private unnamed_addr constant [18 x i8] c"set %s, index %u\0A\00", align 1
@AF_UNSPEC = common dso_local global i64 0, align 8
@IPSET_DEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_set_del(i64 %0, %struct.sk_buff* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ip_set*, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.ip_set**, %struct.ip_set*** @ip_set_list, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %struct.ip_set*, %struct.ip_set** %14, i64 %15
  %17 = load %struct.ip_set*, %struct.ip_set** %16, align 8
  store %struct.ip_set* %17, %struct.ip_set** %12, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.ip_set*, %struct.ip_set** %12, align 8
  %19 = icmp eq %struct.ip_set* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.ip_set*, %struct.ip_set** %12, align 8
  %23 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %25)
  %27 = load i64, i64* %10, align 8
  %28 = load %struct.ip_set*, %struct.ip_set** %12, align 8
  %29 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %28, i32 0, i32 3
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %27, %32
  br i1 %33, label %46, label %34

34:                                               ; preds = %5
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.ip_set*, %struct.ip_set** %12, align 8
  %37 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %34
  %41 = load %struct.ip_set*, %struct.ip_set** %12, align 8
  %42 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AF_UNSPEC, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %47, label %46

46:                                               ; preds = %40, %5
  store i32 0, i32* %6, align 4
  br label %67

47:                                               ; preds = %40, %34
  %48 = load %struct.ip_set*, %struct.ip_set** %12, align 8
  %49 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %48, i32 0, i32 1
  %50 = call i32 @write_lock_bh(i32* %49)
  %51 = load %struct.ip_set*, %struct.ip_set** %12, align 8
  %52 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32 (%struct.ip_set*, %struct.sk_buff*, i32, i64, i64, i64)*, i32 (%struct.ip_set*, %struct.sk_buff*, i32, i64, i64, i64)** %54, align 8
  %56 = load %struct.ip_set*, %struct.ip_set** %12, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = load i32, i32* @IPSET_DEL, align 4
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %11, align 8
  %62 = call i32 %55(%struct.ip_set* %56, %struct.sk_buff* %57, i32 %58, i64 %59, i64 %60, i64 %61)
  store i32 %62, i32* %13, align 4
  %63 = load %struct.ip_set*, %struct.ip_set** %12, align 8
  %64 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %63, i32 0, i32 1
  %65 = call i32 @write_unlock_bh(i32* %64)
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %47, %46
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i64) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

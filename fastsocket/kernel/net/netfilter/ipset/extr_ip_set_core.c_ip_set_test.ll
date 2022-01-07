; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_ip_set_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_ip_set_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.ip_set*, %struct.sk_buff*, i32, i64, i64, i64)* }
%struct.sk_buff = type { i32 }
%struct.TYPE_3__ = type { i64 }

@ip_set_list = common dso_local global %struct.ip_set** null, align 8
@.str = private unnamed_addr constant [18 x i8] c"set %s, index %u\0A\00", align 1
@AF_UNSPEC = common dso_local global i64 0, align 8
@IPSET_TEST = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"element must be competed, ADD is triggered\0A\00", align 1
@IPSET_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_set_test(i64 %0, %struct.sk_buff* %1, i64 %2, i64 %3, i64 %4) #0 {
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
  %26 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %25)
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
  br label %98

47:                                               ; preds = %40, %34
  %48 = load %struct.ip_set*, %struct.ip_set** %12, align 8
  %49 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %48, i32 0, i32 1
  %50 = call i32 @read_lock_bh(i32* %49)
  %51 = load %struct.ip_set*, %struct.ip_set** %12, align 8
  %52 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32 (%struct.ip_set*, %struct.sk_buff*, i32, i64, i64, i64)*, i32 (%struct.ip_set*, %struct.sk_buff*, i32, i64, i64, i64)** %54, align 8
  %56 = load %struct.ip_set*, %struct.ip_set** %12, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = load i32, i32* @IPSET_TEST, align 4
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %11, align 8
  %62 = call i32 %55(%struct.ip_set* %56, %struct.sk_buff* %57, i32 %58, i64 %59, i64 %60, i64 %61)
  store i32 %62, i32* %13, align 4
  %63 = load %struct.ip_set*, %struct.ip_set** %12, align 8
  %64 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %63, i32 0, i32 1
  %65 = call i32 @read_unlock_bh(i32* %64)
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @EAGAIN, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %47
  %71 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.ip_set*, %struct.ip_set** %12, align 8
  %73 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %72, i32 0, i32 1
  %74 = call i32 @write_lock_bh(i32* %73)
  %75 = load %struct.ip_set*, %struct.ip_set** %12, align 8
  %76 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32 (%struct.ip_set*, %struct.sk_buff*, i32, i64, i64, i64)*, i32 (%struct.ip_set*, %struct.sk_buff*, i32, i64, i64, i64)** %78, align 8
  %80 = load %struct.ip_set*, %struct.ip_set** %12, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %82 = load i32, i32* @IPSET_ADD, align 4
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* %11, align 8
  %86 = call i32 %79(%struct.ip_set* %80, %struct.sk_buff* %81, i32 %82, i64 %83, i64 %84, i64 %85)
  %87 = load %struct.ip_set*, %struct.ip_set** %12, align 8
  %88 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %87, i32 0, i32 1
  %89 = call i32 @write_unlock_bh(i32* %88)
  store i32 1, i32* %13, align 4
  br label %90

90:                                               ; preds = %70, %47
  %91 = load i32, i32* %13, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %96

94:                                               ; preds = %90
  %95 = load i32, i32* %13, align 4
  br label %96

96:                                               ; preds = %94, %93
  %97 = phi i32 [ 0, %93 ], [ %95, %94 ]
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %96, %46
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

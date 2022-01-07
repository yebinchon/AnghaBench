; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_ip_set_get_byname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_ip_set_get_byname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i32 }

@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@ip_set_max = common dso_local global i64 0, align 8
@ip_set_list = common dso_local global %struct.ip_set** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ip_set_get_byname(i8* %0, %struct.ip_set** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ip_set**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ip_set*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ip_set** %1, %struct.ip_set*** %4, align 8
  %8 = load i64, i64* @IPSET_INVALID_ID, align 8
  store i64 %8, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %34, %2
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @ip_set_max, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = load %struct.ip_set**, %struct.ip_set*** @ip_set_list, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds %struct.ip_set*, %struct.ip_set** %14, i64 %15
  %17 = load %struct.ip_set*, %struct.ip_set** %16, align 8
  store %struct.ip_set* %17, %struct.ip_set** %7, align 8
  %18 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %19 = icmp ne %struct.ip_set* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %13
  %21 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %22 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @STREQ(i32 %23, i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @__ip_set_get(i64 %28)
  %30 = load i64, i64* %5, align 8
  store i64 %30, i64* %6, align 8
  %31 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %32 = load %struct.ip_set**, %struct.ip_set*** %4, align 8
  store %struct.ip_set* %31, %struct.ip_set** %32, align 8
  br label %33

33:                                               ; preds = %27, %20, %13
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %5, align 8
  br label %9

37:                                               ; preds = %9
  %38 = load i64, i64* %6, align 8
  ret i64 %38
}

declare dso_local i64 @STREQ(i32, i8*) #1

declare dso_local i32 @__ip_set_get(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

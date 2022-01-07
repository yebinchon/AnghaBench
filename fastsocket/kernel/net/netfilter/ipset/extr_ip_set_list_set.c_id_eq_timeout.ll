; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_list_set.c_id_eq_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_list_set.c_id_eq_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_set = type { i64, i32 }
%struct.set_elem = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_set*, i64, i64)* @id_eq_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @id_eq_timeout(%struct.list_set* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.list_set*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.set_elem*, align 8
  store %struct.list_set* %0, %struct.list_set** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.list_set*, %struct.list_set** %5, align 8
  %11 = getelementptr inbounds %struct.list_set, %struct.list_set* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %9, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %3
  %15 = load %struct.list_set*, %struct.list_set** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call %struct.set_elem* @list_set_elem(%struct.list_set* %15, i64 %16)
  store %struct.set_elem* %17, %struct.set_elem** %8, align 8
  %18 = load %struct.set_elem*, %struct.set_elem** %8, align 8
  %19 = getelementptr inbounds %struct.set_elem, %struct.set_elem* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %14
  %24 = load %struct.list_set*, %struct.list_set** %5, align 8
  %25 = getelementptr inbounds %struct.list_set, %struct.list_set* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @with_timeout(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.list_set*, %struct.list_set** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @list_set_expired(%struct.list_set* %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %23
  %35 = phi i1 [ false, %23 ], [ %33, %29 ]
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %34, %14
  %38 = phi i1 [ false, %14 ], [ %36, %34 ]
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %4, align 4
  br label %43

42:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %37
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.set_elem* @list_set_elem(%struct.list_set*, i64) #1

declare dso_local i64 @with_timeout(i32) #1

declare dso_local i64 @list_set_expired(%struct.list_set*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

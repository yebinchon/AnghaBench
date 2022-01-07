; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_list_set.c_list_set_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_list_set.c_list_set_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_set = type { i32, i32 }
%struct.set_elem = type { i64 }
%struct.set_telem = type { i32 }

@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_set*, i32)* @list_set_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_set_del(%struct.list_set* %0, i32 %1) #0 {
  %3 = alloca %struct.list_set*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.set_elem*, align 8
  %6 = alloca %struct.set_elem*, align 8
  store %struct.list_set* %0, %struct.list_set** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.list_set*, %struct.list_set** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.set_elem* @list_set_elem(%struct.list_set* %7, i32 %8)
  store %struct.set_elem* %9, %struct.set_elem** %5, align 8
  %10 = load %struct.set_elem*, %struct.set_elem** %5, align 8
  %11 = getelementptr inbounds %struct.set_elem, %struct.set_elem* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @ip_set_put_byindex(i64 %12)
  br label %14

14:                                               ; preds = %53, %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.list_set*, %struct.list_set** %3, align 8
  %17 = getelementptr inbounds %struct.list_set, %struct.list_set* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %56

21:                                               ; preds = %14
  %22 = load %struct.list_set*, %struct.list_set** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  %25 = call %struct.set_elem* @list_set_elem(%struct.list_set* %22, i32 %24)
  store %struct.set_elem* %25, %struct.set_elem** %6, align 8
  %26 = load %struct.set_elem*, %struct.set_elem** %6, align 8
  %27 = getelementptr inbounds %struct.set_elem, %struct.set_elem* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.set_elem*, %struct.set_elem** %5, align 8
  %30 = getelementptr inbounds %struct.set_elem, %struct.set_elem* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.list_set*, %struct.list_set** %3, align 8
  %32 = getelementptr inbounds %struct.list_set, %struct.list_set* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @with_timeout(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %21
  %37 = load %struct.set_elem*, %struct.set_elem** %6, align 8
  %38 = bitcast %struct.set_elem* %37 to %struct.set_telem*
  %39 = getelementptr inbounds %struct.set_telem, %struct.set_telem* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.set_elem*, %struct.set_elem** %5, align 8
  %42 = bitcast %struct.set_elem* %41 to %struct.set_telem*
  %43 = getelementptr inbounds %struct.set_telem, %struct.set_telem* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  br label %44

44:                                               ; preds = %36, %21
  %45 = load %struct.set_elem*, %struct.set_elem** %6, align 8
  store %struct.set_elem* %45, %struct.set_elem** %5, align 8
  %46 = load %struct.set_elem*, %struct.set_elem** %5, align 8
  %47 = getelementptr inbounds %struct.set_elem, %struct.set_elem* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IPSET_INVALID_ID, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %56

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %14

56:                                               ; preds = %51, %14
  %57 = load i64, i64* @IPSET_INVALID_ID, align 8
  %58 = load %struct.set_elem*, %struct.set_elem** %5, align 8
  %59 = getelementptr inbounds %struct.set_elem, %struct.set_elem* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  ret i32 0
}

declare dso_local %struct.set_elem* @list_set_elem(%struct.list_set*, i32) #1

declare dso_local i32 @ip_set_put_byindex(i64) #1

declare dso_local i64 @with_timeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_find_free_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_find_free_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i32 }

@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@ip_set_max = common dso_local global i64 0, align 8
@ip_set_list = common dso_local global %struct.ip_set** null, align 8
@EEXIST = common dso_local global i32 0, align 4
@IPSET_ERR_MAX_SETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, %struct.ip_set**)* @find_free_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_free_id(i8* %0, i64* %1, %struct.ip_set** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.ip_set**, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.ip_set** %2, %struct.ip_set*** %7, align 8
  %9 = load i64, i64* @IPSET_INVALID_ID, align 8
  %10 = load i64*, i64** %6, align 8
  store i64 %9, i64* %10, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %50, %3
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @ip_set_max, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %53

15:                                               ; preds = %11
  %16 = load %struct.ip_set**, %struct.ip_set*** @ip_set_list, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds %struct.ip_set*, %struct.ip_set** %16, i64 %17
  %19 = load %struct.ip_set*, %struct.ip_set** %18, align 8
  %20 = icmp eq %struct.ip_set* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load i64*, i64** %6, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IPSET_INVALID_ID, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i64, i64* %8, align 8
  %28 = load i64*, i64** %6, align 8
  store i64 %27, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %21
  br label %49

30:                                               ; preds = %15
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.ip_set**, %struct.ip_set*** @ip_set_list, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds %struct.ip_set*, %struct.ip_set** %32, i64 %33
  %35 = load %struct.ip_set*, %struct.ip_set** %34, align 8
  %36 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @STREQ(i8* %31, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = load %struct.ip_set**, %struct.ip_set*** @ip_set_list, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %struct.ip_set*, %struct.ip_set** %41, i64 %42
  %44 = load %struct.ip_set*, %struct.ip_set** %43, align 8
  %45 = load %struct.ip_set**, %struct.ip_set*** %7, align 8
  store %struct.ip_set* %44, %struct.ip_set** %45, align 8
  %46 = load i32, i32* @EEXIST, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %62

48:                                               ; preds = %30
  br label %49

49:                                               ; preds = %48, %29
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %8, align 8
  br label %11

53:                                               ; preds = %11
  %54 = load i64*, i64** %6, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IPSET_INVALID_ID, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @IPSET_ERR_MAX_SETS, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %62

61:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %58, %40
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @STREQ(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

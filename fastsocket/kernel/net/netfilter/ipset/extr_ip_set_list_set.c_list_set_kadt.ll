; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_list_set.c_list_set_kadt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_list_set.c_list_set_kadt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { %struct.list_set* }
%struct.list_set = type { i64, i32 }
%struct.sk_buff = type { i32 }
%struct.set_elem = type { i64 }

@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, %struct.sk_buff*, i32, i32, i32, i32)* @list_set_kadt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_set_kadt(%struct.ip_set* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ip_set*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.list_set*, align 8
  %15 = alloca %struct.set_elem*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.ip_set* %0, %struct.ip_set** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %19 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %18, i32 0, i32 0
  %20 = load %struct.list_set*, %struct.list_set** %19, align 8
  store %struct.list_set* %20, %struct.list_set** %14, align 8
  store i64 0, i64* %16, align 8
  br label %21

21:                                               ; preds = %95, %6
  %22 = load i64, i64* %16, align 8
  %23 = load %struct.list_set*, %struct.list_set** %14, align 8
  %24 = getelementptr inbounds %struct.list_set, %struct.list_set* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %27, label %98

27:                                               ; preds = %21
  %28 = load %struct.list_set*, %struct.list_set** %14, align 8
  %29 = load i64, i64* %16, align 8
  %30 = call %struct.set_elem* @list_set_elem(%struct.list_set* %28, i64 %29)
  store %struct.set_elem* %30, %struct.set_elem** %15, align 8
  %31 = load %struct.set_elem*, %struct.set_elem** %15, align 8
  %32 = getelementptr inbounds %struct.set_elem, %struct.set_elem* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IPSET_INVALID_ID, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %101

37:                                               ; preds = %27
  %38 = load %struct.list_set*, %struct.list_set** %14, align 8
  %39 = getelementptr inbounds %struct.list_set, %struct.list_set* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @with_timeout(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.list_set*, %struct.list_set** %14, align 8
  %45 = load i64, i64* %16, align 8
  %46 = call i64 @list_set_expired(%struct.list_set* %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %95

49:                                               ; preds = %43, %37
  %50 = load i32, i32* %10, align 4
  switch i32 %50, label %93 [
    i32 128, label %51
    i32 130, label %65
    i32 129, label %79
  ]

51:                                               ; preds = %49
  %52 = load %struct.set_elem*, %struct.set_elem** %15, align 8
  %53 = getelementptr inbounds %struct.set_elem, %struct.set_elem* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @ip_set_test(i64 %54, %struct.sk_buff* %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %17, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = load i32, i32* %17, align 4
  store i32 %63, i32* %7, align 4
  br label %101

64:                                               ; preds = %51
  br label %94

65:                                               ; preds = %49
  %66 = load %struct.set_elem*, %struct.set_elem** %15, align 8
  %67 = getelementptr inbounds %struct.set_elem, %struct.set_elem* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @ip_set_add(i64 %68, %struct.sk_buff* %69, i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %17, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = load i32, i32* %17, align 4
  store i32 %77, i32* %7, align 4
  br label %101

78:                                               ; preds = %65
  br label %94

79:                                               ; preds = %49
  %80 = load %struct.set_elem*, %struct.set_elem** %15, align 8
  %81 = getelementptr inbounds %struct.set_elem, %struct.set_elem* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @ip_set_del(i64 %82, %struct.sk_buff* %83, i32 %84, i32 %85, i32 %86)
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %17, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %79
  %91 = load i32, i32* %17, align 4
  store i32 %91, i32* %7, align 4
  br label %101

92:                                               ; preds = %79
  br label %94

93:                                               ; preds = %49
  br label %94

94:                                               ; preds = %93, %92, %78, %64
  br label %95

95:                                               ; preds = %94, %48
  %96 = load i64, i64* %16, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %16, align 8
  br label %21

98:                                               ; preds = %21
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %98, %90, %76, %62, %36
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local %struct.set_elem* @list_set_elem(%struct.list_set*, i64) #1

declare dso_local i64 @with_timeout(i32) #1

declare dso_local i64 @list_set_expired(%struct.list_set*, i64) #1

declare dso_local i32 @ip_set_test(i64, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @ip_set_add(i64, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @ip_set_del(i64, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

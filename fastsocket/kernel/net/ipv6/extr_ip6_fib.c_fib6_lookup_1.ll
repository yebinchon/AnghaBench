; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_lookup_1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_lookup_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_node = type { i32, %struct.fib6_node*, %struct.fib6_node*, i64, %struct.fib6_node*, %struct.fib6_node*, i32 }
%struct.lookup_args = type { i64, i32 }
%struct.rt6key = type { i32, i32 }

@RTN_RTINFO = common dso_local global i32 0, align 4
@RTN_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fib6_node* (%struct.fib6_node*, %struct.lookup_args*)* @fib6_lookup_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fib6_node* @fib6_lookup_1(%struct.fib6_node* %0, %struct.lookup_args* %1) #0 {
  %3 = alloca %struct.fib6_node*, align 8
  %4 = alloca %struct.fib6_node*, align 8
  %5 = alloca %struct.lookup_args*, align 8
  %6 = alloca %struct.fib6_node*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fib6_node*, align 8
  %9 = alloca %struct.rt6key*, align 8
  store %struct.fib6_node* %0, %struct.fib6_node** %4, align 8
  store %struct.lookup_args* %1, %struct.lookup_args** %5, align 8
  %10 = load %struct.lookup_args*, %struct.lookup_args** %5, align 8
  %11 = getelementptr inbounds %struct.lookup_args, %struct.lookup_args* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.fib6_node* null, %struct.fib6_node** %3, align 8
  br label %107

18:                                               ; preds = %2
  %19 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  store %struct.fib6_node* %19, %struct.fib6_node** %6, align 8
  br label %20

20:                                               ; preds = %42, %18
  %21 = load %struct.lookup_args*, %struct.lookup_args** %5, align 8
  %22 = getelementptr inbounds %struct.lookup_args, %struct.lookup_args* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  %25 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @addr_bit_set(i32 %23, i32 %26)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  %32 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %31, i32 0, i32 5
  %33 = load %struct.fib6_node*, %struct.fib6_node** %32, align 8
  br label %38

34:                                               ; preds = %20
  %35 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  %36 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %35, i32 0, i32 4
  %37 = load %struct.fib6_node*, %struct.fib6_node** %36, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi %struct.fib6_node* [ %33, %30 ], [ %37, %34 ]
  store %struct.fib6_node* %39, %struct.fib6_node** %8, align 8
  %40 = load %struct.fib6_node*, %struct.fib6_node** %8, align 8
  %41 = icmp ne %struct.fib6_node* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load %struct.fib6_node*, %struct.fib6_node** %8, align 8
  store %struct.fib6_node* %43, %struct.fib6_node** %6, align 8
  br label %20

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %102, %45
  %47 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  %48 = icmp ne %struct.fib6_node* %47, null
  br i1 %48, label %49, label %106

49:                                               ; preds = %46
  %50 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  %51 = call i64 @FIB6_SUBTREE(%struct.fib6_node* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %49
  %54 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  %55 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @RTN_RTINFO, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %94

60:                                               ; preds = %53, %49
  %61 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  %62 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i32*
  %65 = load %struct.lookup_args*, %struct.lookup_args** %5, align 8
  %66 = getelementptr inbounds %struct.lookup_args, %struct.lookup_args* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = bitcast i32* %68 to %struct.rt6key*
  store %struct.rt6key* %69, %struct.rt6key** %9, align 8
  %70 = load %struct.rt6key*, %struct.rt6key** %9, align 8
  %71 = getelementptr inbounds %struct.rt6key, %struct.rt6key* %70, i32 0, i32 1
  %72 = load %struct.lookup_args*, %struct.lookup_args** %5, align 8
  %73 = getelementptr inbounds %struct.lookup_args, %struct.lookup_args* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.rt6key*, %struct.rt6key** %9, align 8
  %76 = getelementptr inbounds %struct.rt6key, %struct.rt6key* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @ipv6_prefix_equal(i32* %71, i32 %74, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %60
  %81 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  %82 = icmp ne %struct.fib6_node* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  %85 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @RTN_RTINFO, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83, %80
  %91 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  store %struct.fib6_node* %91, %struct.fib6_node** %3, align 8
  br label %107

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %60
  br label %94

94:                                               ; preds = %93, %53
  %95 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  %96 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @RTN_ROOT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %106

102:                                              ; preds = %94
  %103 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  %104 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %103, i32 0, i32 1
  %105 = load %struct.fib6_node*, %struct.fib6_node** %104, align 8
  store %struct.fib6_node* %105, %struct.fib6_node** %6, align 8
  br label %46

106:                                              ; preds = %101, %46
  store %struct.fib6_node* null, %struct.fib6_node** %3, align 8
  br label %107

107:                                              ; preds = %106, %90, %17
  %108 = load %struct.fib6_node*, %struct.fib6_node** %3, align 8
  ret %struct.fib6_node* %108
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @addr_bit_set(i32, i32) #1

declare dso_local i64 @FIB6_SUBTREE(%struct.fib6_node*) #1

declare dso_local i64 @ipv6_prefix_equal(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

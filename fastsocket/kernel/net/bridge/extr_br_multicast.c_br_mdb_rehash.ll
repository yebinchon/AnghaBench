; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_mdb_rehash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_mdb_rehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_mdb_htable = type { i32, i32, i32, %struct.net_bridge_mdb_htable*, i32, i32, %struct.net_bridge_mdb_htable* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@br_mdb_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge_mdb_htable**, i32, i32)* @br_mdb_rehash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_mdb_rehash(%struct.net_bridge_mdb_htable** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_bridge_mdb_htable**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_bridge_mdb_htable*, align 8
  %9 = alloca %struct.net_bridge_mdb_htable*, align 8
  %10 = alloca i32, align 4
  store %struct.net_bridge_mdb_htable** %0, %struct.net_bridge_mdb_htable*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_bridge_mdb_htable**, %struct.net_bridge_mdb_htable*** %5, align 8
  %12 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %11, align 8
  store %struct.net_bridge_mdb_htable* %12, %struct.net_bridge_mdb_htable** %8, align 8
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.net_bridge_mdb_htable* @kmalloc(i32 40, i32 %13)
  store %struct.net_bridge_mdb_htable* %14, %struct.net_bridge_mdb_htable** %9, align 8
  %15 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %9, align 8
  %16 = icmp ne %struct.net_bridge_mdb_htable* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %112

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %9, align 8
  %23 = getelementptr inbounds %struct.net_bridge_mdb_htable, %struct.net_bridge_mdb_htable* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %8, align 8
  %25 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %9, align 8
  %26 = getelementptr inbounds %struct.net_bridge_mdb_htable, %struct.net_bridge_mdb_htable* %25, i32 0, i32 6
  store %struct.net_bridge_mdb_htable* %24, %struct.net_bridge_mdb_htable** %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 40
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call %struct.net_bridge_mdb_htable* @kzalloc(i32 %30, i32 %31)
  %33 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %9, align 8
  %34 = getelementptr inbounds %struct.net_bridge_mdb_htable, %struct.net_bridge_mdb_htable* %33, i32 0, i32 3
  store %struct.net_bridge_mdb_htable* %32, %struct.net_bridge_mdb_htable** %34, align 8
  %35 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %9, align 8
  %36 = getelementptr inbounds %struct.net_bridge_mdb_htable, %struct.net_bridge_mdb_htable* %35, i32 0, i32 3
  %37 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %36, align 8
  %38 = icmp ne %struct.net_bridge_mdb_htable* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %20
  %40 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %9, align 8
  %41 = call i32 @kfree(%struct.net_bridge_mdb_htable* %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %112

44:                                               ; preds = %20
  %45 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %8, align 8
  %46 = icmp ne %struct.net_bridge_mdb_htable* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %8, align 8
  %49 = getelementptr inbounds %struct.net_bridge_mdb_htable, %struct.net_bridge_mdb_htable* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  br label %52

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %47
  %53 = phi i32 [ %50, %47 ], [ 0, %51 ]
  %54 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %9, align 8
  %55 = getelementptr inbounds %struct.net_bridge_mdb_htable, %struct.net_bridge_mdb_htable* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %8, align 8
  %57 = icmp ne %struct.net_bridge_mdb_htable* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %8, align 8
  %60 = getelementptr inbounds %struct.net_bridge_mdb_htable, %struct.net_bridge_mdb_htable* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = xor i32 %61, 1
  br label %64

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %58
  %65 = phi i32 [ %62, %58 ], [ 0, %63 ]
  %66 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %9, align 8
  %67 = getelementptr inbounds %struct.net_bridge_mdb_htable, %struct.net_bridge_mdb_htable* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %8, align 8
  %69 = icmp ne %struct.net_bridge_mdb_htable* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70, %64
  %74 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %9, align 8
  %75 = getelementptr inbounds %struct.net_bridge_mdb_htable, %struct.net_bridge_mdb_htable* %74, i32 0, i32 4
  %76 = call i32 @get_random_bytes(i32* %75, i32 4)
  br label %83

77:                                               ; preds = %70
  %78 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %8, align 8
  %79 = getelementptr inbounds %struct.net_bridge_mdb_htable, %struct.net_bridge_mdb_htable* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %9, align 8
  %82 = getelementptr inbounds %struct.net_bridge_mdb_htable, %struct.net_bridge_mdb_htable* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %77, %73
  %84 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %8, align 8
  %85 = icmp ne %struct.net_bridge_mdb_htable* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  br label %107

87:                                               ; preds = %83
  %88 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %9, align 8
  %89 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %8, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @br_mdb_copy(%struct.net_bridge_mdb_htable* %88, %struct.net_bridge_mdb_htable* %89, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %87
  %95 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %9, align 8
  %96 = getelementptr inbounds %struct.net_bridge_mdb_htable, %struct.net_bridge_mdb_htable* %95, i32 0, i32 3
  %97 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %96, align 8
  %98 = call i32 @kfree(%struct.net_bridge_mdb_htable* %97)
  %99 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %9, align 8
  %100 = call i32 @kfree(%struct.net_bridge_mdb_htable* %99)
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %4, align 4
  br label %112

102:                                              ; preds = %87
  %103 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %9, align 8
  %104 = getelementptr inbounds %struct.net_bridge_mdb_htable, %struct.net_bridge_mdb_htable* %103, i32 0, i32 2
  %105 = load i32, i32* @br_mdb_free, align 4
  %106 = call i32 @call_rcu_bh(i32* %104, i32 %105)
  br label %107

107:                                              ; preds = %102, %86
  %108 = load %struct.net_bridge_mdb_htable**, %struct.net_bridge_mdb_htable*** %5, align 8
  %109 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %108, align 8
  %110 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %9, align 8
  %111 = call i32 @rcu_assign_pointer(%struct.net_bridge_mdb_htable* %109, %struct.net_bridge_mdb_htable* %110)
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %107, %94, %39, %17
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.net_bridge_mdb_htable* @kmalloc(i32, i32) #1

declare dso_local %struct.net_bridge_mdb_htable* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.net_bridge_mdb_htable*) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @br_mdb_copy(%struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable*, i32) #1

declare dso_local i32 @call_rcu_bh(i32*, i32) #1

declare dso_local i32 @rcu_assign_pointer(%struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

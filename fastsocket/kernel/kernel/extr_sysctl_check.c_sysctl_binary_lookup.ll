; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sysctl_check.c_sysctl_binary_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sysctl_check.c_sysctl_binary_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trans_ctl_table = type { i64, %struct.trans_ctl_table*, i64 }
%struct.ctl_table = type { i64, i64 }

@trans_root_table = common dso_local global %struct.trans_ctl_table* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.trans_ctl_table* (%struct.ctl_table*)* @sysctl_binary_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.trans_ctl_table* @sysctl_binary_lookup(%struct.ctl_table* %0) #0 {
  %2 = alloca %struct.ctl_table*, align 8
  %3 = alloca %struct.ctl_table*, align 8
  %4 = alloca %struct.trans_ctl_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ctl_table* %0, %struct.ctl_table** %2, align 8
  %7 = load %struct.ctl_table*, %struct.ctl_table** %2, align 8
  %8 = call i32 @sysctl_depth(%struct.ctl_table* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.trans_ctl_table*, %struct.trans_ctl_table** @trans_root_table, align 8
  store %struct.trans_ctl_table* %9, %struct.trans_ctl_table** %4, align 8
  br label %10

10:                                               ; preds = %102, %1
  %11 = load %struct.ctl_table*, %struct.ctl_table** %2, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.ctl_table* @sysctl_parent(%struct.ctl_table* %11, i32 %12)
  store %struct.ctl_table* %13, %struct.ctl_table** %3, align 8
  br label %14

14:                                               ; preds = %110, %10
  %15 = load %struct.trans_ctl_table*, %struct.trans_ctl_table** %4, align 8
  %16 = getelementptr inbounds %struct.trans_ctl_table, %struct.trans_ctl_table* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = load %struct.trans_ctl_table*, %struct.trans_ctl_table** %4, align 8
  %21 = getelementptr inbounds %struct.trans_ctl_table, %struct.trans_ctl_table* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.trans_ctl_table*, %struct.trans_ctl_table** %4, align 8
  %26 = getelementptr inbounds %struct.trans_ctl_table, %struct.trans_ctl_table* %25, i32 0, i32 1
  %27 = load %struct.trans_ctl_table*, %struct.trans_ctl_table** %26, align 8
  %28 = icmp ne %struct.trans_ctl_table* %27, null
  br label %29

29:                                               ; preds = %24, %19, %14
  %30 = phi i1 [ true, %19 ], [ true, %14 ], [ %28, %24 ]
  br i1 %30, label %31, label %113

31:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.trans_ctl_table*, %struct.trans_ctl_table** %4, align 8
  %36 = getelementptr inbounds %struct.trans_ctl_table, %struct.trans_ctl_table* %35, i32 0, i32 1
  %37 = load %struct.trans_ctl_table*, %struct.trans_ctl_table** %36, align 8
  %38 = icmp ne %struct.trans_ctl_table* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %110

40:                                               ; preds = %34, %31
  %41 = load %struct.ctl_table*, %struct.ctl_table** %3, align 8
  %42 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %40
  %46 = load %struct.trans_ctl_table*, %struct.trans_ctl_table** %4, align 8
  %47 = getelementptr inbounds %struct.trans_ctl_table, %struct.trans_ctl_table* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load %struct.ctl_table*, %struct.ctl_table** %3, align 8
  %52 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.trans_ctl_table*, %struct.trans_ctl_table** %4, align 8
  %55 = getelementptr inbounds %struct.trans_ctl_table, %struct.trans_ctl_table* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @strcmp(i64 %53, i64 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %59, %50, %45, %40
  %63 = load %struct.ctl_table*, %struct.ctl_table** %3, align 8
  %64 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %62
  %68 = load %struct.trans_ctl_table*, %struct.trans_ctl_table** %4, align 8
  %69 = getelementptr inbounds %struct.trans_ctl_table, %struct.trans_ctl_table* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load %struct.ctl_table*, %struct.ctl_table** %3, align 8
  %74 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.trans_ctl_table*, %struct.trans_ctl_table** %4, align 8
  %77 = getelementptr inbounds %struct.trans_ctl_table, %struct.trans_ctl_table* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %80, %72, %67, %62
  %84 = load %struct.trans_ctl_table*, %struct.trans_ctl_table** %4, align 8
  %85 = getelementptr inbounds %struct.trans_ctl_table, %struct.trans_ctl_table* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %83
  %89 = load %struct.trans_ctl_table*, %struct.trans_ctl_table** %4, align 8
  %90 = getelementptr inbounds %struct.trans_ctl_table, %struct.trans_ctl_table* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %93, %88, %83
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %5, align 4
  %105 = load %struct.trans_ctl_table*, %struct.trans_ctl_table** %4, align 8
  %106 = getelementptr inbounds %struct.trans_ctl_table, %struct.trans_ctl_table* %105, i32 0, i32 1
  %107 = load %struct.trans_ctl_table*, %struct.trans_ctl_table** %106, align 8
  store %struct.trans_ctl_table* %107, %struct.trans_ctl_table** %4, align 8
  br label %10

108:                                              ; preds = %99
  br label %114

109:                                              ; preds = %96
  br label %110

110:                                              ; preds = %109, %39
  %111 = load %struct.trans_ctl_table*, %struct.trans_ctl_table** %4, align 8
  %112 = getelementptr inbounds %struct.trans_ctl_table, %struct.trans_ctl_table* %111, i32 1
  store %struct.trans_ctl_table* %112, %struct.trans_ctl_table** %4, align 8
  br label %14

113:                                              ; preds = %29
  store %struct.trans_ctl_table* null, %struct.trans_ctl_table** %4, align 8
  br label %114

114:                                              ; preds = %113, %108
  %115 = load %struct.trans_ctl_table*, %struct.trans_ctl_table** %4, align 8
  ret %struct.trans_ctl_table* %115
}

declare dso_local i32 @sysctl_depth(%struct.ctl_table*) #1

declare dso_local %struct.ctl_table* @sysctl_parent(%struct.ctl_table*, i32) #1

declare dso_local i64 @strcmp(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sysctl_check.c_sysctl_check_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sysctl_check.c_sysctl_check_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsproxy = type { i32 }
%struct.ctl_table = type { i64, %struct.ctl_table*, i64 }
%struct.ctl_table_header = type { %struct.ctl_table* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ctl_table* (%struct.nsproxy*, %struct.ctl_table*)* @sysctl_check_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ctl_table* @sysctl_check_lookup(%struct.nsproxy* %0, %struct.ctl_table* %1) #0 {
  %3 = alloca %struct.nsproxy*, align 8
  %4 = alloca %struct.ctl_table*, align 8
  %5 = alloca %struct.ctl_table_header*, align 8
  %6 = alloca %struct.ctl_table*, align 8
  %7 = alloca %struct.ctl_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nsproxy* %0, %struct.nsproxy** %3, align 8
  store %struct.ctl_table* %1, %struct.ctl_table** %4, align 8
  %11 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %12 = call i32 @sysctl_depth(%struct.ctl_table* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.nsproxy*, %struct.nsproxy** %3, align 8
  %14 = call %struct.ctl_table_header* @__sysctl_head_next(%struct.nsproxy* %13, %struct.ctl_table_header* null)
  store %struct.ctl_table_header* %14, %struct.ctl_table_header** %5, align 8
  br label %15

15:                                               ; preds = %109, %2
  %16 = load %struct.ctl_table_header*, %struct.ctl_table_header** %5, align 8
  %17 = icmp ne %struct.ctl_table_header* %16, null
  br i1 %17, label %18, label %113

18:                                               ; preds = %15
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.ctl_table_header*, %struct.ctl_table_header** %5, align 8
  %21 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %20, i32 0, i32 0
  %22 = load %struct.ctl_table*, %struct.ctl_table** %21, align 8
  store %struct.ctl_table* %22, %struct.ctl_table** %6, align 8
  br label %23

23:                                               ; preds = %97, %18
  %24 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call %struct.ctl_table* @sysctl_parent(%struct.ctl_table* %24, i32 %25)
  store %struct.ctl_table* %26, %struct.ctl_table** %7, align 8
  br label %27

27:                                               ; preds = %105, %23
  %28 = load %struct.ctl_table*, %struct.ctl_table** %6, align 8
  %29 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.ctl_table*, %struct.ctl_table** %6, align 8
  %34 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i1 [ true, %27 ], [ %36, %32 ]
  br i1 %38, label %39, label %108

39:                                               ; preds = %37
  store i32 0, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.ctl_table*, %struct.ctl_table** %6, align 8
  %44 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %43, i32 0, i32 1
  %45 = load %struct.ctl_table*, %struct.ctl_table** %44, align 8
  %46 = icmp ne %struct.ctl_table* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %105

48:                                               ; preds = %42, %39
  %49 = load %struct.ctl_table*, %struct.ctl_table** %7, align 8
  %50 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %48
  %54 = load %struct.ctl_table*, %struct.ctl_table** %6, align 8
  %55 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load %struct.ctl_table*, %struct.ctl_table** %7, align 8
  %60 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ctl_table*, %struct.ctl_table** %6, align 8
  %63 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @strcmp(i64 %61, i64 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %67, %58, %53, %48
  %71 = load %struct.ctl_table*, %struct.ctl_table** %7, align 8
  %72 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %70
  %76 = load %struct.ctl_table*, %struct.ctl_table** %6, align 8
  %77 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = load %struct.ctl_table*, %struct.ctl_table** %7, align 8
  %82 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.ctl_table*, %struct.ctl_table** %6, align 8
  %85 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %88, %80, %75, %70
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %91
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %9, align 4
  %100 = load %struct.ctl_table*, %struct.ctl_table** %6, align 8
  %101 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %100, i32 0, i32 1
  %102 = load %struct.ctl_table*, %struct.ctl_table** %101, align 8
  store %struct.ctl_table* %102, %struct.ctl_table** %6, align 8
  br label %23

103:                                              ; preds = %94
  br label %114

104:                                              ; preds = %91
  br label %105

105:                                              ; preds = %104, %47
  %106 = load %struct.ctl_table*, %struct.ctl_table** %6, align 8
  %107 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %106, i32 1
  store %struct.ctl_table* %107, %struct.ctl_table** %6, align 8
  br label %27

108:                                              ; preds = %37
  br label %109

109:                                              ; preds = %108
  %110 = load %struct.nsproxy*, %struct.nsproxy** %3, align 8
  %111 = load %struct.ctl_table_header*, %struct.ctl_table_header** %5, align 8
  %112 = call %struct.ctl_table_header* @__sysctl_head_next(%struct.nsproxy* %110, %struct.ctl_table_header* %111)
  store %struct.ctl_table_header* %112, %struct.ctl_table_header** %5, align 8
  br label %15

113:                                              ; preds = %15
  store %struct.ctl_table* null, %struct.ctl_table** %6, align 8
  br label %114

114:                                              ; preds = %113, %103
  %115 = load %struct.ctl_table_header*, %struct.ctl_table_header** %5, align 8
  %116 = call i32 @sysctl_head_finish(%struct.ctl_table_header* %115)
  %117 = load %struct.ctl_table*, %struct.ctl_table** %6, align 8
  ret %struct.ctl_table* %117
}

declare dso_local i32 @sysctl_depth(%struct.ctl_table*) #1

declare dso_local %struct.ctl_table_header* @__sysctl_head_next(%struct.nsproxy*, %struct.ctl_table_header*) #1

declare dso_local %struct.ctl_table* @sysctl_parent(%struct.ctl_table*, i32) #1

declare dso_local i64 @strcmp(i64, i64) #1

declare dso_local i32 @sysctl_head_finish(%struct.ctl_table_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

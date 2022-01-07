; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_immune_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_immune_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decomposition = type { i64, i64, i64, i64, i64 }

@frame_pointer_rtx = common dso_local global i64 0, align 8
@hard_frame_pointer_rtx = common dso_local global i64 0, align 8
@stack_pointer_rtx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.decomposition*)* @immune_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @immune_p(i32 %0, i32 %1, %struct.decomposition* byval(%struct.decomposition) align 8 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.decomposition, align 8
  %8 = alloca %struct.decomposition, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  %9 = getelementptr inbounds %struct.decomposition, %struct.decomposition* %2, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.decomposition, %struct.decomposition* %2, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.decomposition, %struct.decomposition* %2, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @refers_to_regno_for_reload_p(i64 %14, i64 %16, i32 %17, i32* null)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %4, align 4
  br label %114

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.decomposition, %struct.decomposition* %2, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  br label %114

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @MEM_P(i32 %28)
  %30 = call i32 @gcc_assert(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @MEM_P(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %114

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  call void @decompose(%struct.decomposition* sret %8, i32 %36)
  %37 = bitcast %struct.decomposition* %7 to i8*
  %38 = bitcast %struct.decomposition* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 40, i1 false)
  %39 = getelementptr inbounds %struct.decomposition, %struct.decomposition* %7, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.decomposition, %struct.decomposition* %2, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @rtx_equal_p(i64 %40, i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %99, label %45

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.decomposition, %struct.decomposition* %7, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @CONSTANT_P(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.decomposition, %struct.decomposition* %2, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @CONSTANT_P(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 1, i32* %4, align 4
  br label %114

56:                                               ; preds = %50, %45
  %57 = getelementptr inbounds %struct.decomposition, %struct.decomposition* %7, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @CONSTANT_P(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.decomposition, %struct.decomposition* %2, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @frame_pointer_rtx, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %76, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.decomposition, %struct.decomposition* %2, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @hard_frame_pointer_rtx, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.decomposition, %struct.decomposition* %2, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @stack_pointer_rtx, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71, %66, %61
  store i32 1, i32* %4, align 4
  br label %114

77:                                               ; preds = %71, %56
  %78 = getelementptr inbounds %struct.decomposition, %struct.decomposition* %2, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @CONSTANT_P(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.decomposition, %struct.decomposition* %7, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @frame_pointer_rtx, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %97, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.decomposition, %struct.decomposition* %7, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @hard_frame_pointer_rtx, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.decomposition, %struct.decomposition* %7, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @stack_pointer_rtx, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %92, %87, %82
  store i32 1, i32* %4, align 4
  br label %114

98:                                               ; preds = %92, %77
  store i32 0, i32* %4, align 4
  br label %114

99:                                               ; preds = %35
  %100 = getelementptr inbounds %struct.decomposition, %struct.decomposition* %7, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.decomposition, %struct.decomposition* %2, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp sge i64 %101, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.decomposition, %struct.decomposition* %2, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.decomposition, %struct.decomposition* %7, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp sge i64 %107, %109
  br label %111

111:                                              ; preds = %105, %99
  %112 = phi i1 [ true, %99 ], [ %110, %105 ]
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %111, %98, %97, %76, %55, %34, %26, %12
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @refers_to_regno_for_reload_p(i64, i64, i32, i32*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @MEM_P(i32) #1

declare dso_local void @decompose(%struct.decomposition* sret, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rtx_equal_p(i64, i64) #1

declare dso_local i64 @CONSTANT_P(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

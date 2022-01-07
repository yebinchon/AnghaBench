; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_file_mprotect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_file_mprotect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i64, i64, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.cred = type { i32 }

@selinux_checkreqprot = common dso_local global i64 0, align 8
@PROT_EXEC = common dso_local global i64 0, align 8
@VM_EXEC = common dso_local global i32 0, align 4
@PROCESS__EXECHEAP = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@PROCESS__EXECSTACK = common dso_local global i32 0, align 4
@FILE__EXECMOD = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, i64)* @selinux_file_mprotect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_file_mprotect(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cred*, align 8
  %9 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %10, %struct.cred** %8, align 8
  %11 = load i64, i64* @selinux_checkreqprot, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %7, align 8
  br label %15

15:                                               ; preds = %13, %3
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @PROT_EXEC, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %106

20:                                               ; preds = %15
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @VM_EXEC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %106, label %27

27:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 5
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %30, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %27
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %42 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %41, i32 0, i32 5
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sle i64 %40, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load %struct.cred*, %struct.cred** %8, align 8
  %49 = load %struct.cred*, %struct.cred** %8, align 8
  %50 = load i32, i32* @PROCESS__EXECHEAP, align 4
  %51 = call i32 @cred_has_perm(%struct.cred* %48, %struct.cred* %49, i32 %50)
  store i32 %51, i32* %9, align 4
  br label %100

52:                                               ; preds = %37, %27
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %81, label %57

57:                                               ; preds = %52
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %59 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %62 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %61, i32 0, i32 5
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp sle i64 %60, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %57
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %72 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %71, i32 0, i32 5
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp sge i64 %70, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %67
  %78 = load i32, i32* @current, align 4
  %79 = load i32, i32* @PROCESS__EXECSTACK, align 4
  %80 = call i32 @current_has_perm(i32 %78, i32 %79)
  store i32 %80, i32* %9, align 4
  br label %99

81:                                               ; preds = %67, %57, %52
  %82 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %83 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %88 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.cred*, %struct.cred** %8, align 8
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %94 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @FILE__EXECMOD, align 4
  %97 = call i32 @file_has_perm(%struct.cred* %92, i32 %95, i32 %96)
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %91, %86, %81
  br label %99

99:                                               ; preds = %98, %77
  br label %100

100:                                              ; preds = %99, %47
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %4, align 4
  br label %117

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105, %20, %15
  %107 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %108 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load i64, i64* %7, align 8
  %111 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %112 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @VM_SHARED, align 4
  %115 = and i32 %113, %114
  %116 = call i32 @file_map_prot_check(i32 %109, i64 %110, i32 %115)
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %106, %103
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @cred_has_perm(%struct.cred*, %struct.cred*, i32) #1

declare dso_local i32 @current_has_perm(i32, i32) #1

declare dso_local i32 @file_has_perm(%struct.cred*, i32, i32) #1

declare dso_local i32 @file_map_prot_check(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

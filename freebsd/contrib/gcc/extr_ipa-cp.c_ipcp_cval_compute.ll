; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_ipcp_cval_compute.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_ipcp_cval_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipcp_formal = type { i32 }
%struct.cgraph_node = type { i32 }
%union.parameter_info = type { i32 }

@UNKNOWN_IPATYPE = common dso_local global i32 0, align 4
@BOTTOM = common dso_local global i32 0, align 4
@CONST_IPATYPE = common dso_local global i32 0, align 4
@CONST_VALUE = common dso_local global i32 0, align 4
@CONST_IPATYPE_REF = common dso_local global i32 0, align 4
@CONST_VALUE_REF = common dso_local global i32 0, align 4
@FORMAL_IPATYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipcp_formal*, %struct.cgraph_node*, i32, %union.parameter_info*)* @ipcp_cval_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipcp_cval_compute(%struct.ipcp_formal* %0, %struct.cgraph_node* %1, i32 %2, %union.parameter_info* %3) #0 {
  %5 = alloca %struct.ipcp_formal*, align 8
  %6 = alloca %struct.cgraph_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.parameter_info*, align 8
  %9 = alloca i32, align 4
  store %struct.ipcp_formal* %0, %struct.ipcp_formal** %5, align 8
  store %struct.cgraph_node* %1, %struct.cgraph_node** %6, align 8
  store i32 %2, i32* %7, align 4
  store %union.parameter_info* %3, %union.parameter_info** %8, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @UNKNOWN_IPATYPE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load %struct.ipcp_formal*, %struct.ipcp_formal** %5, align 8
  %15 = load i32, i32* @BOTTOM, align 4
  %16 = call i32 @ipcp_cval_set_cvalue_type(%struct.ipcp_formal* %14, i32 %15)
  br label %67

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @CONST_IPATYPE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load %struct.ipcp_formal*, %struct.ipcp_formal** %5, align 8
  %23 = load i32, i32* @CONST_VALUE, align 4
  %24 = call i32 @ipcp_cval_set_cvalue_type(%struct.ipcp_formal* %22, i32 %23)
  %25 = load %struct.ipcp_formal*, %struct.ipcp_formal** %5, align 8
  %26 = load %union.parameter_info*, %union.parameter_info** %8, align 8
  %27 = load i32, i32* @CONST_VALUE, align 4
  %28 = call i32 @ipcp_cval_set_cvalue(%struct.ipcp_formal* %25, %union.parameter_info* %26, i32 %27)
  br label %66

29:                                               ; preds = %17
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @CONST_IPATYPE_REF, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load %struct.ipcp_formal*, %struct.ipcp_formal** %5, align 8
  %35 = load i32, i32* @CONST_VALUE_REF, align 4
  %36 = call i32 @ipcp_cval_set_cvalue_type(%struct.ipcp_formal* %34, i32 %35)
  %37 = load %struct.ipcp_formal*, %struct.ipcp_formal** %5, align 8
  %38 = load %union.parameter_info*, %union.parameter_info** %8, align 8
  %39 = load i32, i32* @CONST_VALUE_REF, align 4
  %40 = call i32 @ipcp_cval_set_cvalue(%struct.ipcp_formal* %37, %union.parameter_info* %38, i32 %39)
  br label %65

41:                                               ; preds = %29
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @FORMAL_IPATYPE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %47 = load %union.parameter_info*, %union.parameter_info** %8, align 8
  %48 = bitcast %union.parameter_info* %47 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ipcp_method_cval(%struct.cgraph_node* %46, i32 %49)
  %51 = call i32 @ipcp_cval_get_cvalue_type(i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.ipcp_formal*, %struct.ipcp_formal** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @ipcp_cval_set_cvalue_type(%struct.ipcp_formal* %52, i32 %53)
  %55 = load %struct.ipcp_formal*, %struct.ipcp_formal** %5, align 8
  %56 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %57 = load %union.parameter_info*, %union.parameter_info** %8, align 8
  %58 = bitcast %union.parameter_info* %57 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ipcp_method_cval(%struct.cgraph_node* %56, i32 %59)
  %61 = call %union.parameter_info* @ipcp_cval_get_cvalue(i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @ipcp_cval_set_cvalue(%struct.ipcp_formal* %55, %union.parameter_info* %61, i32 %62)
  br label %64

64:                                               ; preds = %45, %41
  br label %65

65:                                               ; preds = %64, %33
  br label %66

66:                                               ; preds = %65, %21
  br label %67

67:                                               ; preds = %66, %13
  ret void
}

declare dso_local i32 @ipcp_cval_set_cvalue_type(%struct.ipcp_formal*, i32) #1

declare dso_local i32 @ipcp_cval_set_cvalue(%struct.ipcp_formal*, %union.parameter_info*, i32) #1

declare dso_local i32 @ipcp_cval_get_cvalue_type(i32) #1

declare dso_local i32 @ipcp_method_cval(%struct.cgraph_node*, i32) #1

declare dso_local %union.parameter_info* @ipcp_cval_get_cvalue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

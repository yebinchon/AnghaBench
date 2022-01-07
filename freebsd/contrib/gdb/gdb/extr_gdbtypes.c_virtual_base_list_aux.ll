; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_virtual_base_list_aux.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_virtual_base_list_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbase = type { %struct.vbase*, %struct.type* }
%struct.type = type { i32 }

@TYPE_CODE_CLASS = common dso_local global i64 0, align 8
@current_vbase_list = common dso_local global %struct.vbase* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*)* @virtual_base_list_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtual_base_list_aux(%struct.type* %0) #0 {
  %2 = alloca %struct.type*, align 8
  %3 = alloca %struct.vbase*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %2, align 8
  %6 = load %struct.type*, %struct.type** %2, align 8
  %7 = call i64 @TYPE_CODE(%struct.type* %6)
  %8 = load i64, i64* @TYPE_CODE_CLASS, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %62

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %59, %11
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.type*, %struct.type** %2, align 8
  %15 = call i32 @TYPE_N_BASECLASSES(%struct.type* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %62

17:                                               ; preds = %12
  %18 = load %struct.type*, %struct.type** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %18, i32 %19)
  call void @virtual_base_list_aux(%struct.type* %20)
  %21 = load %struct.type*, %struct.type** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @BASETYPE_VIA_VIRTUAL(%struct.type* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %17
  %26 = load %struct.type*, %struct.type** %2, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %26, i32 %27)
  store %struct.type* %28, %struct.type** %5, align 8
  %29 = load %struct.vbase*, %struct.vbase** @current_vbase_list, align 8
  store %struct.vbase* %29, %struct.vbase** %3, align 8
  br label %30

30:                                               ; preds = %40, %25
  %31 = load %struct.vbase*, %struct.vbase** %3, align 8
  %32 = icmp ne %struct.vbase* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load %struct.vbase*, %struct.vbase** %3, align 8
  %35 = getelementptr inbounds %struct.vbase, %struct.vbase* %34, i32 0, i32 1
  %36 = load %struct.type*, %struct.type** %35, align 8
  %37 = load %struct.type*, %struct.type** %5, align 8
  %38 = icmp eq %struct.type* %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %44

40:                                               ; preds = %33
  %41 = load %struct.vbase*, %struct.vbase** %3, align 8
  %42 = getelementptr inbounds %struct.vbase, %struct.vbase* %41, i32 0, i32 0
  %43 = load %struct.vbase*, %struct.vbase** %42, align 8
  store %struct.vbase* %43, %struct.vbase** %3, align 8
  br label %30

44:                                               ; preds = %39, %30
  %45 = load %struct.vbase*, %struct.vbase** %3, align 8
  %46 = icmp ne %struct.vbase* %45, null
  br i1 %46, label %57, label %47

47:                                               ; preds = %44
  %48 = call i64 @xmalloc(i32 16)
  %49 = inttoptr i64 %48 to %struct.vbase*
  store %struct.vbase* %49, %struct.vbase** %3, align 8
  %50 = load %struct.type*, %struct.type** %5, align 8
  %51 = load %struct.vbase*, %struct.vbase** %3, align 8
  %52 = getelementptr inbounds %struct.vbase, %struct.vbase* %51, i32 0, i32 1
  store %struct.type* %50, %struct.type** %52, align 8
  %53 = load %struct.vbase*, %struct.vbase** @current_vbase_list, align 8
  %54 = load %struct.vbase*, %struct.vbase** %3, align 8
  %55 = getelementptr inbounds %struct.vbase, %struct.vbase* %54, i32 0, i32 0
  store %struct.vbase* %53, %struct.vbase** %55, align 8
  %56 = load %struct.vbase*, %struct.vbase** %3, align 8
  store %struct.vbase* %56, %struct.vbase** @current_vbase_list, align 8
  br label %57

57:                                               ; preds = %47, %44
  br label %58

58:                                               ; preds = %57, %17
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %12

62:                                               ; preds = %10, %12
  ret void
}

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_N_BASECLASSES(%struct.type*) #1

declare dso_local %struct.type* @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i64 @BASETYPE_VIA_VIRTUAL(%struct.type*, i32) #1

declare dso_local i64 @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

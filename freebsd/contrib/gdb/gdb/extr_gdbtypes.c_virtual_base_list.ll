; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_virtual_base_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_virtual_base_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbase = type { %struct.vbase*, %struct.type* }
%struct.type = type { i32 }

@current_vbase_list = common dso_local global %struct.vbase* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.type** @virtual_base_list(%struct.type* %0) #0 {
  %2 = alloca %struct.type*, align 8
  %3 = alloca %struct.vbase*, align 8
  %4 = alloca %struct.vbase*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.type**, align 8
  store %struct.type* %0, %struct.type** %2, align 8
  store %struct.vbase* null, %struct.vbase** @current_vbase_list, align 8
  %8 = load %struct.type*, %struct.type** %2, align 8
  %9 = call i32 @virtual_base_list_aux(%struct.type* %8)
  store i32 0, i32* %5, align 4
  %10 = load %struct.vbase*, %struct.vbase** @current_vbase_list, align 8
  store %struct.vbase* %10, %struct.vbase** %3, align 8
  br label %11

11:                                               ; preds = %15, %1
  %12 = load %struct.vbase*, %struct.vbase** %3, align 8
  %13 = icmp ne %struct.vbase* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %14
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  %18 = load %struct.vbase*, %struct.vbase** %3, align 8
  %19 = getelementptr inbounds %struct.vbase, %struct.vbase* %18, i32 0, i32 0
  %20 = load %struct.vbase*, %struct.vbase** %19, align 8
  store %struct.vbase* %20, %struct.vbase** %3, align 8
  br label %11

21:                                               ; preds = %11
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = trunc i64 %26 to i32
  %28 = call i64 @xmalloc(i32 %27)
  %29 = inttoptr i64 %28 to %struct.type**
  store %struct.type** %29, %struct.type*** %7, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  %32 = load %struct.vbase*, %struct.vbase** @current_vbase_list, align 8
  store %struct.vbase* %32, %struct.vbase** %3, align 8
  br label %33

33:                                               ; preds = %44, %21
  %34 = load i32, i32* %5, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load %struct.vbase*, %struct.vbase** %3, align 8
  %38 = getelementptr inbounds %struct.vbase, %struct.vbase* %37, i32 0, i32 1
  %39 = load %struct.type*, %struct.type** %38, align 8
  %40 = load %struct.type**, %struct.type*** %7, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.type*, %struct.type** %40, i64 %42
  store %struct.type* %39, %struct.type** %43, align 8
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %5, align 4
  %47 = load %struct.vbase*, %struct.vbase** %3, align 8
  %48 = getelementptr inbounds %struct.vbase, %struct.vbase* %47, i32 0, i32 0
  %49 = load %struct.vbase*, %struct.vbase** %48, align 8
  store %struct.vbase* %49, %struct.vbase** %3, align 8
  br label %33

50:                                               ; preds = %33
  %51 = load %struct.vbase*, %struct.vbase** @current_vbase_list, align 8
  store %struct.vbase* %51, %struct.vbase** %3, align 8
  store %struct.vbase* %51, %struct.vbase** %4, align 8
  br label %52

52:                                               ; preds = %55, %50
  %53 = load %struct.vbase*, %struct.vbase** %3, align 8
  %54 = icmp ne %struct.vbase* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load %struct.vbase*, %struct.vbase** %3, align 8
  %57 = getelementptr inbounds %struct.vbase, %struct.vbase* %56, i32 0, i32 0
  %58 = load %struct.vbase*, %struct.vbase** %57, align 8
  store %struct.vbase* %58, %struct.vbase** %3, align 8
  %59 = load %struct.vbase*, %struct.vbase** %4, align 8
  %60 = call i32 @xfree(%struct.vbase* %59)
  %61 = load %struct.vbase*, %struct.vbase** %3, align 8
  store %struct.vbase* %61, %struct.vbase** %4, align 8
  br label %52

62:                                               ; preds = %52
  %63 = load %struct.type**, %struct.type*** %7, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.type*, %struct.type** %63, i64 %65
  store %struct.type* null, %struct.type** %66, align 8
  %67 = load %struct.type**, %struct.type*** %7, align 8
  ret %struct.type** %67
}

declare dso_local i32 @virtual_base_list_aux(%struct.type*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @xfree(%struct.vbase*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

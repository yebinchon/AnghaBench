; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_idr.c_ida_simple_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_idr.c_ida_simple_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ida = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@simple_ida_lock = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ida_simple_get(%struct.ida* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ida*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ida* %0, %struct.ida** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 -2147483648, i32* %12, align 4
  br label %32

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ult i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = sub i32 %30, 1
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %24, %23
  br label %33

33:                                               ; preds = %70, %32
  %34 = load %struct.ida*, %struct.ida** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @ida_pre_get(%struct.ida* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %73

41:                                               ; preds = %33
  %42 = call i32 @spin_lock(i32* @simple_ida_lock)
  %43 = load %struct.ida*, %struct.ida** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @ida_get_new_above(%struct.ida* %43, i32 %44, i32* %11)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ugt i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load %struct.ida*, %struct.ida** %6, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @ida_remove(%struct.ida* %53, i32 %54)
  %56 = load i32, i32* @ENOSPC, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %10, align 4
  br label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %58, %52
  br label %61

61:                                               ; preds = %60, %41
  %62 = call i32 @spin_unlock(i32* @simple_ida_lock)
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @EAGAIN, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp eq i32 %63, %65
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %33

71:                                               ; preds = %61
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %71, %38
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ida_pre_get(%struct.ida*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ida_get_new_above(%struct.ida*, i32, i32*) #1

declare dso_local i32 @ida_remove(%struct.ida*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

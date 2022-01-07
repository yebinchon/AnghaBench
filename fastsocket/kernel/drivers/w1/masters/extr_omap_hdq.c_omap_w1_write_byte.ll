; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_omap_hdq.c_omap_w1_write_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_omap_hdq.c_omap_w1_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdq_data = type { i64, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Could not acquire mutex\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"TX failure:Ctrl status %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @omap_w1_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_w1_write_byte(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdq_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.hdq_data*
  store %struct.hdq_data* %9, %struct.hdq_data** %5, align 8
  %10 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %11 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %16 = call i32 @omap_hdq_get(%struct.hdq_data* %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %19 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock_interruptible(i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %25 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @dev_dbg(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %72

28:                                               ; preds = %17
  %29 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %30 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %34 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %33, i32 0, i32 1
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @hdq_write_byte(%struct.hdq_data* %36, i32 %37, i32* %7)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %28
  %42 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %43 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 (i32, i8*, ...) @dev_dbg(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %72

47:                                               ; preds = %28
  %48 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %49 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 1
  br i1 %51, label %52, label %71

52:                                               ; preds = %47
  %53 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %54 = call i32 @omap_hdq_put(%struct.hdq_data* %53)
  %55 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %56 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %55, i32 0, i32 1
  %57 = call i32 @mutex_lock_interruptible(i32* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %62 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, ...) @dev_dbg(i32 %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %72

65:                                               ; preds = %52
  %66 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %67 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %69 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %68, i32 0, i32 1
  %70 = call i32 @mutex_unlock(i32* %69)
  br label %71

71:                                               ; preds = %65, %47
  br label %72

72:                                               ; preds = %71, %60, %41, %23
  ret void
}

declare dso_local i32 @omap_hdq_get(%struct.hdq_data*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hdq_write_byte(%struct.hdq_data*, i32, i32*) #1

declare dso_local i32 @omap_hdq_put(%struct.hdq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

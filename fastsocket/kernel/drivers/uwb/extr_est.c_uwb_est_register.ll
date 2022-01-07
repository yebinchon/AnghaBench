; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_est.c_uwb_est_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_est.c_uwb_est_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i64, %struct.uwb_est_entry* }
%struct.uwb_est_entry = type { i32 }

@uwb_est_lock = common dso_local global i32 0, align 4
@uwb_est_used = common dso_local global i32 0, align 4
@uwb_est_size = common dso_local global i32 0, align 4
@uwb_est = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uwb_est_register(i32 %0, i32 %1, i64 %2, i64 %3, %struct.uwb_est_entry* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.uwb_est_entry*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.uwb_est_entry* %4, %struct.uwb_est_entry** %11, align 8
  store i64 %5, i64* %12, align 8
  store i32 0, i32* %16, align 4
  %17 = load i64, i64* %13, align 8
  %18 = call i32 @write_lock_irqsave(i32* @uwb_est_lock, i64 %17)
  %19 = load i32, i32* @uwb_est_used, align 4
  %20 = load i32, i32* @uwb_est_size, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %6
  %23 = call i32 (...) @uwb_est_grow()
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %124

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %6
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 %29, 8
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %30, %31
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %15, align 8
  store i32 0, i32* %14, align 4
  br label %34

34:                                               ; preds = %67, %28
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @uwb_est_used, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %70

38:                                               ; preds = %34
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uwb_est, align 8
  %40 = load i32, i32* %14, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %38
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uwb_est, align 8
  %49 = load i32, i32* %14, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %47
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uwb_est, align 8
  %58 = load i32, i32* %14, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %70

66:                                               ; preds = %56, %47, %38
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %14, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %14, align 4
  br label %34

70:                                               ; preds = %65, %34
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @uwb_est_used, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %70
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uwb_est, align 8
  %76 = load i32, i32* %14, align 4
  %77 = add i32 %76, 1
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %78
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uwb_est, align 8
  %81 = load i32, i32* %14, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = load i32, i32* @uwb_est_used, align 4
  %85 = load i32, i32* %14, align 4
  %86 = sub i32 %84, %85
  %87 = call i32 @memmove(%struct.TYPE_4__* %79, %struct.TYPE_4__* %83, i32 %86)
  br label %88

88:                                               ; preds = %74, %70
  %89 = load i32, i32* %7, align 4
  %90 = shl i32 %89, 8
  %91 = load i32, i32* %8, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uwb_est, align 8
  %94 = load i32, i32* %14, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32 %92, i32* %97, align 8
  %98 = load i64, i64* %9, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uwb_est, align 8
  %100 = load i32, i32* %14, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i64 %98, i64* %103, align 8
  %104 = load i64, i64* %10, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uwb_est, align 8
  %106 = load i32, i32* %14, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  store i64 %104, i64* %109, align 8
  %110 = load %struct.uwb_est_entry*, %struct.uwb_est_entry** %11, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uwb_est, align 8
  %112 = load i32, i32* %14, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 4
  store %struct.uwb_est_entry* %110, %struct.uwb_est_entry** %115, align 8
  %116 = load i64, i64* %12, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uwb_est, align 8
  %118 = load i32, i32* %14, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 3
  store i64 %116, i64* %121, align 8
  %122 = load i32, i32* @uwb_est_used, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* @uwb_est_used, align 4
  br label %124

124:                                              ; preds = %88, %26
  %125 = load i64, i64* %13, align 8
  %126 = call i32 @write_unlock_irqrestore(i32* @uwb_est_lock, i64 %125)
  %127 = load i32, i32* %16, align 4
  ret i32 %127
}

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uwb_est_grow(...) #1

declare dso_local i32 @memmove(%struct.TYPE_4__*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_idr.c_idr_remove_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_idr.c_idr_remove_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i32, %struct.idr_layer* }
%struct.idr_layer = type { %struct.idr_layer** }

@MAX_LEVEL = common dso_local global i32 0, align 4
@IDR_BITS = common dso_local global i32 0, align 4
@IDR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @idr_remove_all(%struct.idr* %0) #0 {
  %2 = alloca %struct.idr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.idr_layer*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.idr_layer**, align 8
  store %struct.idr* %0, %struct.idr** %2, align 8
  %10 = load i32, i32* @MAX_LEVEL, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca %struct.idr_layer*, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %13, i64 0
  store %struct.idr_layer** %14, %struct.idr_layer*** %9, align 8
  %15 = load %struct.idr*, %struct.idr** %2, align 8
  %16 = getelementptr inbounds %struct.idr, %struct.idr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IDR_BITS, align 4
  %19 = mul nsw i32 %17, %18
  store i32 %19, i32* %3, align 4
  %20 = load %struct.idr*, %struct.idr** %2, align 8
  %21 = getelementptr inbounds %struct.idr, %struct.idr* %20, i32 0, i32 1
  %22 = load %struct.idr_layer*, %struct.idr_layer** %21, align 8
  store %struct.idr_layer* %22, %struct.idr_layer** %6, align 8
  %23 = load %struct.idr*, %struct.idr** %2, align 8
  %24 = getelementptr inbounds %struct.idr, %struct.idr* %23, i32 0, i32 1
  %25 = load %struct.idr_layer*, %struct.idr_layer** %24, align 8
  %26 = call i32 @rcu_assign_pointer(%struct.idr_layer* %25, i32* null)
  %27 = load i32, i32* %3, align 4
  %28 = shl i32 1, %27
  store i32 %28, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %84, %1
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %85

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %43, %33
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @IDR_BITS, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.idr_layer*, %struct.idr_layer** %6, align 8
  %40 = icmp ne %struct.idr_layer* %39, null
  br label %41

41:                                               ; preds = %38, %34
  %42 = phi i1 [ false, %34 ], [ %40, %38 ]
  br i1 %42, label %43, label %61

43:                                               ; preds = %41
  %44 = load i32, i32* @IDR_BITS, align 4
  %45 = load i32, i32* %3, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load %struct.idr_layer*, %struct.idr_layer** %6, align 8
  %48 = load %struct.idr_layer**, %struct.idr_layer*** %9, align 8
  %49 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %48, i32 1
  store %struct.idr_layer** %49, %struct.idr_layer*** %9, align 8
  store %struct.idr_layer* %47, %struct.idr_layer** %48, align 8
  %50 = load %struct.idr_layer*, %struct.idr_layer** %6, align 8
  %51 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %50, i32 0, i32 0
  %52 = load %struct.idr_layer**, %struct.idr_layer*** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %3, align 4
  %55 = ashr i32 %53, %54
  %56 = load i32, i32* @IDR_MASK, align 4
  %57 = and i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %52, i64 %58
  %60 = load %struct.idr_layer*, %struct.idr_layer** %59, align 8
  store %struct.idr_layer* %60, %struct.idr_layer** %6, align 8
  br label %34

61:                                               ; preds = %41
  %62 = load i32, i32* %3, align 4
  %63 = shl i32 1, %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %77, %61
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @fls(i32 %68)
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = load %struct.idr_layer*, %struct.idr_layer** %6, align 8
  %73 = icmp ne %struct.idr_layer* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.idr_layer*, %struct.idr_layer** %6, align 8
  %76 = call i32 @free_layer(%struct.idr_layer* %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* @IDR_BITS, align 4
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %3, align 4
  %81 = load %struct.idr_layer**, %struct.idr_layer*** %9, align 8
  %82 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %81, i32 -1
  store %struct.idr_layer** %82, %struct.idr_layer*** %9, align 8
  %83 = load %struct.idr_layer*, %struct.idr_layer** %82, align 8
  store %struct.idr_layer* %83, %struct.idr_layer** %6, align 8
  br label %66

84:                                               ; preds = %66
  br label %29

85:                                               ; preds = %29
  %86 = load %struct.idr*, %struct.idr** %2, align 8
  %87 = getelementptr inbounds %struct.idr, %struct.idr* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %88)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rcu_assign_pointer(%struct.idr_layer*, i32*) #2

declare dso_local i32 @fls(i32) #2

declare dso_local i32 @free_layer(%struct.idr_layer*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

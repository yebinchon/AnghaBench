; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_idr.c_idr_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_idr.c_idr_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i32 }
%struct.idr_layer = type { i32, i32* }

@IDR_BITS = common dso_local global i32 0, align 4
@MAX_ID_MASK = common dso_local global i32 0, align 4
@IDR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @idr_find(%struct.idr* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.idr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.idr_layer*, align 8
  store %struct.idr* %0, %struct.idr** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.idr*, %struct.idr** %4, align 8
  %9 = getelementptr inbounds %struct.idr, %struct.idr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.idr_layer* @rcu_dereference(i32 %10)
  store %struct.idr_layer* %11, %struct.idr_layer** %7, align 8
  %12 = load %struct.idr_layer*, %struct.idr_layer** %7, align 8
  %13 = icmp ne %struct.idr_layer* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %71

15:                                               ; preds = %2
  %16 = load %struct.idr_layer*, %struct.idr_layer** %7, align 8
  %17 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  %20 = load i32, i32* @IDR_BITS, align 4
  %21 = mul nsw i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @MAX_ID_MASK, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = shl i32 1, %26
  %28 = icmp sge i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  store i8* null, i8** %3, align 8
  br label %71

30:                                               ; preds = %15
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  br label %35

35:                                               ; preds = %43, %30
  %36 = load i32, i32* %6, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct.idr_layer*, %struct.idr_layer** %7, align 8
  %40 = icmp ne %struct.idr_layer* %39, null
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i1 [ false, %35 ], [ %40, %38 ]
  br i1 %42, label %43, label %68

43:                                               ; preds = %41
  %44 = load i32, i32* @IDR_BITS, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.idr_layer*, %struct.idr_layer** %7, align 8
  %49 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IDR_BITS, align 4
  %52 = mul nsw i32 %50, %51
  %53 = icmp ne i32 %47, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @BUG_ON(i32 %54)
  %56 = load %struct.idr_layer*, %struct.idr_layer** %7, align 8
  %57 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = ashr i32 %59, %60
  %62 = load i32, i32* @IDR_MASK, align 4
  %63 = and i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %58, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.idr_layer* @rcu_dereference(i32 %66)
  store %struct.idr_layer* %67, %struct.idr_layer** %7, align 8
  br label %35

68:                                               ; preds = %41
  %69 = load %struct.idr_layer*, %struct.idr_layer** %7, align 8
  %70 = bitcast %struct.idr_layer* %69 to i8*
  store i8* %70, i8** %3, align 8
  br label %71

71:                                               ; preds = %68, %29, %14
  %72 = load i8*, i8** %3, align 8
  ret i8* %72
}

declare dso_local %struct.idr_layer* @rcu_dereference(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

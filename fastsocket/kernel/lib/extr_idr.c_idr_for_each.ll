; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_idr.c_idr_for_each.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_idr.c_idr_for_each.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i32, i32 }
%struct.idr_layer = type { i32* }

@MAX_LEVEL = common dso_local global i32 0, align 4
@IDR_BITS = common dso_local global i32 0, align 4
@IDR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @idr_for_each(%struct.idr* %0, i32 (i32, i8*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.idr*, align 8
  %5 = alloca i32 (i32, i8*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.idr_layer*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.idr_layer**, align 8
  store %struct.idr* %0, %struct.idr** %4, align 8
  store i32 (i32, i8*, i8*)* %1, i32 (i32, i8*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* @MAX_LEVEL, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca %struct.idr_layer*, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %18, i64 0
  store %struct.idr_layer** %19, %struct.idr_layer*** %14, align 8
  %20 = load %struct.idr*, %struct.idr** %4, align 8
  %21 = getelementptr inbounds %struct.idr, %struct.idr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IDR_BITS, align 4
  %24 = mul nsw i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.idr*, %struct.idr** %4, align 8
  %26 = getelementptr inbounds %struct.idr, %struct.idr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.idr_layer* @rcu_dereference(i32 %27)
  store %struct.idr_layer* %28, %struct.idr_layer** %11, align 8
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 1, %29
  store i32 %30, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %94, %3
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %95

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %44, %35
  %37 = load i32, i32* %7, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %41 = icmp ne %struct.idr_layer* %40, null
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi i1 [ false, %36 ], [ %41, %39 ]
  br i1 %43, label %44, label %63

44:                                               ; preds = %42
  %45 = load i32, i32* @IDR_BITS, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %49 = load %struct.idr_layer**, %struct.idr_layer*** %14, align 8
  %50 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %49, i32 1
  store %struct.idr_layer** %50, %struct.idr_layer*** %14, align 8
  store %struct.idr_layer* %48, %struct.idr_layer** %49, align 8
  %51 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %52 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = ashr i32 %54, %55
  %57 = load i32, i32* @IDR_MASK, align 4
  %58 = and i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %53, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.idr_layer* @rcu_dereference(i32 %61)
  store %struct.idr_layer* %62, %struct.idr_layer** %11, align 8
  br label %36

63:                                               ; preds = %42
  %64 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %65 = icmp ne %struct.idr_layer* %64, null
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %70 = bitcast %struct.idr_layer* %69 to i8*
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 %67(i32 %68, i8* %70, i8* %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %95

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %63
  %78 = load i32, i32* %7, align 4
  %79 = shl i32 1, %78
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %87, %77
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @fls(i32 %84)
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load i32, i32* @IDR_BITS, align 4
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %7, align 4
  %91 = load %struct.idr_layer**, %struct.idr_layer*** %14, align 8
  %92 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %91, i32 -1
  store %struct.idr_layer** %92, %struct.idr_layer*** %14, align 8
  %93 = load %struct.idr_layer*, %struct.idr_layer** %92, align 8
  store %struct.idr_layer* %93, %struct.idr_layer** %11, align 8
  br label %82

94:                                               ; preds = %82
  br label %31

95:                                               ; preds = %75, %31
  %96 = load i32, i32* %10, align 4
  %97 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %97)
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.idr_layer* @rcu_dereference(i32) #2

declare dso_local i32 @fls(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

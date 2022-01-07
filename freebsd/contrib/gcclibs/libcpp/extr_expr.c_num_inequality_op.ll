; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_num_inequality_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_num_inequality_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i64 }

@precision = common dso_local global i32 0, align 4
@CPP_GREATER_EQ = common dso_local global i32 0, align 4
@CPP_LESS = common dso_local global i32 0, align 4
@CPP_GREATER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32)* @num_inequality_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @num_inequality_op(%struct.TYPE_9__* noalias sret %0, i32* %1, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %2, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %1, i32** %6, align 8
  store i32 %4, i32* %7, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* @precision, align 4
  %11 = call i32 @CPP_OPTION(i32* %9, i32 %10)
  %12 = call i32 @num_greater_eq(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %2, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %3, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @CPP_GREATER_EQ, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i32, i32* %8, align 4
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  br label %56

19:                                               ; preds = %5
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @CPP_LESS, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  br label %55

29:                                               ; preds = %19
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @CPP_GREATER, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = call i64 @num_eq(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %2, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %3)
  %38 = icmp ne i64 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %36, %33
  %41 = phi i1 [ false, %33 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  br label %54

44:                                               ; preds = %29
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = call i64 @num_eq(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %2, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %3)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i1 [ true, %44 ], [ %49, %47 ]
  %52 = zext i1 %51 to i32
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %40
  br label %55

55:                                               ; preds = %54, %23
  br label %56

56:                                               ; preds = %55, %16
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  store i32 0, i32* %59, align 8
  %60 = bitcast %struct.TYPE_9__* %0 to i8*
  %61 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 24, i1 false)
  ret void
}

declare dso_local i32 @num_greater_eq(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, i32) #1

declare dso_local i32 @CPP_OPTION(i32*, i32) #1

declare dso_local i64 @num_eq(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

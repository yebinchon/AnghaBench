; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-core.c_df_bb_replace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-core.c_df_bb_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df = type { i32, %struct.dataflow** }
%struct.dataflow = type { i64 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @df_bb_replace(%struct.df* %0, i32 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca %struct.df*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dataflow*, align 8
  %9 = alloca i8*, align 8
  store %struct.df* %0, %struct.df** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %49, %3
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.df*, %struct.df** %4, align 8
  %13 = getelementptr inbounds %struct.df, %struct.df* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %10
  %17 = load %struct.df*, %struct.df** %4, align 8
  %18 = getelementptr inbounds %struct.df, %struct.df* %17, i32 0, i32 1
  %19 = load %struct.dataflow**, %struct.dataflow*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.dataflow*, %struct.dataflow** %19, i64 %21
  %23 = load %struct.dataflow*, %struct.dataflow** %22, align 8
  store %struct.dataflow* %23, %struct.dataflow** %8, align 8
  %24 = load %struct.dataflow*, %struct.dataflow** %8, align 8
  %25 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %16
  %29 = load %struct.dataflow*, %struct.dataflow** %8, align 8
  %30 = call i32 @df_grow_bb_info(%struct.dataflow* %29)
  %31 = load %struct.dataflow*, %struct.dataflow** %8, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i8* @df_get_bb_info(%struct.dataflow* %31, i32 %32)
  store i8* %33, i8** %9, align 8
  %34 = load %struct.dataflow*, %struct.dataflow** %8, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.dataflow*, %struct.dataflow** %8, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @df_get_bb_info(%struct.dataflow* %36, i32 %39)
  %41 = call i32 @df_set_bb_info(%struct.dataflow* %34, i32 %35, i8* %40)
  %42 = load %struct.dataflow*, %struct.dataflow** %8, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @df_set_bb_info(%struct.dataflow* %42, i32 %45, i8* %46)
  br label %48

48:                                               ; preds = %28, %16
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %10

52:                                               ; preds = %10
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %55 = call i32 @SET_BASIC_BLOCK(i32 %53, %struct.TYPE_4__* %54)
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  ret void
}

declare dso_local i32 @df_grow_bb_info(%struct.dataflow*) #1

declare dso_local i8* @df_get_bb_info(%struct.dataflow*, i32) #1

declare dso_local i32 @df_set_bb_info(%struct.dataflow*, i32, i8*) #1

declare dso_local i32 @SET_BASIC_BLOCK(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

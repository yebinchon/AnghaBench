; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-abi.c_list_cp_abis.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-abi.c_list_cp_abis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.cleanup = type { i32 }

@uiout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"The available C++ ABIs are:\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"cp-abi-list\00", align 1
@num_cp_abis = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"cp-abi\00", align 1
@cp_abis = common dso_local global %struct.TYPE_2__** null, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"doc\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @list_cp_abis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_cp_abis(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cleanup*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [14 x i8], align 1
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @uiout, align 4
  %8 = call i32 @ui_out_text(i32 %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @uiout, align 4
  %10 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32 %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cleanup* %10, %struct.cleanup** %3, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %62, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @num_cp_abis, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %65

15:                                               ; preds = %11
  %16 = load i32, i32* @uiout, align 4
  %17 = call i32 @ui_out_text(i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32, i32* @uiout, align 4
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @cp_abis, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ui_out_field_string(i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  %27 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @cp_abis, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %27, i64 %29
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strlen(i32 %33)
  %35 = sub nsw i32 14, %34
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 %37
  store i8 0, i8* %38, align 1
  br label %39

39:                                               ; preds = %42, %15
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 %45
  store i8 32, i8* %46, align 1
  br label %39

47:                                               ; preds = %39
  %48 = load i32, i32* @uiout, align 4
  %49 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 0
  %50 = call i32 @ui_out_text(i32 %48, i8* %49)
  %51 = load i32, i32* @uiout, align 4
  %52 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @cp_abis, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %52, i64 %54
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ui_out_field_string(i32 %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @uiout, align 4
  %61 = call i32 @ui_out_text(i32 %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %62

62:                                               ; preds = %47
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %11

65:                                               ; preds = %11
  %66 = load %struct.cleanup*, %struct.cleanup** %3, align 8
  %67 = call i32 @do_cleanups(%struct.cleanup* %66)
  ret void
}

declare dso_local i32 @ui_out_text(i32, i8*) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32, i8*) #1

declare dso_local i32 @ui_out_field_string(i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

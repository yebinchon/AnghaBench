; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_display_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_display_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { i64, i32, %struct.TYPE_2__, i64, i32, %struct.display* }
%struct.TYPE_2__ = type { i8, i64, i32 }

@display_chain = common dso_local global %struct.display* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"There are no auto-display expressions now.\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Auto-display expressions now in effect:\0ANum Enb Expression\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%d:   %c  \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ny\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"/%d%c%c \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"/%c \00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c" (cannot be evaluated in the current context)\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @display_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_info(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.display*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.display*, %struct.display** @display_chain, align 8
  %7 = icmp ne %struct.display* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %12

10:                                               ; preds = %2
  %11 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %8
  %13 = load %struct.display*, %struct.display** @display_chain, align 8
  store %struct.display* %13, %struct.display** %5, align 8
  br label %14

14:                                               ; preds = %86, %12
  %15 = load %struct.display*, %struct.display** %5, align 8
  %16 = icmp ne %struct.display* %15, null
  br i1 %16, label %17, label %90

17:                                               ; preds = %14
  %18 = load %struct.display*, %struct.display** %5, align 8
  %19 = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.display*, %struct.display** %5, align 8
  %22 = getelementptr inbounds %struct.display, %struct.display* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [3 x i8], [3 x i8]* @.str.3, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %20, i32 %28)
  %30 = load %struct.display*, %struct.display** %5, align 8
  %31 = getelementptr inbounds %struct.display, %struct.display* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i8, i8* %32, align 8
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %17
  %36 = load %struct.display*, %struct.display** %5, align 8
  %37 = getelementptr inbounds %struct.display, %struct.display* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.display*, %struct.display** %5, align 8
  %41 = getelementptr inbounds %struct.display, %struct.display* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8, i8* %42, align 8
  %44 = sext i8 %43 to i32
  %45 = load %struct.display*, %struct.display** %5, align 8
  %46 = getelementptr inbounds %struct.display, %struct.display* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %39, i32 %44, i64 %48)
  br label %63

50:                                               ; preds = %17
  %51 = load %struct.display*, %struct.display** %5, align 8
  %52 = getelementptr inbounds %struct.display, %struct.display* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.display*, %struct.display** %5, align 8
  %58 = getelementptr inbounds %struct.display, %struct.display* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %56, %50
  br label %63

63:                                               ; preds = %62, %35
  %64 = load %struct.display*, %struct.display** %5, align 8
  %65 = getelementptr inbounds %struct.display, %struct.display* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @gdb_stdout, align 4
  %68 = call i32 @print_expression(i32 %66, i32 %67)
  %69 = load %struct.display*, %struct.display** %5, align 8
  %70 = getelementptr inbounds %struct.display, %struct.display* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %63
  %74 = call i32 @get_selected_block(i32 0)
  %75 = load %struct.display*, %struct.display** %5, align 8
  %76 = getelementptr inbounds %struct.display, %struct.display* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @contained_in(i32 %74, i64 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %73
  %81 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %73, %63
  %83 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %84 = load i32, i32* @gdb_stdout, align 4
  %85 = call i32 @gdb_flush(i32 %84)
  br label %86

86:                                               ; preds = %82
  %87 = load %struct.display*, %struct.display** %5, align 8
  %88 = getelementptr inbounds %struct.display, %struct.display* %87, i32 0, i32 5
  %89 = load %struct.display*, %struct.display** %88, align 8
  store %struct.display* %89, %struct.display** %5, align 8
  br label %14

90:                                               ; preds = %14
  ret void
}

declare dso_local i32 @printf_unfiltered(i8*) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @print_expression(i32, i32) #1

declare dso_local i32 @contained_in(i32, i64) #1

declare dso_local i32 @get_selected_block(i32) #1

declare dso_local i32 @gdb_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

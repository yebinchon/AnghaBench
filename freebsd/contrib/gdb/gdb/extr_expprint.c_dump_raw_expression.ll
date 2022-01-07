; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_expprint.c_dump_raw_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_expprint.c_dump_raw_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expression = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Dump of expression @ \00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"'\0A\09Language %s, %d elements, %ld bytes each.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"\09%5s  %20s  %16s  %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Opcode\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Hex Value\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"String Value\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"\09%5d  \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%20s  \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_raw_expression(%struct.expression* %0, %struct.ui_file* %1, i8* %2) #0 {
  %4 = alloca %struct.expression*, align 8
  %5 = alloca %struct.ui_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.expression* %0, %struct.expression** %4, align 8
  store %struct.ui_file* %1, %struct.ui_file** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %12 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.expression*, %struct.expression** %4, align 8
  %14 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %15 = call i32 @gdb_print_host_address(%struct.expression* %13, %struct.ui_file* %14)
  %16 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %17 = load %struct.expression*, %struct.expression** %4, align 8
  %18 = getelementptr inbounds %struct.expression, %struct.expression* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.expression*, %struct.expression** %4, align 8
  %23 = getelementptr inbounds %struct.expression, %struct.expression* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %24, i64 4)
  %26 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %27 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %95, %3
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.expression*, %struct.expression** %4, align 8
  %31 = getelementptr inbounds %struct.expression, %struct.expression* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %98

34:                                               ; preds = %28
  %35 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %36)
  %38 = load %struct.expression*, %struct.expression** %4, align 8
  %39 = load %struct.expression*, %struct.expression** %4, align 8
  %40 = getelementptr inbounds %struct.expression, %struct.expression* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @op_name(%struct.expression* %38, i32 %46)
  store i8* %47, i8** %8, align 8
  %48 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %49)
  %51 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %52 = load %struct.expression*, %struct.expression** %4, align 8
  %53 = getelementptr inbounds %struct.expression, %struct.expression* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @print_longest(%struct.ui_file* %51, i8 signext 100, i32 0, i32 %59)
  %61 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %62 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %63 = load %struct.expression*, %struct.expression** %4, align 8
  %64 = getelementptr inbounds %struct.expression, %struct.expression* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = bitcast %struct.TYPE_4__* %68 to i8*
  store i8* %69, i8** %9, align 8
  store i32 4, i32* %10, align 4
  br label %70

70:                                               ; preds = %89, %34
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %10, align 4
  %73 = icmp sgt i32 %71, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %70
  %75 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i8, i8* %76, align 1
  %78 = call i64 @isprint(i8 signext %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load i8*, i8** %9, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = and i32 %83, 255
  br label %86

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %85, %80
  %87 = phi i32 [ %84, %80 ], [ 46, %85 ]
  %88 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %86
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %9, align 8
  br label %70

92:                                               ; preds = %70
  %93 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %94 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %28

98:                                               ; preds = %28
  ret void
}

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @gdb_print_host_address(%struct.expression*, %struct.ui_file*) #1

declare dso_local i8* @op_name(%struct.expression*, i32) #1

declare dso_local i32 @print_longest(%struct.ui_file*, i8 signext, i32, i32) #1

declare dso_local i64 @isprint(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

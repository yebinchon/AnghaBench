; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_print_string_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_print_string_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [46 x i8] c"static const char * const ia64_strings[] = {\0A\00", align 1
@strtablen = common dso_local global i32 0, align 4
@string_table = common dso_local global %struct.TYPE_2__** null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c" \22%s\22,\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_string_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_string_table() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [80 x i8], align 16
  %3 = alloca [80 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %7 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  store i8 0, i8* %7, align 16
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %51, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @strtablen, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %54

12:                                               ; preds = %8
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @string_table, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %13, i64 %15
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = icmp sgt i32 %20, 75
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = call i32 (...) @abort() #3
  unreachable

24:                                               ; preds = %12
  %25 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @string_table, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %26, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %35 = call i32 @strlen(i8* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %36, %37
  %39 = icmp sgt i32 %38, 75
  br i1 %39, label %40, label %44

40:                                               ; preds = %24
  %41 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  store i8 0, i8* %43, align 16
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %24
  %45 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %47 = call i32 @strcat(i8* %45, i8* %46)
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %1, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %1, align 4
  br label %8

54:                                               ; preds = %8
  %55 = load i32, i32* %4, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i387-tdep.c_print_i387_status_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i387-tdep.c_print_i387_status_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Status Word:         %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"04\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"IE\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"DE\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ZE\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"OE\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"UE\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"PE\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"ES\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"SF\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"C0\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"C1\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"C2\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"C3\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"                       TOP: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ui_file*)* @print_i387_status_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_i387_status_word(i32 %0, %struct.ui_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ui_file*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ui_file* %1, %struct.ui_file** %4, align 8
  %5 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @local_hex_string_custom(i32 %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %10 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.ui_file* %9)
  %11 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %17 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %16)
  %18 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 2
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %24 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %23)
  %25 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %31 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %30)
  %32 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, 8
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %38 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %37)
  %39 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, 16
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %45 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  %46 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, 32
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %52 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  %53 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %54 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.ui_file* %53)
  %55 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %56 = load i32, i32* %3, align 4
  %57 = and i32 %56, 128
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %61 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  %62 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %63 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.ui_file* %62)
  %64 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %65 = load i32, i32* %3, align 4
  %66 = and i32 %65, 64
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %70 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  %71 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %72 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.ui_file* %71)
  %73 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %74 = load i32, i32* %3, align 4
  %75 = and i32 %74, 256
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %79 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %78)
  %80 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %81 = load i32, i32* %3, align 4
  %82 = and i32 %81, 512
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %86 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %85)
  %87 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %88 = load i32, i32* %3, align 4
  %89 = and i32 %88, 1024
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %93 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %92)
  %94 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %95 = load i32, i32* %3, align 4
  %96 = and i32 %95, 16384
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %100 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %99)
  %101 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %102 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), %struct.ui_file* %101)
  %103 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %104 = load i32, i32* %3, align 4
  %105 = lshr i32 %104, 11
  %106 = and i32 %105, 7
  %107 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %103, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i32 %106)
  ret void
}

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @local_hex_string_custom(i32, i8*) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_add_depends.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_add_depends.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }
%struct.module = type { %struct.symbol*, i32, i32, %struct.module* }
%struct.symbol = type { %struct.TYPE_2__*, %struct.symbol* }
%struct.TYPE_2__ = type { i32, i8* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"static const char __module_depends[]\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"__used\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"__attribute__((section(\22.modinfo\22))) =\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"\22depends=\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"\22;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer*, %struct.module*, %struct.module*)* @add_depends to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_depends(%struct.buffer* %0, %struct.module* %1, %struct.module* %2) #0 {
  %4 = alloca %struct.buffer*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca %struct.module*, align 8
  %7 = alloca %struct.symbol*, align 8
  %8 = alloca %struct.module*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.buffer* %0, %struct.buffer** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  store %struct.module* %2, %struct.module** %6, align 8
  store i32 1, i32* %9, align 4
  %11 = load %struct.module*, %struct.module** %6, align 8
  store %struct.module* %11, %struct.module** %8, align 8
  br label %12

12:                                               ; preds = %22, %3
  %13 = load %struct.module*, %struct.module** %8, align 8
  %14 = icmp ne %struct.module* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load %struct.module*, %struct.module** %8, align 8
  %17 = getelementptr inbounds %struct.module, %struct.module* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @is_vmlinux(i32 %18)
  %20 = load %struct.module*, %struct.module** %8, align 8
  %21 = getelementptr inbounds %struct.module, %struct.module* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %15
  %23 = load %struct.module*, %struct.module** %8, align 8
  %24 = getelementptr inbounds %struct.module, %struct.module* %23, i32 0, i32 3
  %25 = load %struct.module*, %struct.module** %24, align 8
  store %struct.module* %25, %struct.module** %8, align 8
  br label %12

26:                                               ; preds = %12
  %27 = load %struct.buffer*, %struct.buffer** %4, align 8
  %28 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.buffer*, %struct.buffer** %4, align 8
  %30 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.buffer*, %struct.buffer** %4, align 8
  %32 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.buffer*, %struct.buffer** %4, align 8
  %34 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %35 = load %struct.buffer*, %struct.buffer** %4, align 8
  %36 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %37 = load %struct.module*, %struct.module** %5, align 8
  %38 = getelementptr inbounds %struct.module, %struct.module* %37, i32 0, i32 0
  %39 = load %struct.symbol*, %struct.symbol** %38, align 8
  store %struct.symbol* %39, %struct.symbol** %7, align 8
  br label %40

40:                                               ; preds = %87, %26
  %41 = load %struct.symbol*, %struct.symbol** %7, align 8
  %42 = icmp ne %struct.symbol* %41, null
  br i1 %42, label %43, label %91

43:                                               ; preds = %40
  %44 = load %struct.symbol*, %struct.symbol** %7, align 8
  %45 = getelementptr inbounds %struct.symbol, %struct.symbol* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = icmp ne %struct.TYPE_2__* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %87

49:                                               ; preds = %43
  %50 = load %struct.symbol*, %struct.symbol** %7, align 8
  %51 = getelementptr inbounds %struct.symbol, %struct.symbol* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %87

57:                                               ; preds = %49
  %58 = load %struct.symbol*, %struct.symbol** %7, align 8
  %59 = getelementptr inbounds %struct.symbol, %struct.symbol* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.symbol*, %struct.symbol** %7, align 8
  %63 = getelementptr inbounds %struct.symbol, %struct.symbol* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @strrchr(i8* %66, i8 signext 47)
  store i8* %67, i8** %10, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %57
  %71 = load i8*, i8** %10, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %10, align 8
  br label %79

73:                                               ; preds = %57
  %74 = load %struct.symbol*, %struct.symbol** %7, align 8
  %75 = getelementptr inbounds %struct.symbol, %struct.symbol* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %10, align 8
  br label %79

79:                                               ; preds = %73, %70
  %80 = load %struct.buffer*, %struct.buffer** %4, align 8
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %84, i8* %85)
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %79, %56, %48
  %88 = load %struct.symbol*, %struct.symbol** %7, align 8
  %89 = getelementptr inbounds %struct.symbol, %struct.symbol* %88, i32 0, i32 1
  %90 = load %struct.symbol*, %struct.symbol** %89, align 8
  store %struct.symbol* %90, %struct.symbol** %7, align 8
  br label %40

91:                                               ; preds = %40
  %92 = load %struct.buffer*, %struct.buffer** %4, align 8
  %93 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @is_vmlinux(i32) #1

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, ...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

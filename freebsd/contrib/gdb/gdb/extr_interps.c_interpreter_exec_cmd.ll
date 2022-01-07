; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_interps.c_interpreter_exec_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_interps.c_interpreter_exec_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interp = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"unable to parse arguments\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"usage: interpreter-exec <interpreter> [ <command> ... ]\00", align 1
@current_interpreter = common dso_local global %struct.interp* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Could not find interpreter \22%s\22.\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Could not switch to interpreter \22%s\22.\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"error in command: \22%s\22.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @interpreter_exec_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interpreter_exec_cmd(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.interp*, align 8
  %6 = alloca %struct.interp*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8** null, i8*** %7, align 8
  store i8** null, i8*** %8, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i8** @buildargv(i8* %13)
  store i8** %14, i8*** %7, align 8
  %15 = load i8**, i8*** %7, align 8
  %16 = icmp eq i8** %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %2
  store i32 0, i32* %9, align 4
  %20 = load i8**, i8*** %7, align 8
  %21 = icmp ne i8** %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load i8**, i8*** %7, align 8
  store i8** %23, i8*** %8, align 8
  br label %24

24:                                               ; preds = %31, %22
  %25 = load i8**, i8*** %8, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %28
  %32 = load i8**, i8*** %8, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i32 1
  store i8** %33, i8*** %8, align 8
  br label %24

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %19
  %36 = load i32, i32* %9, align 4
  %37 = icmp ult i32 %36, 2
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %35
  %41 = load %struct.interp*, %struct.interp** @current_interpreter, align 8
  store %struct.interp* %41, %struct.interp** %5, align 8
  %42 = load i8**, i8*** %7, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = call %struct.interp* @interp_lookup(i8* %44)
  store %struct.interp* %45, %struct.interp** %6, align 8
  %46 = load %struct.interp*, %struct.interp** %6, align 8
  %47 = icmp eq %struct.interp* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load i8**, i8*** %7, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %48, %40
  %54 = load %struct.interp*, %struct.interp** %5, align 8
  %55 = call i32 @interp_set_quiet(%struct.interp* %54, i32 1)
  store i32 %55, i32* %11, align 4
  %56 = load %struct.interp*, %struct.interp** %6, align 8
  %57 = call i32 @interp_set_quiet(%struct.interp* %56, i32 1)
  store i32 %57, i32* %12, align 4
  %58 = load %struct.interp*, %struct.interp** %6, align 8
  %59 = call i32 @interp_set(%struct.interp* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %53
  %62 = load i8**, i8*** %7, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %61, %53
  store i32 1, i32* %10, align 4
  br label %67

67:                                               ; preds = %93, %66
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %96

71:                                               ; preds = %67
  %72 = load %struct.interp*, %struct.interp** %6, align 8
  %73 = load i8**, i8*** %7, align 8
  %74 = load i32, i32* %10, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @interp_exec(%struct.interp* %72, i8* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %71
  %81 = load %struct.interp*, %struct.interp** %5, align 8
  %82 = call i32 @interp_set(%struct.interp* %81)
  %83 = load %struct.interp*, %struct.interp** %6, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @interp_set_quiet(%struct.interp* %83, i32 %84)
  %86 = load i8**, i8*** %7, align 8
  %87 = load i32, i32* %10, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %90)
  br label %96

92:                                               ; preds = %71
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %10, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %67

96:                                               ; preds = %80, %67
  %97 = load %struct.interp*, %struct.interp** %5, align 8
  %98 = call i32 @interp_set(%struct.interp* %97)
  %99 = load %struct.interp*, %struct.interp** %6, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @interp_set_quiet(%struct.interp* %99, i32 %100)
  %102 = load %struct.interp*, %struct.interp** %5, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @interp_set_quiet(%struct.interp* %102, i32 %103)
  ret void
}

declare dso_local i8** @buildargv(i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local %struct.interp* @interp_lookup(i8*) #1

declare dso_local i32 @interp_set_quiet(%struct.interp*, i32) #1

declare dso_local i32 @interp_set(%struct.interp*) #1

declare dso_local i32 @interp_exec(%struct.interp*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

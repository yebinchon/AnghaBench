; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-dump.c_restore_binary_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-dump.c_restore_binary_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callback_data = type { i64, i64, i64 }

@FOPEN_RB = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Start address is greater than length of binary file %s.\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Restoring binary file %s into memory (0x%lx to 0x%lx)\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@xfree = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"restore: memory write failed (%s).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.callback_data*)* @restore_binary_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_binary_file(i8* %0, %struct.callback_data* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.callback_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.callback_data* %1, %struct.callback_data** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @FOPEN_RB, align 4
  %11 = call i32* @fopen_with_cleanup(i8* %9, i32 %10)
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @SEEK_END, align 4
  %14 = call i64 @fseek(i32* %12, i64 0, i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @ftell(i32* %17)
  store i64 %18, i64* %8, align 8
  br label %22

19:                                               ; preds = %2
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @perror_with_name(i8* %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.callback_data*, %struct.callback_data** %4, align 8
  %25 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %28, %22
  %32 = load %struct.callback_data*, %struct.callback_data** %4, align 8
  %33 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.callback_data*, %struct.callback_data** %4, align 8
  %38 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.callback_data*, %struct.callback_data** %4, align 8
  %44 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %42, %36, %31
  %47 = load %struct.callback_data*, %struct.callback_data** %4, align 8
  %48 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.callback_data*, %struct.callback_data** %4, align 8
  %53 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = sub nsw i64 %55, %54
  store i64 %56, i64* %8, align 8
  br label %57

57:                                               ; preds = %51, %46
  %58 = load i8*, i8** %3, align 8
  %59 = load %struct.callback_data*, %struct.callback_data** %4, align 8
  %60 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.callback_data*, %struct.callback_data** %4, align 8
  %63 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %61, %64
  %66 = load %struct.callback_data*, %struct.callback_data** %4, align 8
  %67 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.callback_data*, %struct.callback_data** %4, align 8
  %70 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %68, %71
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %72, %73
  %75 = call i32 @printf_filtered(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* %58, i64 %65, i64 %74)
  %76 = load i32*, i32** %5, align 8
  %77 = load %struct.callback_data*, %struct.callback_data** %4, align 8
  %78 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @SEEK_SET, align 4
  %81 = call i64 @fseek(i32* %76, i64 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %57
  %84 = load i8*, i8** %3, align 8
  %85 = call i32 @perror_with_name(i8* %84)
  br label %86

86:                                               ; preds = %83, %57
  %87 = load i64, i64* %8, align 8
  %88 = call i8* @xmalloc(i64 %87)
  store i8* %88, i8** %7, align 8
  %89 = load i32, i32* @xfree, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @make_cleanup(i32 %89, i8* %90)
  %92 = load i8*, i8** %7, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = call i64 @fread(i8* %92, i32 1, i64 %93, i32* %94)
  %96 = load i64, i64* %8, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %86
  %99 = load i8*, i8** %3, align 8
  %100 = call i32 @perror_with_name(i8* %99)
  br label %101

101:                                              ; preds = %98, %86
  %102 = load %struct.callback_data*, %struct.callback_data** %4, align 8
  %103 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.callback_data*, %struct.callback_data** %4, align 8
  %106 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %104, %107
  %109 = load i8*, i8** %7, align 8
  %110 = load i64, i64* %8, align 8
  %111 = call i64 @target_write_memory(i64 %108, i8* %109, i64 %110)
  store i64 %111, i64* %8, align 8
  %112 = load i64, i64* %8, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %101
  %115 = load i64, i64* %8, align 8
  %116 = call i32 @safe_strerror(i64 %115)
  %117 = call i32 @warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %114, %101
  ret void
}

declare dso_local i32* @fopen_with_cleanup(i8*, i32) #1

declare dso_local i64 @fseek(i32*, i64, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @printf_filtered(i8*, i8*, i64, i64) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @make_cleanup(i32, i8*) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i64 @target_write_memory(i64, i8*, i64) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @safe_strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_update_source_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_update_source_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.print_file_list = type { i32 }

@include_path_count = common dso_local global i32 0, align 4
@include_paths = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.print_file_list* (i8*)* @update_source_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.print_file_list* @update_source_path(i8* %0) #0 {
  %2 = alloca %struct.print_file_list*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.print_file_list*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.print_file_list* null, %struct.print_file_list** %2, align 8
  br label %60

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call %struct.print_file_list* @try_print_file_open(i8* %12, i8* %13)
  store %struct.print_file_list* %14, %struct.print_file_list** %4, align 8
  %15 = load %struct.print_file_list*, %struct.print_file_list** %4, align 8
  %16 = icmp ne %struct.print_file_list* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load %struct.print_file_list*, %struct.print_file_list** %4, align 8
  store %struct.print_file_list* %18, %struct.print_file_list** %2, align 8
  br label %60

19:                                               ; preds = %11
  %20 = load i32, i32* @include_path_count, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store %struct.print_file_list* null, %struct.print_file_list** %2, align 8
  br label %60

23:                                               ; preds = %19
  %24 = load i8*, i8** %3, align 8
  %25 = call i8* @strrchr(i8* %24, i8 signext 47)
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i8*, i8** %3, align 8
  store i8* %29, i8** %5, align 8
  br label %33

30:                                               ; preds = %23
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %5, align 8
  br label %33

33:                                               ; preds = %30, %28
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %56, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @include_path_count, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = load i32*, i32** @include_paths, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = call i8* @concat(i32 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %44, i8* null)
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %3, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call %struct.print_file_list* @try_print_file_open(i8* %46, i8* %47)
  store %struct.print_file_list* %48, %struct.print_file_list** %4, align 8
  %49 = load %struct.print_file_list*, %struct.print_file_list** %4, align 8
  %50 = icmp ne %struct.print_file_list* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = load %struct.print_file_list*, %struct.print_file_list** %4, align 8
  store %struct.print_file_list* %52, %struct.print_file_list** %2, align 8
  br label %60

53:                                               ; preds = %38
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @free(i8* %54)
  br label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %34

59:                                               ; preds = %34
  store %struct.print_file_list* null, %struct.print_file_list** %2, align 8
  br label %60

60:                                               ; preds = %59, %51, %22, %17, %10
  %61 = load %struct.print_file_list*, %struct.print_file_list** %2, align 8
  ret %struct.print_file_list* %61
}

declare dso_local %struct.print_file_list* @try_print_file_open(i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @concat(i32, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

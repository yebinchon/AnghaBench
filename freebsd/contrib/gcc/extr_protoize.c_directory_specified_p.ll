; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_directory_specified_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_directory_specified_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.string_list* }

@directory_list = common dso_local global %struct.string_list* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @directory_specified_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @directory_specified_p(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load %struct.string_list*, %struct.string_list** @directory_list, align 8
  store %struct.string_list* %6, %struct.string_list** %4, align 8
  br label %7

7:                                                ; preds = %57, %1
  %8 = load %struct.string_list*, %struct.string_list** %4, align 8
  %9 = icmp ne %struct.string_list* %8, null
  br i1 %9, label %10, label %61

10:                                               ; preds = %7
  %11 = load i8*, i8** %3, align 8
  %12 = load %struct.string_list*, %struct.string_list** %4, align 8
  %13 = getelementptr inbounds %struct.string_list, %struct.string_list* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.string_list*, %struct.string_list** %4, align 8
  %16 = getelementptr inbounds %struct.string_list, %struct.string_list* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @strlen(i32 %17)
  %19 = call i32 @strncmp(i8* %11, i32 %14, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %56, label %21

21:                                               ; preds = %10
  %22 = load i8*, i8** %3, align 8
  %23 = load %struct.string_list*, %struct.string_list** %4, align 8
  %24 = getelementptr inbounds %struct.string_list, %struct.string_list* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @strlen(i32 %25)
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %22, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = call i64 @IS_DIR_SEPARATOR(i8 signext %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %21
  %33 = load i8*, i8** %3, align 8
  %34 = load %struct.string_list*, %struct.string_list** %4, align 8
  %35 = getelementptr inbounds %struct.string_list, %struct.string_list* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @strlen(i32 %36)
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %33, i64 %38
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  store i8* %40, i8** %5, align 8
  br label %41

41:                                               ; preds = %53, %32
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %5, align 8
  %44 = load i8, i8* %42, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 -1
  %49 = load i8, i8* %48, align 1
  %50 = call i64 @IS_DIR_SEPARATOR(i8 signext %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %55

53:                                               ; preds = %46
  br label %41

54:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %62

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %55, %21, %10
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.string_list*, %struct.string_list** %4, align 8
  %59 = getelementptr inbounds %struct.string_list, %struct.string_list* %58, i32 0, i32 1
  %60 = load %struct.string_list*, %struct.string_list** %59, align 8
  store %struct.string_list* %60, %struct.string_list** %4, align 8
  br label %7

61:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %54
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @IS_DIR_SEPARATOR(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
